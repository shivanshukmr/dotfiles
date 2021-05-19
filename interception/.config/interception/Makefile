BINPREFIX = /usr/local
CONFIGPREFIX = /etc/interception
DFKPREFIX = ${CONFIGPREFIX}/dual-function-keys
UDEVMONPREFIX = ${CONFIGPREFIX}/udevmon.d

all: chordedintercept

chordedintercept: chordedintercept.c
	cc chordedintercept.c -o chordedintercept

install: chordedintercept
	# mkdir -p ${BINPREFIX}/bin
	# cp -f chordedintercept ${BINPREFIX}/bin
	mkdir -p ${DFKPREFIX}
	cp -f dual-function-keys.yaml ${DFKPREFIX}
	mkdir -p ${UDEVMONPREFIX}
	cp -f udevmon.yaml ${UDEVMONPREFIX}

clean:
	rm -rf chordedintercept

uninstall:
	rm -f ${BINPREFIX}/bin/chordedintercept
	rm -f ${DFKPREFIX}/dual-function-keys.yaml
	rm -f ${UDEVMONPREFIX}/udevmon.yaml
