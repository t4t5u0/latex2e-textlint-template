#!/usr/bin/perl

@default_files  = 'main.tex';
$out_dir        = ('output/');

$lualatex       = 'lualatex -synctex=1 %O %S';
$bibtex         = 'pbibtex %O %B';
$biber          = 'biber %O --bblencoding=utf8 -u -U --output_safechars %B';
$makeindex      = 'mendex %O -o %D %S';
$max_repeat     = 10;
$pdf_mode       = 4; # pdf化にlualatexを用いる

$ENV{TZ} = 'Asia/Tokyo';
$ENV{OPENTYPEFONTS} = '/usr/share/fonts//:';
$ENV{TTFONTS} = '/usr/share/fonts//:';

$clean_ext = "bbl run.xml synctex.gz"