all: thesis.pdf
.PHONY: clean distclean

thesis.pdf:
	latexmk thesis.tex -M -MP -MF thesis.d

-include *.d

clean:
	rm -f *.out *.aux *.bbl *.blg *.fdb_latexmk \
		*.fls *.log *.toc *.brf thesis.d \
		*.idx *.ilg *.ind *.lof *.lot *.loa *.los \
		*.nlo *.nls */*.aux

distclean: clean
	rm -f thesis.pdf
