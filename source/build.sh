#!/bin/sh
pandoc index.md \
    -f markdown \
    -s \
    --include-in-header config.tex \
    -V linkcolor:blue \
    -V geometry:a4paper \
    -V geometry:margin=2cm \
    --pdf-engine=xelatex \
    --toc \
    -o ../dist/paper.pdf