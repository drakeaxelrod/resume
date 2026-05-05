#!/usr/bin/env just

default: build

# Build resume PDF and SVG (for README embed)
build:
  mkdir -p out
  typst compile resume.typ "out/resume.pdf"
  typst compile --pages 1 resume.typ "out/resume.svg"

# Build a cover letter from letters/
letter file:
  mkdir -p out
  typst compile "{{file}}" "out/letter.pdf"

# Watch resume for changes and rebuild
watch:
  typst watch resume.typ "out/resume.pdf"

# Clean build artifacts
clean:
  rm -rf out/
