.PHONY: default clean

%.pdf: %.tex
	pdflatex $<

# $$ sends a single $ to the shell
# sed changes .tex to .pdf

default:
	for file in $$(ls *.tex | sed "s/\.tex/\.pdf/") ; do make $$file ; done
	rm -f *.aux *.log *.out *.synctex.gz *.toc

clean:
	rm -f *.aux *.log *.out *.synctex.gz *.toc
