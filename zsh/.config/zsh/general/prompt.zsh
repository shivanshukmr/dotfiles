# Pure
# by Sindre Sorhus
# https://github.com/sindresorhus/pure
# MIT License

# For my own and others sanity
# git:
# %b => current branch
# %a => current action (rebase/merge)
# prompt:
# %F => color dict
# %f => reset color
# %~ => current path
# %* => time
# %n => username
# %m => shortname host
# %(?..) => prompt conditional - %(condition.true.false)
# terminal codes:
# \e7   => save cursor position
# \e[2A => move cursor 2 lines up
# \e[1G => go to position 1 in terminal
# \e8   => restore cursor position
# \e[K  => clears everything after the cursor on the current line
# \e[2K => clear everything on the current line

source $XDG_CONFIG_HOME/zsh/plugin/async.zsh

PURER_PROMPT_COMMAND_COUNT=0
STATUS_COLOR='4'

prompt_pure_clear_screen() {
	# enable output to terminal
	zle -I
	# clear screen and move cursor to (0, 0)
	print -n '\e[2J\e[0;0H'
	# reset command count to zero so we don't start with a blank line
	PURER_PROMPT_COMMAND_COUNT=0
	# print preprompt
	prompt_pure_preprompt_render precmd
}

prompt_pure_preexec() {
	# attempt to detect and prevent prompt_pure_async_git_fetch from interfering with user initiated git or hub fetch
	[[ $2 =~ (git|hub)\ .*(pull|fetch) ]] && async_flush_jobs 'prompt_pure'

	prompt_pure_cmd_timestamp=$EPOCHSECONDS

	# Disallow python virtualenv from updating the prompt, set it to 12 if
	# untouched by the user to indicate that Pure modified it. Here we use
	# magic number 12, same as in psvar.
	export VIRTUAL_ENV_DISABLE_PROMPT=${VIRTUAL_ENV_DISABLE_PROMPT:-12}
}

# string length ignoring ansi escapes
prompt_pure_string_length_to_var() {
	local str=$1 var=$2 length
	# perform expansion on str and check length
	length=$(( ${#${(S%%)str//(\%([KF1]|)\{*\}|\%[Bbkf])}} ))

	# store string length in variable as specified by caller
	typeset -g "${var}"="${length}"
}

prompt_pure_pwd() {
	echo "${PWD/#$HOME/~}" | sed -e 's-\(\.*[^/]\)[^/]*/-\1/-g'
}

prompt_pure_preprompt_render() {
	# store the current prompt_subst setting so that it can be restored later
	local prompt_subst_status=$options[prompt_subst]

	# make sure prompt_subst is unset to prevent parameter expansion in preprompt
	setopt local_options no_prompt_subst

	# check that no command is currently running, the preprompt will otherwise be rendered in the wrong place
	[[ -n ${prompt_pure_cmd_timestamp+x} && "$1" != "precmd" ]] && return

	# set color for git branch/dirty status, change color if dirty checking has been delayed
	local git_color="#878e9f"
	[[ -n ${prompt_pure_git_last_dirty_check_timestamp+x} ]] && git_color="#878e9f"

	# construct preprompt,rprompt
	local preprompt=""
	local rprompt=""

	# directory
	preprompt+="%B%F{$STATUS_COLOR}$(prompt_pure_pwd)%f%b"
	rprompt+="%F{$git_color}"
	# show virtual env
	rprompt+="%(12V. %12v.)"
	# git info
	rprompt+="${vcs_info_msg_0_}${prompt_pure_git_dirty}"
	rprompt+="%f"

	preprompt+=" "

	# make sure prompt_pure_last_preprompt is a global array
	typeset -g -a prompt_pure_last_preprompt

	PROMPT="$preprompt"
	RPROMPT="$rprompt"

	# if executing through precmd, do not perform fancy terminal editing
	if [[ "$1" != "precmd" ]]; then
		# only redraw if the expanded preprompt has changed
		# [[ "${prompt_pure_last_preprompt[2]}" != "${(S%%)preprompt}" ]] || return

		# redraw prompt (also resets cursor position)
		zle && zle .reset-prompt

		setopt no_prompt_subst
	fi

	# store both unexpanded and expanded preprompt for comparison
	prompt_pure_last_preprompt=("$preprompt" "${(S%%)preprompt}")
}

prompt_pure_precmd() {
	# by making sure that prompt_pure_cmd_timestamp is defined here the async functions are prevented from interfering
	# with the initial preprompt rendering
	prompt_pure_cmd_timestamp=

	# get vcs info
	vcs_info

	# preform async git dirty check
	prompt_pure_async_tasks

	# Check if we should display the virtual env, we use a sufficiently high
	# index of psvar (12) here to avoid collisions with user defined entries.
	psvar[12]=
	# When VIRTUAL_ENV_DISABLE_PROMPT is empty, it was unset by the user and
	# Pure should take back control.
	if [[ -n $VIRTUAL_ENV ]] && [[ -z $VIRTUAL_ENV_DISABLE_PROMPT || $VIRTUAL_ENV_DISABLE_PROMPT = 12 ]]; then
		psvar[12]="${VIRTUAL_ENV:t}"
		export VIRTUAL_ENV_DISABLE_PROMPT=12
	fi

	# print the preprompt
	prompt_pure_preprompt_render "precmd"

	# Increment command counter
	PURER_PROMPT_COMMAND_COUNT=$((PURER_PROMPT_COMMAND_COUNT+1))

	# print the preprompt
	prompt_pure_preprompt_render "precmd"

	# remove the prompt_pure_cmd_timestamp, indicating that precmd has completed
	unset prompt_pure_cmd_timestamp
}

# fastest possible way to check if repo is dirty
prompt_pure_async_git_dirty() {
	setopt localoptions noshwordsplit
	local untracked_dirty=$1 dir=$2

	# use cd -q to avoid side effects of changing directory, e.g. chpwd hooks
	builtin cd -q $dir

	if [[ $untracked_dirty = 0 ]]; then
		command git diff --no-ext-diff --quiet --exit-code
	else
		test -z "$(command git status --porcelain --ignore-submodules -unormal)"
	fi

	return $?
}

prompt_pure_async_tasks() {
	setopt localoptions noshwordsplit

	# initialize async worker
	((!${prompt_pure_async_init:-0})) && {
		async_start_worker "prompt_pure" -u -n
		async_register_callback "prompt_pure" prompt_pure_async_callback
		prompt_pure_async_init=1
		}

	# store working_tree without the "x" prefix
	local working_tree="${vcs_info_msg_1_#x}"

	# check if the working tree changed (prompt_pure_current_working_tree is prefixed by "x")
	if [[ ${prompt_pure_current_working_tree#x} != $working_tree ]]; then
		# stop any running async jobs
		async_flush_jobs "prompt_pure"

		# reset git preprompt variables, switching working tree
		unset prompt_pure_git_dirty
		unset prompt_pure_git_last_dirty_check_timestamp

		# set the new working tree and prefix with "x" to prevent the creation of a named path by AUTO_NAME_DIRS
		prompt_pure_current_working_tree="x${working_tree}"
	fi

	# only perform tasks inside git working tree
	[[ -n $working_tree ]] || return

	# if dirty checking is sufficiently fast, tell worker to check it again, or wait for timeout
	integer time_since_last_dirty_check=$(( EPOCHSECONDS - ${prompt_pure_git_last_dirty_check_timestamp:-0} ))
	if (( time_since_last_dirty_check > ${PURE_GIT_DELAY_DIRTY_CHECK:-1800} )); then
		unset prompt_pure_git_last_dirty_check_timestamp
		# check check if there is anything to pull
		async_job "prompt_pure" prompt_pure_async_git_dirty ${PURE_GIT_UNTRACKED_DIRTY:-1} $working_tree
	fi
}

prompt_pure_async_callback() {
	setopt localoptions noshwordsplit
	local job=$1 code=$2 output=$3 exec_time=$4

	case $job in
		prompt_pure_async_git_dirty)
			local prev_dirty=$prompt_pure_git_dirty
			if (( code == 0 )); then
				prompt_pure_git_dirty=
			else
				prompt_pure_git_dirty="*"
			fi

			[[ $prev_dirty != $prompt_pure_git_dirty ]] && prompt_pure_preprompt_render

			# When prompt_pure_git_last_dirty_check_timestamp is set, the git info is displayed in a different color.
			# To distinguish between a "fresh" and a "cached" result, the preprompt is rendered before setting this
			# variable. Thus, only upon next rendering of the preprompt will the result appear in a different color.
			(( $exec_time > 2 )) && prompt_pure_git_last_dirty_check_timestamp=$EPOCHSECONDS
			;;
	esac
}

prompt_pure_setup() {
	# prevent percentage showing up
	# if output doesn't end with a newline
	export PROMPT_EOL_MARK=''
	export SPROMPT=

	# prompt_opts=(subst percent)

	# borrowed from promptinit, sets the prompt options in case pure was not
	# initialized via promptinit.
	# setopt noprompt{bang,cr,percent,subst} "prompt${^prompt_opts[@]}"

	zmodload zsh/datetime
	zmodload zsh/zle
	zmodload zsh/parameter

	autoload -Uz add-zsh-hook
	autoload -Uz vcs_info
	autoload -Uz async && async

	add-zsh-hook precmd prompt_pure_precmd
	add-zsh-hook preexec prompt_pure_preexec

	function auto-ls-after-cd() {
		emulate -L zsh
		# Only in response to a user-initiated `cd`, not indirectly (eg. via another
		# function).
		if [ "$ZSH_EVAL_CONTEXT" = "toplevel:shfunc" ]; then
			ls -a
		fi
	}
add-zsh-hook chpwd auto-ls-after-cd

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' use-simple true
# only export two msg variables from vcs_info
zstyle ':vcs_info:*' max-exports 2
# vcs_info_msg_0_ = ' %b' (for branch)
# vcs_info_msg_1_ = 'x%R' git top level (%R), x-prefix prevents creation of a named path (AUTO_NAME_DIRS)
zstyle ':vcs_info:git*' formats ' %b' 'x%R'
zstyle ':vcs_info:git*' actionformats ' %b|%a' 'x%R'

	# if the user has not registered a custom zle widget for clear-screen,
	# override the builtin one so that the preprompt is displayed correctly when
	# ^L is issued.
	if [[ $widgets[clear-screen] == 'builtin' ]]; then
		zle -N clear-screen prompt_pure_clear_screen
	fi

	# create prompt
	prompt_pure_preprompt_render 'precmd'
}

prompt_pure_setup "$@"
