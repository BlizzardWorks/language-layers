#!/bin/bash

emacs.exe --batch -q --eval '(progn (find-file "design.org") (org-latex-export-to-pdf))'
rm design.tex

cp design.org design.github
