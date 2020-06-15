LATEXMK=latexmk -f -synctex=1 --shell-escape -pdf
LATEXCLEAN=latexmk -C

all: pt

pt: CV_DR_pt.pdf

%.pdf: %.tex
	$(LATEXMK) $<

clean:
	$(LATEXCLEAN)

cleanall:
	git clean -dfX
