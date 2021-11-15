all: thesis.pdf
.PHONY: clean distclean

thesis.pdf:
	latexmk thesis.tex -M -MP -MF thesis.d

synopsis:
	latexmk synopsis.tex -M -MP -MF synopsis.d

-include *.d

clean:
	rm -f *.out *.aux *.bbl *.blg *.fdb_latexmk \
		*.fls *.log *.toc *.brf thesis.d synopsis.d \
		*.idx *.ilg *.ind *.lof *.lot *.loa *.los *.lol \
		*.nlo *.nls */*.aux

distclean: clean
	rm -f thesis.pdf synopsis.pdf
