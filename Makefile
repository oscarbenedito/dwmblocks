PREFIX ?= /usr/local
CC ?= cc
LDFLAGS = -lX11

binsrc = $(wildcard bin/*)
binobj = $(patsubst %,$(DESTDIR)$(PREFIX)/%,$(binsrc))

dwmblocks: dwmblocks.c config.h
	${CC} dwmblocks.c $(LDFLAGS) -o dwmblocks

config.h:
	cp config.def.h $@

install: dwmblocks $(binobj)
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m 0755 dwmblocks $(DESTDIR)$(PREFIX)/bin/dwmblocks

$(DESTDIR)$(PREFIX)/%: %
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m 0755 $< $@

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/dwmblocks

clean:
	rm -f *.o *.gch dwmblocks
