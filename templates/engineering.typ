// #set text(size: 11pt, font: ("Calibri", "Carlito"))
// #set par(leading: 0.5em)
// #set page(
//   margin: (
//     top: 0.5in,
//     bottom: 0.5in,
//     left: 0.5in,
//     right: 0.5in
//   )
// )

#let capitalize = (s) => upper(s.at(0)) + lower(s.slice(1))

#let basic-information = (
  name: "John Doe",
  email: "name@gmail.com",
  website: "portfolio.com",
  linkedin: "linkedin.com/in/name",
  github: "github.com/name"
) => {
  set align(center)
  set text(size: 24pt)
  text(name)
  set text(size: 11pt)
  linebreak()
  let urls = (
    link("mailto:" + email, email),
    link(website, website.replace(regex("https?://"), "")),
    link(linkedin, linkedin.replace(regex("https?://"), "")),
    link(github, github.replace(regex("https?://"), ""))
  )
  urls.join(" | ")
  v(-2em)
}

#let section-header = (title) => {
  set text(size: 12.5pt)
  text(capitalize(title))
  v(-0.75em)
  line(length: 100%)
  v(-0.75em)
}

#let skill-group = (
  title: "CAD",
  skills: (
    "AutoCAD",
    "SolidWorks",
    "Fusion 360",
    "Onshape",
    "FreeCAD"
  )
) => {
  strong(title + ": ") + skills.join(", ") + linebreak()
}

#let job = (
  title: "Software Engineer",
  company: "Company Name",
  location: (
    city: "City",
    state: "State"
  ),
  start: datetime(year: 2020, month: 1, day: 1),
  end: datetime(year: 2021, month: 1, day: 1),
  summary: list(
    [#strong("STAR:") #strong("S")ituation, #strong("T")ask, #strong("A")ction, #strong("R")esult],
    [#strong("XYZ:") Accomplished #strong("[X]") as measured by #strong("[Y]") by doing #strong("[Z]")],
    [#strong("CAR:") #strong("C")hallenge, #strong("A")ction, #strong("R")esult],
  ),
  url: "https://www.company.com"
) => {
  if type(end) != str { end = end.display("[month repr:short] [year]") }
  if type(start) != str { start = start.display("[month repr:short] [year]") }
  v(-0.5em)
  table(
    columns: (1fr, auto),
    align: (left, right),
    stroke: none,
    inset: (x: 0em),
    gutter: 0em,
    link(url, [*#(title),* #(company) – #(location.city), #(location.state)]),
    [#start – #end],
    table.cell(colspan: 2, {
      v(-0.25em)
      summary
    })
  )
  v(-0.5em)
}

#let education = (
  school: "School",
  degree: "Degree",
  major: "Major",
  end: datetime(year: 2024, month: 1, day: 1),
) => {
  grid(
    columns: (1fr, auto),
    align: (left, right),
    stroke: none,
    inset: (x: 0em),
    gutter: 0em,
    strong(school) + " – " + degree + " in " + major,
    end.display("[month repr:short] [year]")
  )
  v(-0.5em)
}

#let certification = (
  title: "Certified Information Systems Security Professional (CISSP)",
  issuer: "ISC2",
  date: datetime(year: 2024, month: 1, day: 1),
  url: "https://www.isc2.org/Certifications/CISSP",
) => {
  link(
    url,
    strong(title) + " | " + issuer + " | " + date.display("[month repr:short] [year]")
  )
}

#let award = (
  title: "Best Research Paper Award",
  date: datetime(year: 2024, month: 12, day: 1),
  awarder: "PROFES 2024 – 25th International Conference on Product-Focused Software Process Improvement",
) => {
  strong(title) + " | " + awarder + " | " + date.display("[month repr:short] [year]")
}

#let init = (
  doc
) => {
  set text(size: 11pt, font: ("Calibri", "Carlito"))
  set par(leading: 0.5em)
  set page(
    margin: (
      top: 0.5in,
      bottom: 0.5in,
      left: 0.5in,
      right: 0.5in
    )
  )
  doc
}