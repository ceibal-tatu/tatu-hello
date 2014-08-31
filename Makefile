all: tatu

tatu: tatu.c

clean:
	rm -f tatu

install: all
	mkdir -p $(DESTDIR)/usr/bin
	install tatu $(DESTDIR)/usr/bin
