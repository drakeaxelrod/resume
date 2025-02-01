#import "template.typ": *;

#show: init

#let data = json("data.json")

#header(..data.basics)
#v(0.5em)
#for (k, v) in data.pairs().filter(it => {
  let (k, v) = it
  if k == "basics" { return false }
  if v.len() < 1 { return false }
  return true
}) {
  if k == "work" {
    section(title: "Experience")
    for it in v {entry.at(k)(..it)}
  } else if k == "skills" {
    section(title: "Skills")
    v.map(it => entry.at(k)(..it)).join(" " + $circle.filled.small$ + " ")
  } else if k == "languages" {
    section(title: "Languages")
    v.map(it => entry.at(k)(..it)).join(", ")
  } else {
    section(title: k)
    for it in v {entry.at(k)(..it)}
  }
}
