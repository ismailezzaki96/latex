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

filename  := "presentation"

all:
	make clean
	make pdf
	make show

pdf:
	pdflatex -synctex=1 -interaction=nonstopmode presentation.tex
show:
	okular  presentation.pdf
clean:
	rm -f $(LATEXFILES)
	rm -f ${filename}.pdf

.PHONY: all pdf show clean
