VERSION=`dpkg-parsechangelog --show-field Version`

all: tatu-hello

tatu-hello.c: tatu-hello.c.in
	sed -e 's/{VERSION}/$(VERSION)/' tatu-hello.c.in > tatu-hello.c

clean:
	rm -f tatu-hello tatu-hello.c

install: all
	mkdir -p $(DESTDIR)/usr/bin
	install tatu-hello $(DESTDIR)/usr/bin
