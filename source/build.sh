#!/bin/sh
pandoc index.md \
    -f markdown \
    -s \
    --include-in-header config.tex \
    -V geometry:a4paper \
    -V geometry:margin=2cm \
    --pdf-engine=xelatex \
    -M subtitle="ver. $(git rev-parse --short HEAD)" \
    -o ../dist/paper.pdf

pandoc index.md \
    -s \
    --metadata title="Course Headless Format" \
    -V linkcolor:blue \
    --toc \
    -M subtitle="ver. $(git rev-parse --short HEAD)" \
    -o ../dist/index.html

cp -r images ../dist   