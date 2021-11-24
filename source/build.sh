#!/bin/sh
pandoc index.md \
    -f gfm \
    -s \
    --include-in-header config.tex \
    -V linkcolor:blue \
    -V geometry:a4paper \
    -V geometry:margin=2cm \
    --pdf-engine=xelatex \
    --toc \
    -M subtitle="ver. $(git rev-parse --short HEAD)" \
    -o ../dist/paper.pdf