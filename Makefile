PREFIX ?= /usr/local
CC ?= cc
LDFLAGS = -lX11

dwmblocks: dwmblocks.c blocks.h
	${CC} dwmblocks.c $(LDFLAGS) -o dwmblocks

blocks.h:
	cp blocks.def.h $@

install: dwmblocks
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m 0755 dwmblocks $(DESTDIR)$(PREFIX)/bin/dwmblocks

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/dwmblocks

clean:
	rm -f *.o *.gch dwmblocks
