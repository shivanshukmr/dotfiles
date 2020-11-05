(setq user-emacs-directory "~/.local/share/emacs")
(setq config-dir "~/.config/emacs")
(setq els-dir (concat config-dir "/els"))
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

(set-face-attribute 'default nil :font "Hack" :height 108)

(defun load-subconfig (name) 
  (load-file (concat els-dir "/" name)))
(load-subconfig "smooth-scroll.el")

(setq inhibit-startup-message t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode -1)

(global-hl-line-mode 1)
;(set-face-background 'hl-line "#21242b")

; Esc like C-g
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

; Display column no.
(column-number-mode)

; Display line numbers
(global-display-line-numbers-mode t)
(setq display-line-numbers 'relative)
    
; No blinking cursor
(blink-cursor-mode 0)

;; Initialize package sources
(require 'package)

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'usepackage)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;; PACKAGES
;; All the icons
(use-package all-the-icons)

(use-package general)
(general-create-definer leader-def
  :prefix "SPC")

;; Evil mode
(use-package evil
  :init
  (setq evil-want-C-u-scroll t)
  (setq evil-want-Y-yank-to-eol t)
  (setq evil-insert-state-cursor 'box)
  (setq evil-undo-system 'undo-fu)
  (setq evil-esc-delay '0)
  (setq evil-want-keybinding nil)
  (evil-mode 1))

(use-package evil-escape
  :init (evil-escape-mode 1)
  :config
  (setq-default evil-escape-key-sequence "jk")
  (setq-default evil-escape-delay 0.2)
  (setq evil-escape-unordered-key-sequence t))

;(use-package evil-collection
;  :after (evil)
;  :config
;  (evil-collection-init))

(use-package undo-fu
  :after (evil)
  :config
  (define-key evil-normal-state-map "\C-r" 'undo-fu-only-redo))

(use-package one-themes
  :init
  (load-theme 'one-light t))

;; Doom modeline
(use-package doom-modeline
  :init (doom-modeline-mode 1))
  :config
  (setq doom-modeline-modal-icon nil)
  (setq doom-modeline-height 17)
  (setq doom-modeline-icon nil)
  (setq doom-modeline-major-mode-color-icon t)
  (setq doom-modeline-env-enable-python t)
  (setq doom-modeline-env-load-string "...")

(use-package magit
  :commands (magit-status))

(use-package evil-magit
  :after magit)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(evil-magit magit with-editor use-package undo-fu projectile one-themes general evil-escape evil doom-modeline annalist)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
