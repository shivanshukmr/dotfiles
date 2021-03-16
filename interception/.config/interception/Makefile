all: chordedintercept

chordedintercept: chordedintercept.c
	cc chordedintercept.c -o chordedintercept

install: chordedintercept
	mkdir -p /usr/local/bin
	cp -f chordedintercept /usr/local/bin
	mkdir -p /etc/interception/dual-function-keys
	cp -f dual-function-keys.yaml /etc/interception/dual-function-keys/
	mkdir -p /etc/interception/udevmon.d
	cp -f udevmon.yaml /etc/interception/udevmon.d/

clean:
	rm -rf chordedintercept

uninstall:
	rm -f /usr/local/bin/chordedintercept
	rm -f /etc/interception/dual-function-keys/dual-function-keys.yaml
	rm -f /etc/interception/udevmon.d/udevmon.yaml
