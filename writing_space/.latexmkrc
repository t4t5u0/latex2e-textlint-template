#!/usr/bin/perl

@default_files  = 'main.tex';
$out_dir        = ('output/');


# $latex          = 'lualatex -synctex=1 -halt-on-error %O %S';
# $latex_silent   = 'lualatex -synctex=1 -halt-on-error -interaction=batchmode %O %S';
# $pdflatex       = 'lualatex --synctex=1 --halt-on-error --interaction=batchmode %O %S';

$lualatex       = 'lualatex -synctex=1 -halt-on-error %O %S';
$bibtex         = 'pbibtex %O %B';
$biber = 'biber %O --bblencoding=utf8 -u -U --output_safechars %B';
$makeindex      = 'mendex %O -o %D %S';
$max_repeat     = 10;
$pdf_mode       = 4; # pdf化にlualatexを用いる

$ENV{TZ} = 'Asia/Tokyo';
$ENV{OPENTYPEFONTS} = '/usr/share/fonts//:';
$ENV{TTFONTS} = '/usr/share/fonts//:';