prefix = /usr/local
bindir = $(prefix)/bin

NUM := 1
CPPFLAGS += -DNUM=$(NUM)

all: simple

install:
	install -D -m755 simple $(DESTDIR)$(bindir)/simple

clean:
	rm -f simple

.PHONY: all, install, clean
