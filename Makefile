# LaTeX Makefile
LATEXFILES = 	*.acn\
	*.alg\
	*.aux\
	*.bbl\
	*.bcf\
	*.blg\
	*.dvi\
	*.fdb_latexmk\
	*.glg\
	*.glo\
	*.gls\
	*.idx\
	*.ilg\
	*.ind\
	*.ist\
	*.loa\
	*.lof\
	.log\
	*.log\
	*.lot\
	*.maf\
	*.mtc\
	*.mtc*\
	*.nav\
	*.nlo\
	*.out\
	*.pdfsync\
	*.ps\
	*.run.xml\
	*.snm\
	*.synctex.gz\
	*.toc\
	*.vrb\
	*.xdy\
	*.tdo\

filename  := "rapport"

all:
	make clean
	make pdf

pdf:
	pdflatex  --output-dir=tmp ${filename}.tex
	rm -f $(LATEXFILES)
	mv tmp/${filename}.pdf  ${filename}.pdf
show:
	okular  ${filename}.pdf
clean:
	rm -f tmp/$(LATEXFILES)
	rm -f ${filename}.pdf
docx:
	pandoc ${filename}.tex   -o ${filename}.docx

.PHONY: all pdf show clean
