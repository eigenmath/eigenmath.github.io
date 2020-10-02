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

demos:
	cat 1.txt angmomop.txt 2.txt > angmomop.html
	cat 1.txt anticomm.txt 2.txt > anticomm.html
	cat 1.txt bhabha-scattering-4.txt 2.txt > bhabha-scattering-4.html
	cat 1.txt bhabha-scattering-5.txt 2.txt > bhabha-scattering-5.html
	cat 1.txt bohrradius.txt 2.txt > bohrradius.html
	cat 1.txt compton-scattering-1.txt 2.txt > compton-scattering-1.html
	cat 1.txt compton-scattering-2.txt 2.txt > compton-scattering-2.html
