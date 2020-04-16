PDFLATEX=pdflatex -shell-escape -interaction=nonstopmode -halt-on-error

.ONESHELL:

all: *.pdf

%.pdf: %.tex
	mkdir -p build
	cd build
	$(PDFLATEX) ../$<
	mv $@ ..

.PHONY: clean
clean:
	rm -f *.pdf build/*
