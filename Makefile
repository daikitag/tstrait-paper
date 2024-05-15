all: paper.pdf

paper.pdf: paper.tex paper.bib supplementary-material.aux
	pdflatex -shell-escape paper.tex
	bibtex paper
	pdflatex -shell-escape paper.tex
	pdflatex -shell-escape paper.tex
	
supplementary-material.aux: supplementary-material/supplementary-material.tex paper.bib
	pdflatex -shell-escape supplementary-material/supplementary-material.tex
	bibtex supplementary-material
	pdflatex -shell-escape supplementary-material/supplementary-material.tex
	pdflatex -shell-escape supplementary-material/supplementary-material.tex

.PHONY: spellcheck
spellcheck: aspell.conf
	aspell --conf ./aspell.conf --check paper.tex

clean:
	rm -f *.pdf
	rm -f *.log *.aux *.out
	rm -f *.blg *.bbl
