// [Your Name]
// [Your Address]
// [City, State ZIP Code]
// [Your Email Address]
//
// [Date]
//
// [Recipient Name]
// [Recipient Title]
// [Company Name]
// [Company Address]
// [City, State ZIP Code]
//
//
// Dear [Recipient Name],
//
// [Content of the letter goes here.]
//
// Sincerely,
// [Your Name]

#let init = (
  sender: (
    name: "[Your Name]",
    address: "[Street Address]",
    city: "[City]",
    state: "[State]",
    zip: "[ZIP Code]",
    email: link("mailto:[Email]", "[Email]")
  ),
  recipient: (
    name: "[Recipient Name]",
    title: "[Recipient Title]",
    company: "[Company Name]",
    address: "[Company Address]",
    city: "[City]",
    state: "[State]",
    zip: "[ZIP Code]"
  ),
  doc
) => {
  set page(
    margin: (y: 0.5in, x: 0.5in, top: 0.25in)
  )
  set text(font: "Inter", hyphenate: false, size: 10pt)
  set par(spacing: 1.5em)
  stack(spacing: 2em,
    stack(spacing: 1em,
      text(sender.name),
      text(sender.address),
      text(sender.city + ", " + sender.state + " " + sender.zip),
      text(sender.email),
    ),
    datetime.today().display("[month repr:long] [day], [year]"),
    stack(spacing: 0.75em,
      text(recipient.name),
      text(recipient.title),
      text(recipient.company),
      text(recipient.address),
      text(recipient.city + ", " + recipient.state + " " + recipient.zip)
    ),
    [Dear #recipient.name,],
    doc,
    stack(spacing: 0.75em,
      text("Sincerely,"),
      text(sender.name)
    ),
  )
}

#show: doc => init(
  doc
)