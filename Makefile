
.PHONY = all

all:  deb

deb:
	@tools/gendeb.sh

clean:
	@rm -rf auxiliar
	@rm -rf output
