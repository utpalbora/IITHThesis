$ENV{'TEXINPUTS'}='./common//:' . $ENV{'TEXINPUTS'};
$ENV{'BSTINPUTS'}='./common//:' . $ENV{'BSTINPUTS'};
#ensure_path( 'TEXINPUTS', './common//' ); #needs latexmk v4.70b
#ensure_path( 'BSTINPUTS', './common//' ); #needs latexmk v4.70b

add_cus_dep( 'nlo', 'nls', 0, 'makenlo2nls' );
sub makenlo2nls {
  system( "makeindex -s nomencl.ist -o \"$_[0].nls\" \"$_[0].nlo\"" );
}

$pdf_mode = 1;        # tex -> pdf
#$pdf_mode = 2;        # tex -> ps -> pdf
#$postscript_mode = 1; # tex -> ps

$pdf_previewer = "start evince";
#$dvi_previewer = 'start xdvi -watchfile 1.5';
#$ps_previewer  = 'start gv --watch';

# $latex, $pdflatex, $lualatex, and $xelatex
# Uncomment for pdflatex
#$pdflatex = 'pdflatex %O %S';
# Uncomment below 2 line for luaflatex
#$pdflatex = "lualatex %O %S";
#$pdf_mode = 1; $postscript_mode = $dvi_mode = 0;
# Uncomment below 2 line for xeflatex
$pdflatex = "xelatex %O %S";
$pdf_mode = 1; $postscript_mode = $dvi_mode = 0;

@default_files = ('thesis.tex');
$clean_ext = "bbl nav out snm";

#$bibtex_use = 0 # Never run bibtex or biber
$bibtex_use = 2 # Use bibtex

#$latex = 'latex -interaction=nonstopmode -shell-escape';
#$pdflatex = 'pdflatex -interaction=nonstopmode -shell-escape';

