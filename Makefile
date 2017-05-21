LATEX=pdflatex

TEXFILE=$(wildcard *.tex)
PDFOUTPUT=$(TEXFILE:.tex=.pdf)
OPTION=-interaction=nonstopmode

.PHONY:
all: $(PDFOUTPUT)

$(PDFOUTPUT): %.pdf:%.tex
	$(LATEX) $(OPTION) $< $@

clean:
	rm *.pdf *.log *.aux
