
#let header = (
  name: "John Doe",
  label: "Programmer",
  image: "",
  email: "john@gmail.com",
  phone: "(912) 555-4321",
  url: "https://johndoe.com",
  summary: "A summary of John Doe…",
  location: (
    address: "2712 Broadway St",
    postalCode: "CA 94115",
    city: "San Francisco",
    countryCode: "US",
    region: "California"
  ),
  profiles: (
    (
      network: "Twitter",
      username: "john",
      url: "https://twitter.com/john"
    ),
  )
) => {
  stack(spacing: 0.5em,
    {
      set text(size: 0.75em)
      stack(dir: ltr, spacing: 0.5em,
        h(1fr),
        link("mailto:" + email, email),
        $circle.filled.small$,
        link("tel:" + phone.codepoints().filter(it => it in "0123456789").join(""), phone),
        $circle.filled.small$,
        link(url, url.replace(regex("(https?://)?(www\\.)?"), "")),
        $circle.filled.small$,
        ..profiles.map(it => {
          link(it.url, lower(it.network) + " - " + it.username)
        }).intersperse($circle.filled.small$)
      )
    },
    v(1.5em),
    stack(dir: ltr, spacing: 1fr,
      text(size: 1.5em, weight: 600, name),
      align(bottom, text(style: "italic", size: 0.75em, weight: 400, summary))
    ),
    line(length: 100%)
  )
}

#let section = (
  title: "TITLE",
) => stack(spacing: 0.5em,
  text(size: 1em, weight: 600, upper(title)),
  line(length: 100%)
) + v(-0.25em)

#let job-entry = (
  name: "Company",
  position: "President",
  url: "https://company.com",
  startDate: "2013-01-01",
  endDate: "2014-01-01",
  summary: "Description…",
  highlights: (
    "Started the company",
  )
) => {
  set stack(dir: ltr, spacing: 1fr)
  set text(weight: "regular", size: 0.8em)
  stack(dir: ttb, spacing: 0.5em,
    stack(
      text( weight: 600, name),
      text(weight: 600, link(url, url.replace(regex("(https?://)?(www\\.)?"), ""))),
    ),
    stack(
      text(style: "italic", position),
      text(style: "italic", startDate + " - " + endDate),
    ),
    // v(0.25em),
    text(summary),
    list(..highlights)
  )
}

#let entry = (:)

#entry.insert("work", (
  name: "Company",
  position: "President",
  url: "https://company.com",
  startDate: "2013-01-01",
  endDate: "2014-01-01",
  summary: "Description…",
  highlights: ("Started the company",)
) => {
  set stack(dir: ltr, spacing: 1fr)
  set text(weight: "regular", size: 0.8em)
  stack(dir: ttb, spacing: 0.5em,
    stack(
      text( weight: 600, link(url, name)),
      text(weight: 600, startDate + " - " + endDate),
    ),
    stack(
      text(style: "italic", position),
    ),
    v(1em),
    text(summary),
    list(..highlights)
  )
})

#entry.insert("education", (
  institution: "University",
  url: "https://institution.com/",
  area: "Software Development",
  studyType: "Bachelor",
  startDate: "2011-01-01",
  endDate: "2013-01-01",
  score: "4.0",
  courses: ("DB1101 - Basic SQL",)
) => {
  set stack(dir: ltr, spacing: 1fr)
  set text(weight: "regular", size: 0.8em)
  stack(dir: ttb, spacing: 0.5em,
    stack(
      text( weight: 600, link(url, institution)),
      text(weight: 600, startDate + " - " + endDate),
    ),
    stack(
      text(style: "italic", area),
      text(style: "italic", studyType),
    ),
    // v(1em),
    // list(..courses)
  )
})

#entry.insert("certificates", (
  name: "Certificate",
  date: "2021-11-07",
  issuer: "Company",
  url: "https://certificate.com"
) => {
  set stack(dir: ltr, spacing: 1fr)
  set text(weight: "regular", size: 0.8em)
  stack(dir: ttb, spacing: 0.5em,
    stack(
      text(weight: 600, link(url, name)),
      text(weight: 600, date),
    ),
    stack(
      text(style: "italic", issuer),
      // text(style: "italic", date),
    )
  )
})

#entry.insert("awards", (
  title: "Award",
  date: "2014-11-01",
  awarder: "Company",
  summary: "There is no spoon."
) => {
  set stack(dir: ltr, spacing: 1fr)
  set text(weight: "regular", size: 0.8em)
  stack(dir: ttb, spacing: 0.5em,
    stack(
      text(weight: 600, title),
      text(weight: 600, date),
    ),
    stack(
      text(style: "italic", awarder),
      // text(style: "italic", date),
    ),
    v(1em),
    text(summary)
  )
})


#entry.insert("publications", (
name: "Publication",
publisher: "Company",
releaseDate: "2014-10-01",
url: "https://publication.com",
summary: "Description…"
) => {
  set stack(dir: ltr, spacing: 1fr)
  set text(weight: "regular", size: 0.8em)
  stack(dir: ttb, spacing: 0.5em,
    stack(
      text(weight: 600, link(url, name)),
      text(weight: 600, releaseDate),
    ),
    stack(
      text(style: "italic", publisher),
    ),
    v(1em),
    text(summary)
  )
})

#entry.insert("skills", (
  name: "Web Development",
  level: "Master",
  keywords: (
    "HTML",
    "CSS",
    "JavaScript"
  )
) => {
  set stack(dir: ltr, spacing: 1fr)
  set text(weight: "regular", size: 0.8em)
  text(emph(name) + " — " + keywords.join(", "))
})

#entry.insert("languages", (
  language: "English",
  fluency: "Native speaker"
) => {
  set stack(dir: ltr, spacing: 1fr)
  set text(weight: "regular", size: 0.8em)
  text(language + " — " + fluency)
})

#entry.insert("interests", (
  name: "Activities",
  keywords: (
    "Surfing",
    "Hiking",
    "Reading",
    "Weightlifting",
    "Gaming"
  )
) => {
  set stack(dir: ltr, spacing: 1fr)
  set text(weight: "regular", size: 0.8em)
  text(emph(name) + " — " + keywords.join(", "))
})



#let init = (
  doc
) => {
  set page(
    margin: (y: 0.5in, x: 0.5in, top: 0.25in)
  )
  set text(font: "Inter", hyphenate: false, size: 10pt)
  set par(spacing: 1.1em, justify: true)
  /* Content */
  doc
}


