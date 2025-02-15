#import "templates/letter.typ": init;
#let data = json("data.json")

#show: doc => init(
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
)

#lorem(30)

#lorem(50)

#lorem(20)
