#!/bin/sh
# Build from any working directory; no network access or shell-escape needed.
set -eu
cd -- "$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
if command -v latexmk >/dev/null 2>&1; then
  exec latexmk -xelatex -interaction=nonstopmode -halt-on-error -file-line-error -outdir=build main.tex
fi
for proposal_tool in xelatex bibtex; do
  if ! command -v "$proposal_tool" >/dev/null 2>&1; then
    printf 'Missing required tool: %s\n' "$proposal_tool" >&2
    exit 1
  fi
done
mkdir -p build
xelatex -interaction=nonstopmode -halt-on-error -file-line-error -output-directory=build main.tex
bibtex build/main
xelatex -interaction=nonstopmode -halt-on-error -file-line-error -output-directory=build main.tex
xelatex -interaction=nonstopmode -halt-on-error -file-line-error -output-directory=build main.tex
printf '\nGenerated: build/main.pdf\n'
