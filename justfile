#!/usr/bin/env just

build:
  typst compile resume.typ "drake_axelrod_resume-$(date +'%Y-%m-%d').pdf"
  typst compile resume.typ "resume.svg"