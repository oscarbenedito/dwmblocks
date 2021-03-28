PREFIX ?= /usr/local
CC ?= cc
LDFLAGS = -lX11

dwmblocks: dwmblocks.c config.h
	${CC} dwmblocks.c $(LDFLAGS) -o dwmblocks

config.h:
	cp config.def.h $@

install: dwmblocks
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m 0755 dwmblocks $(DESTDIR)$(PREFIX)/bin/dwmblocks

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/dwmblocks

clean:
	rm -f *.o *.gch dwmblocks
