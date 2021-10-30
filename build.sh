#!/bin/sh
pandoc source/index.md \
    -f gfm \
    -s \
    --include-in-header config.tex \
    -V linkcolor:blue \
    -V geometry:a4paper \
    -V geometry:margin=2cm \
    --pdf-engine=xelatex \
    --toc \
    -o dist/paper.pdf