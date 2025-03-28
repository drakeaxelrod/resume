#!/usr/bin/env just


build:
  typst compile resume.typ "out/resume.pdf"
  typst compile --pages 1 resume.typ "out/resume.svg"
  typst compile letter.typ "out/letter.pdf"