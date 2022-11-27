all: thesis.pdf
SHELL := /bin/bash
.PHONY: clean distclean declaration approval

thesis.pdf:
	latexmk thesis.tex -M -MP -MF thesis.d

synopsis:
	latexmk synopsis.tex -M -MP -MF synopsis.d

declaration:
	sed -i '/^\\documentclass/s/final,//g' thesis.tex
	echo "\usepackage[2]{pagesel}" >> common/preamble.tex
	latexmk thesis.tex -M -MP -MF thesis.d
	mv thesis.pdf declaration.pdf
	sed -i '/^\\usepackage\[2\]{pagesel}/d' common/preamble.tex

approval:
	sed -i '/^\\documentclass/s/final,//g' thesis.tex
	echo "\usepackage[3]{pagesel}" >> common/preamble.tex
	latexmk thesis.tex -M -MP -MF thesis.d
	mv thesis.pdf approval.pdf
	sed -i '/^\\usepackage\[3\]{pagesel}/d' common/preamble.tex

final:
	sed -i 's/^\\documentclass\[/&final,/' thesis.tex
	#sed -i 's/^\\documentclass\[/\\documentclass\[final,/' thesis.tex
	latexmk thesis.tex -M -MP -MF thesis.d
	sed -i '/^\\documentclass/s/final,//g' thesis.tex

-include *.d

clean:
	rm -f *.out *.aux *.bbl *.blg *.fdb_latexmk \
		*.fls *.log *.toc *.brf thesis.d synopsis.d \
		*.idx *.ilg *.ind *.lof *.lot *.loa *.los *.lol \
		*.nlo *.nls */*.aux */*/*.aux

distclean: clean
	rm -f thesis.pdf synopsis.pdf approval.pdf declaration.pdf
