#!/bin/bash
pdflatex -synctex=1 -interaction=nonstopmode  sectio1.tex
pdflatex -synctex=1 -interaction=nonstopmode  sectio1.tex

pdflatex -synctex=1 -interaction=nonstopmode  sectio2.tex
pdflatex -synctex=1 -interaction=nonstopmode  sectio2.tex

pdflatex -synctex=1 -interaction=nonstopmode  sectio3.tex
pdflatex -synctex=1 -interaction=nonstopmode  sectio3.tex
bibtex sectio3
pdflatex -synctex=1 -interaction=nonstopmode  sectio3.tex
pdflatex -synctex=1 -interaction=nonstopmode  sectio3.tex


pdflatex -synctex=1 -interaction=nonstopmode  sectio4.tex
pdflatex -synctex=1 -interaction=nonstopmode  sectio4.tex
bibtex sectio4
pdflatex -synctex=1 -interaction=nonstopmode  sectio4.tex
pdflatex -synctex=1 -interaction=nonstopmode  sectio4.tex

rm -f sectio*.aux  
rm -f sectio*.log  
rm -f sectio*.synctex.gz 
rm -f *-converted-to.pdf
rm -f sectio*.run.xml
rm -f sectio*.blg
rm -f sectio*.bbl
rm -f sectio*-blx.bib
rm -f mpxerr.tex

