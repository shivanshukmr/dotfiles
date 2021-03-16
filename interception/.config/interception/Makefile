all: chordedintercept

chordedintercept: chordedintercept.c
	cc chordedintercept.c -o chordedintercept

install: chordedintercept
	mkdir -p /usr/local/bin
	cp -f chordedintercept /usr/local/bin

clean:
	rm -rf chordedintercept
