#!/usr/bin/env just


build:
  typst compile resume.typ "out/resume.pdf"
  typst compile resume.typ "out/resume.svg"