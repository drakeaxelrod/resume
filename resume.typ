

/*
  IN PROGRESS

  -> Reference Material
  https://old.reddit.com/r/EngineeringResumes/wiki/index
  https://www.overleaf.com/project/662939053eb1dc8f0f3c617f

  -> Ordering

  - Summary
  - Experience
  - Certificates
  - Education
*/

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

// #let capitalize = (s) => upper(s.at(0)) + lower(s.slice(1))

// #let basic-information = (
//   name: "John Doe",
//   email: "name@gmail.com",
//   website: "portfolio.com",
//   linkedin: "linkedin.com/in/name",
//   github: "github.com/name"
// ) => {
//   set align(center)
//   set text(size: 24pt)
//   text(name)
//   set text(size: 11pt)
//   linebreak()
//   let urls = (
//     link("mailto:" + email, email),
//     link(website, website.replace(regex("https?://"), "")),
//     link(linkedin, linkedin.replace(regex("https?://"), "")),
//     link(github, github.replace(regex("https?://"), ""))
//   )
//   urls.join(" | ")
//   v(-2em)
// }

// #let section-header = (title) => {
//   set text(size: 12.5pt)
//   text(capitalize(title))
//   v(-0.75em)
//   line(length: 100%)
//   v(-0.75em)
// }

// #let skill-group = (
//   title: "CAD",
//   skills: (
//     "AutoCAD",
//     "SolidWorks",
//     "Fusion 360",
//     "Onshape",
//     "FreeCAD"
//   )
// ) => {
//   strong(title + ": ") + skills.join(", ") + linebreak()
// }

// #let job = (
//   title: "Software Engineer",
//   company: "Company Name",
//   location: (
//     city: "City",
//     state: "State"
//   ),
//   start: datetime(year: 2020, month: 1, day: 1),
//   end: datetime(year: 2021, month: 1, day: 1),
//   summary: list(
//     [#strong("STAR:") #strong("S")ituation, #strong("T")ask, #strong("A")ction, #strong("R")esult],
//     [#strong("XYZ:") Accomplished #strong("[X]") as measured by #strong("[Y]") by doing #strong("[Z]")],
//     [#strong("CAR:") #strong("C")hallenge, #strong("A")ction, #strong("R")esult],
//   ),
//   url: "https://www.company.com"
// ) => {
//   if type(end) != str { end = end.display("[month repr:short] [year]") }
//   if type(start) != str { start = start.display("[month repr:short] [year]") }
//   v(-0.5em)
//   table(
//     columns: (1fr, auto),
//     align: (left, right),
//     stroke: none,
//     inset: (x: 0em),
//     gutter: 0em,
//     link(url, [*#(title),* #(company) – #(location.city), #(location.state)]),
//     [#start – #end],
//     table.cell(colspan: 2, {
//       v(-0.25em)
//       summary
//     })
//   )
//   v(-0.5em)
// }

// #let education = (
//   school: "School",
//   degree: "Degree",
//   major: "Major",
//   end: datetime(year: 2024, month: 1, day: 1),
// ) => {
//   grid(
//     columns: (1fr, auto),
//     align: (left, right),
//     stroke: none,
//     inset: (x: 0em),
//     gutter: 0em,
//     strong(school) + " – " + degree + " in " + major,
//     end.display("[month repr:short] [year]")
//   )
//   v(-0.5em)
// }

// #let certification = (
//   title: "Certified Information Systems Security Professional (CISSP)",
//   issuer: "ISC2",
//   date: datetime(year: 2024, month: 1, day: 1),
//   url: "https://www.isc2.org/Certifications/CISSP",
// ) => {
//   link(
//     url,
//     strong(title) + " | " + issuer + " | " + date.display("[month repr:short] [year]")
//   )
// }

// #let award = (
//   title: "Best Research Paper Award",
//   date: datetime(year: 2024, month: 12, day: 1),
//   awarder: "PROFES 2024 – 25th International Conference on Product-Focused Software Process Improvement",
// ) => {
//   strong(title) + " | " + awarder + " | " + date.display("[month repr:short] [year]")
// }

#import "templates/engineering.typ" as resume

#show: resume.init
#resume.basic-information(
  name: "Drake Axelrod",
  email: "drakeaxelrod@gmail.com",
  website: "drakeaxelrod.com",
  linkedin: "linkedin.com/in/drakeaxelrod",
  github: "github.com/drakeaxelrod"
)

#resume.section-header("skills")

#resume.skill-group(
  title: "Penetration Testing & Security Assessment",
  skills: (
    "Web Applications",
    "APIs",
    "Network Security",
    "Active Directory",
    "IoT",
    "Cloud Security (AWS, Azure, GCP)"
  )
)
#resume.skill-group(
  title: "Exploitation & Post-Exploitation",
  skills: (
    "Privilege Escalation",
    "Credential Dumping",
    "Lateral Movement",
    "Defense Evasion",
    "Red Teaming",
    "Command & Control (C2)",
  )
)
// #resume.skill-group(
//   title: "Vulnerability Assessment & Management",
//   skills: (
//     "Vulnerability Scanning",
//     "Risk Assessment",
//     "Threat Modeling",
//     "Security Auditing",
//     "Incident Response",
//     "Security Operations Center (SOC)",
//     "Security Information and Event Management (SIEM)",
//     "Security Orchestration, Automation, and Response (SOAR)",
//     "Security Incident and Event Management (SIEM)",
//     "Security Operations Center (SOC)",
//   )
// )
#resume.skill-group(
  title: "Operating Systems",
  skills: (
    "Linux (Arch, Kali, Parrot, NixOS, Debian, Alpine)",
    "Windows",
    "OSX",
    "Android",
    "iOS",
  )
)
#resume.skill-group(
  title: "Tools & Frameworks",
  skills: (
    "BurpSuite",
    "Metasploit",
    "Sliver",
    "Nmap",
    "Wireshark",
    "Nessus",
    "Impacket",
    "BloodHound",
    "Responder",
  )
)
#resume.skill-group(
  title: "Scripting & Development",
  skills: (
    "ShellScript",
    "PowerShell",
    "Python",
    "C",
    "C++",
    "Lua",
    "Java",
    "Rust",
    "Go",
    "JavaScript",
    "TypeScript",
    "SQL",
    "NoSQL",
    "Haskell",
    "Nix",
    "Exploit Development",
    "Reverse Engineering",
    "Docker",
    "Kubernetes",
    "CI/CD",
    "DevOps",
    "Git",
    "Scrum",
    "Agile",
  )
)
#resume.skill-group(
  title: "Endpoint Security & Management",
  skills: (
    "Intune Company Portal",
    "Endpoint Detection and Response (EDR)",
    "Identity and Access Management (IAM)",
  )
)
#resume.skill-group(
  title: "Security Standards & Compliance",
  skills: (
    "OWASP",
    "MITRE ATT&CK",
    "NIST Cybersecurity Framework",
    // "CIS Benchmarks",
    // "PCI DSS",
    // "ISO 27001",
    // "NIST 800-53",
    "CVSS",
    "CVE",
    "CWE",
    "CAPEC",
  )
)
#resume.skill-group(
  title: "Soft Skills & Communication",
  skills: (
    "Technical Report Writing",
    "Stakeholder Presentations",
    "Collaboration",
    "Security Training"
  )
)

#resume.section-header("experience")

#resume.job(
  title: "Penetration Tester",
  company: "QESTIT Malmö AB",
  location: (
    city: "Malmö",
    state: "Skåne"
  ),
  start: datetime(year: 2023, month: 7, day: 1),
  end: "Present",
  summary: list(
    "Led security assessments for clients, identifying vulnerabilities and providing actionable remediation strategies.",
    "Performed assessments on multiple platforms including web applications, APIs, networks, IoT devices, Active Directory, and cloud environments.",
    "Identified and exploited misconfigurations, privilege escalation opportunities, and bypassed defenses to simulate real-world threats.",
    "Developed custom exploits and tools to enhance assessment capabilities.",
    "Trained and mentored junior team members in penetration testing methodologies, tools, and best practices.",
  ),
  url: "https://www.linkedin.com/company/qestitsweden/"
)
#resume.job(
  title: "Junior Penetration Tester",
  company: "QESTIT Malmö AB",
  location: (
    city: "Malmö",
    state: "Skåne"
  ),
  start: datetime(year: 2023, month: 1, day: 1),
  end: datetime(year: 2023, month: 7, day: 1),
  summary: list(
    "Performed in-depth vulnerability assessments by simulating real-world attacks to identify and mitigate security risks.",
    "Conducted exploit development and security automation to enhance the efficiency of security assessments.",
    "Automated the assessment reporting process, improving efficiency and accuracy.",
    "Communicated findings effectively to both technical and non-technical stakeholders, supporting informed security decisions.",
  ),
  url: "https://www.linkedin.com/company/qestitsweden/"
)

#resume.job(
  title: "Penetration Testing Intern",
  company: "ADDQ 4 AB",
  location: (
    city: "Malmö",
    state: "Skåne"
  ),
  start: datetime(year: 2021, month: 1, day: 1),
  end: datetime(year: 2022, month: 12, day: 1),
  summary: list(
    "Gained hands-on experience in real-world cybersecurity challenges under the guidance of industry professionals.",
    "Assisted with vulnerability assessments, penetration testing, and security audits.",
    "Collaborated with cross-functional teams to ensure security best practices were integrated into development processes.",
  ),
  url: "https://www.linkedin.com/company/addq-4-ab/"
)

#resume.section-header("certificates")

#list(
  resume.certification(
    title: "Multi-Cloud Red Teaming Analyst (MCRTA)",
    issuer: "CyberWarfare Labs",
    date: datetime(year: 2025, month: 3, day: 1),
    url: "https://labs.cyberwarfare.live/badge/certificate/67e2a648ad91a572aafe5777"
  ),
  resume.certification(
    title: "Certified Penetration Testing Specialist (CPTS)",
    issuer: "Hack The Box",
    date: datetime(year: 2025, month: 1, day: 1),
    url: "https://academy.hackthebox.com/achievement/badge/ee14298d-de2e-11ef-864f-bea50ffe6cb4"
  ),
  resume.certification(
    title: "CyberOps Associate",
    issuer: "Cisco",
    date: datetime(year: 2021, month: 8, day: 1),
    url: "https://www.credly.com/badges/5397f441-dc40-4885-8199-cf1f30f3fe59?source=linked_in_profile",
  ),
)


#resume.section-header("publications")

#[
  K. Svensson, D. Axelrod, M. Mohamad, and R. Wohlrab, "Guidelines for Supporting Software Engineers in Developing Secure Web Applications," in Product-Focused Software Process Improvement, D. Pfahl, J. Gonzalez Huerta, J. Klünder, and H. Anwar, Eds., Cham: Springer Nature Switzerland, 2025, pp. 123-138. #link("https://doi.org/10.1007/978-3-031-78386-9_9", "doi:10.1007/978-3-031-78386-9_9")
]

#resume.section-header("awards")

#resume.award(
  title: "Best Research Paper Award",
  date: datetime(year: 2024, month: 12, day: 1),
  awarder: "PROFES 2024 – 25th International Conference on Product-Focused Software Process Improvement",
)

#resume.section-header("education")
#resume.education(
  school: "University of Gothenburg",
  degree: "BSc",
  major: "Software Engineering",
  end: datetime(year: 2023, month: 6, day: 1),
)
#resume.education(
  school: "Santa Monica College",
  degree: "AA",
  major: "Social and Behavioral Sciences",
  end: datetime(year: 2021, month: 6, day: 1),
)




