// template.typ — Dense, ATS-optimized resume layout library
// Style: Black, single-column, Calibri, standard formatting

// ── Color palette ───────────────────────────────────────────────────────────

#let accent = black
#let subtle = rgb("#444444")    // dark gray for dates, secondary text
#let rule-color = rgb("#888888") // gray for section rules

// ── Document init ───────────────────────────────────────────────────────────

#let init = (
  doc,
) => {
  set text(size: 10pt, font: ("Calibri", "Carlito", "Liberation Sans"))
  set par(leading: 0.3em)
  set list(
    indent: 0.4em,
    body-indent: 0.3em,
    spacing: 0.25em,
    marker: text(size: 5pt, baseline: 1pt, sym.circle.filled),
  )
  set page(
    paper: "us-letter",
    margin: (
      top: 0.5in,
      bottom: 0.5in,
      left: 0.5in,
      right: 0.5in,
    ),
  )
  doc
}

// ── Header ──────────────────────────────────────────────────────────────────

#let header = (
  name: "Name",
  email: none,
  phone: none,
  website: none,
  linkedin: none,
  github: none,
  location: none,
) => {
  set align(center)

  text(size: 18pt, weight: "bold", tracking: 0.5pt, upper(name))
  v(-0.4em)

  let items = ()
  if location != none { items.push(location) }
  if email != none { items.push(link("mailto:" + email, email)) }
  if phone != none { items.push(phone) }
  if website != none {
    let display = website.replace(regex("https?://"), "")
    items.push(link("https://" + display, display))
  }
  if linkedin != none {
    let display = linkedin.replace(regex("https?://"), "")
    items.push(link("https://" + display, display))
  }
  if github != none {
    let display = github.replace(regex("https?://"), "")
    items.push(link("https://" + display, display))
  }

  set text(size: 9.5pt, fill: subtle)
  items.join([ #h(0.3em) | #h(0.3em) ])
  v(-0.15em)
  line(length: 100%, stroke: 1pt)
  v(-0.4em)
}

// ── Section header ──────────────────────────────────────────────────────────
// More space above than below to visually group header with its content.

#let section = (title) => {
  v(0.3em)
  text(size: 11pt, weight: "bold", tracking: 0.3pt, upper(title))
  v(-0.5em)
  line(length: 100%, stroke: 0.5pt + rule-color)
  v(-0.2em)
}

// ── Skills (single dense row) ───────────────────────────────────────────────

#let skills = (
  title: "Skills",
  items: (),
) => {
  text(weight: "bold", size: 10pt, title + ":  ")
  text(size: 10pt, items.join(", "))
  linebreak()
}

// ── Experience: company header ──────────────────────────────────────────────

#let company = (
  name: "Company",
  location: none,
  url: none,
  start: none,
  end: "Present",
) => {
  let end-str = if type(end) == str { end } else { end.display("[month repr:short] [year]") }
  let start-str = if type(start) == str { start } else { start.display("[month repr:short] [year]") }

  let left-content = {
    text(weight: "bold", size: 11pt, name)
    if location != none {
      text(size: 10pt, fill: subtle, [ | ] + location)
    }
  }

  if url != none {
    left-content = link(url, left-content)
  }

  grid(
    columns: (1fr, auto),
    align: (left, right),
    left-content,
    text(weight: "bold", size: 10pt, fill: subtle, start-str + [ -- ] + end-str),
  )
  v(-0.3em)
}

// ── Experience: role under a company ────────────────────────────────────────

#let role = (
  title: "Role",
  start: none,
  end: "Present",
  bullets: (),
) => {
  let end-str = if type(end) == str { end } else { end.display("[month repr:short] [year]") }
  let start-str = if type(start) == str { start } else { start.display("[month repr:short] [year]") }

  grid(
    columns: (1fr, auto),
    align: (left, right),
    text(style: "italic", size: 10.5pt, title),
    text(size: 9.5pt, fill: subtle, style: "italic", start-str + [ -- ] + end-str),
  )
  v(-0.2em)
  if bullets.len() > 0 {
    list(..bullets.map(b => [#b]))
  }
  v(-0.1em)
}

// ── Experience: role with no bullets ────────────────────────────────────────

#let role-inline = (
  title: "Role",
  start: none,
  end: "Present",
  note: none,
) => {
  let end-str = if type(end) == str { end } else { end.display("[month repr:short] [year]") }
  let start-str = if type(start) == str { start } else { start.display("[month repr:short] [year]") }

  grid(
    columns: (1fr, auto),
    align: (left, right),
    {
      text(style: "italic", size: 10.5pt, title)
      if note != none {
        text(size: 9.5pt, fill: subtle, [ | ] + note)
      }
    },
    text(size: 9.5pt, fill: subtle, style: "italic", start-str + [ -- ] + end-str),
  )
  v(-0.15em)
}

// ── Education ───────────────────────────────────────────────────────────────

#let education = (
  school: "School",
  degree: "Degree",
  major: "Major",
  date: none,
  extras: none,
) => {
  let date-str = if date == none { "" } else if type(date) == str { date } else { date.display("[month repr:short] [year]") }

  grid(
    columns: (1fr, auto),
    align: (left, right),
    {
      text(weight: "bold", school) + [ -- ] + degree + [ in ] + major
      if extras != none { [, ] + extras }
    },
    text(fill: subtle, date-str),
  )
  v(-0.15em)
}

// ── Certification (inline) ──────────────────────────────────────────────────

#let cert = (
  title: "Cert",
  issuer: "Issuer",
  date: none,
  url: none,
) => {
  let date-str = if date == none { "" } else if type(date) == str { date } else { date.display("[month repr:short] [year]") }

  let content = text(weight: "bold", title) + text(fill: subtle, [ | ] + issuer + [ | ] + date-str)

  if url != none {
    link(url, content)
  } else {
    content
  }
}

// ── Award (inline) ─────────────────────────────────────────────────────────

#let award = (
  title: "Award",
  awarder: "Organization",
  date: none,
) => {
  let date-str = if date == none { "" } else if type(date) == str { date } else { date.display("[month repr:short] [year]") }
  text(weight: "bold", title) + text(fill: subtle, [ | ] + awarder + [ | ] + date-str)
}

// ═══════════════════════════════════════════════════════════════════════════
// COVER LETTER
// ═══════════════════════════════════════════════════════════════════════════

#let letter-init = (
  sender: (
    name: "Drake Axelrod",
    email: "drake.axelrod@pm.me",
    website: "drakeaxelrod.com",
    linkedin: "linkedin.com/in/drakeaxelrod",
  ),
  recipient: (
    name: "Hiring Manager",
    title: none,
    company: "Company Name",
    address: none,
  ),
  date: datetime.today(),
  doc,
) => {
  set page(
    paper: "us-letter",
    margin: (top: 0.75in, bottom: 0.75in, left: 0.75in, right: 0.75in),
  )
  set text(size: 10.5pt, font: ("Calibri", "Carlito", "Liberation Sans"))
  set par(leading: 0.65em, spacing: 1.2em, justify: true)

  align(center, {
    text(size: 16pt, weight: "bold", tracking: 0.5pt, upper(sender.name))
    v(-0.4em)
    let items = ()
    items.push(link("mailto:" + sender.email, sender.email))
    if sender.website != none {
      items.push(link("https://" + sender.website, sender.website))
    }
    if sender.linkedin != none {
      items.push(link("https://" + sender.linkedin, sender.linkedin))
    }
    text(size: 9.5pt, fill: rgb("#444444"), items.join([ #h(0.3em) | #h(0.3em) ]))
    v(-0.1em)
    line(length: 100%, stroke: 1pt)
  })

  v(1em)
  text(date.display("[month repr:long] [day], [year]"))
  v(0.5em)

  {
    text(weight: "bold", recipient.name)
    linebreak()
    if recipient.title != none {
      text(recipient.title)
      linebreak()
    }
    text(recipient.company)
    if recipient.address != none {
      linebreak()
      text(recipient.address)
    }
  }

  v(0.75em)
  [Dear #recipient.name,]
  v(0.25em)

  doc

  v(1em)
  [Sincerely,]
  v(0.5em)
  text(sender.name)
}

// ── Pre-built paragraph blocks ──────────────────────────────────────────────

#let opening-offensive = (position, company) => {
  [I am writing to express my interest in the #position role at #company. As an Offensive Security Consultant with 53 penetration testing engagements across 12 industry sectors, I bring proven capability in identifying and exploiting vulnerabilities across web, API, mobile, Active Directory, cloud, and IoT attack surfaces.]
}

#let opening-seceng = (position, company) => {
  [I am writing to express my interest in the #position role at #company. I bring three years of offensive security experience across 53 client engagements, a BSc in Software Engineering, and fluency across 15 programming languages, giving me both the attacker's perspective and the engineering depth to build security into products and infrastructure.]
}

#let opening-swe = (position, company) => {
  [I am writing to express my interest in the #position role at #company. With a BSc in Software Engineering, professional fluency in Python, Go, Rust, C, and TypeScript, and three years applying that knowledge to break and secure real-world systems as a penetration tester, I bring a security-first engineering mindset that goes beyond writing code to understanding how it fails.]
}

#let body-pentesting = {
  [In my current role at QESTIT Cybersecurity, I lead penetration tests for clients in financial services, healthcare, energy, and manufacturing. My work consistently uncovers critical-severity findings: RCE paths, EDR bypass via BYOVD, credential extraction from LSA and disk, Kerberoastable service accounts, and NTLM relay chains in enterprise Active Directory environments. I have also performed incident response on an Akira-family ransomware intrusion, handling timeline reconstruction, IoC enumeration, and containment validation.]
}

#let body-tooling = {
  [Beyond hands-on testing, I build tools that scale offensive work. I developed the firm's automated Typst-based report generation framework, eliminating manual report assembly. I write custom Frida hooks, exploit scripts, and C2 tradecraft to bypass EDR, certificate pinning, and device attestation controls. I have also developed open-source security tooling including a WASM-based CVSS calculator and contributed to keyboard firmware projects in Rust.]
}

#let body-mobile = {
  [I have deep experience in mobile security testing across both iOS and Android. Using MobSF, Frida/Objection runtime hooking, and Magisk-rooted device rigs, I have assessed connected medical devices and hospitality platforms, uncovering runtime memory exposure of clinical data, insecure cryptographic key storage, and missing certificate pinning.]
}

#let body-research = {
  [I co-authored two peer-reviewed publications on secure web application development, one of which received the Best Research Paper Award at PROFES 2024 (25th International Conference on Product-Focused Software Process Improvement). This research background gives me the ability to approach security systematically and communicate findings with academic rigor.]
}

#let body-ad = {
  [I have performed internal network and Active Directory assessments across insurance, energy, and manufacturing environments, leveraging LLMNR/NBT-NS poisoning, NTLM relay, GPO misconfiguration exploitation, MDM policy bypass, and Kerberos attacks to demonstrate real lateral-movement risk and domain compromise paths.]
}

#let closing-generic = (company) => {
  [I would welcome the opportunity to discuss how my skills and experience align with your team's goals at #company.]
}

#let closing-specific = (company, reason) => {
  [I am drawn to #company because #reason. I would welcome the opportunity to discuss how my experience can contribute to your team.]
}
