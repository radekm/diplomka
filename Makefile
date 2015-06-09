
.PHONY: all clean

FILE=dipl

all:
	pdflatex $(FILE)
	biber $(FILE)
	makeglossaries $(FILE)
	pdflatex $(FILE)
	pdflatex $(FILE)

clean:
	rm -f *.pdf *.log *.aux *.xml *.bbl *.bcf *.blg \
	    *.glg *.glo *.gls *.ist *.toc
