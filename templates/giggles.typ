


#let div = str.from-unicode(0x2756)

#let header = (
  name: "Jobby McJobface",
  email: "hey@sheetsresume.com",
  phone: "5555555555",
  location: "Denver, CO",
  portfolio: "https://github.com"
) => {
  text(size: 24pt, weight: 900, name)
  linebreak()
  let divider = move(dy: 0.15em, pad(x: 0.25em, text(div)))
  stack(
    dir: ltr,
    text(size: 16pt, link("mailto:" + email, email)),
    divider,
    text(size: 16pt, link("tel:" + phone, phone)),
    divider,
    text(size: 16pt, location),
    divider,
    text(size: 16pt, link(portfolio, "Portfolio / GitHub link"))
  )
  v(-0.5em)
  line(length: 100%)
}

#let section = (
  title: "TITLE",
) => {
  text(size: 12pt, weight: 900, title)
  linebreak()
  v(-0.5em)
  line(length: 100%)
}

#let init = (
  doc
) => {
  set page(margin: 0.5in)
  set text(font: "EB Garamond")

  /* Content */
  header()
  section(title: "Experience")
  doc
}





#show: init