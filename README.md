Torino, a pretty theme for LaTeX-beamer
=======================================

This is a fork of (https://github.com/barisione/beamer-torino), customized for
my usage.

Beamer   (http://latex-beamer.sourceforge.net/)   is   a   LaTeX   class
that allows  you  to  create  presentations.   Beamer  contains  several
full-featured (but a bit ugly) themes, so I wrote this pretty theme (but
with some missing features) called Torino.

First of all, you have to install Beamer, directly from source or  using
an already made package for your distro.  Then install the theme,  on  a
Unix system just type in a terminal:

    $ mkdir -p ~/texmf/tex/latex/beamer
    $ cp *.sty ~/texmf/tex/latex/beamer

Now you are ready to use the theme, for documentation read  the  example
files: chameleon.tex nouvelle.tex and freewilly.tex.  Compiling them you
get some slides with documentation:

    $ pdflatex chameleon.tex
    $ pdflatex nouvelle.tex
    $ pdflatex freewilly.tex
