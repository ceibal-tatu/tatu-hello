VERSION=0.2

all: tatu

tatu.c: tatu.c.in
	sed -e 's/{VERSION}/$(VERSION)/' tatu.c.in > tatu.c

clean:
	rm -f tatu tatu.c

install: all
	mkdir -p $(DESTDIR)/usr/bin
	install tatu $(DESTDIR)/usr/bin
