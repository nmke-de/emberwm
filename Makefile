LIBS = -lX11
CFLAGS += -std=c99 -Wall -Wextra -pedantic -Os
PREFIX ?= /usr
BINDIR ?= $(PREFIX)/bin
CC ?= gcc

all: emberwm

emberwm: emberwm.o
	$(CC) -o $@ $^ $(LIBS) $(LDFLAGS)

install: all
	install -d $(DESTDIR)$(BINDIR)
	install -m 755 emberwm $(DESTDIR)$(BINDIR)

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/emberwm

clean:
	rm -f emberwm *.o

.PHONY: all install uninstall clean
