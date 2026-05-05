// resume.typ — Drake Axelrod

#import "template.typ" as t

#show: t.init

// ═══════════════════════════════════════════════════════════════════════════
// HEADER
// ═══════════════════════════════════════════════════════════════════════════

#t.header(
  name: "Drake Axelrod",
  email: "drake.axelrod@pm.me",
  website: "https://drakeaxelrod.com",
  linkedin: "https://linkedin.com/in/drakeaxelrod",
  github: "https://github.com/drakeaxelrod",
)

// ═══════════════════════════════════════════════════════════════════════════
// SUMMARY
// ═══════════════════════════════════════════════════════════════════════════

#t.section("Summary")

Offensive Security Consultant with 53 engagements across 12 industry sectors. Focused on web, API, mobile, Active Directory, cloud, and IoT attack surfaces. Co-author of 2 peer-reviewed security publications (Best Research Paper, PROFES 2024).

// ═══════════════════════════════════════════════════════════════════════════
// SKILLS — before Experience so ATS/recruiters hit keywords early
// ═══════════════════════════════════════════════════════════════════════════

#t.section("Skills")

#t.skills(
  title: "Security Tools",
  items: (
    "Burp Suite", "Metasploit", "Sliver", "BloodHound", "Impacket",
    "Mimikatz", "Frida", "MobSF", "Nmap", "Nessus", "Hashcat", "Wireshark",
  ),
)
#t.skills(
  title: "Platforms",
  items: (
    "AWS", "Azure / Entra ID", "Active Directory", "OAuth/OIDC", "SAML",
    "Docker", "Kubernetes", "Linux", "Windows", "iOS", "Android",
  ),
)
#t.skills(
  title: "Programming",
  items: (
    "Python", "Bash", "PowerShell", "Go", "Rust", "C", "C++", "TypeScript",
    "JavaScript", "Lua", "Nix", "SQL", "Haskell", "Java", "C#",
  ),
)
#t.skills(
  title: "Methodologies",
  items: (
    "OWASP (WSTG, ASVS, MASVS, MASTG, Top 10)", "MITRE ATT&CK", "PTES",
    "NIST SP 800-115", "CVSS", "CWE", "PCI DSS", "GDPR",
  ),
)

// ═══════════════════════════════════════════════════════════════════════════
// EXPERIENCE
// ═══════════════════════════════════════════════════════════════════════════

#t.section("Experience")

#t.company(
  name: "QESTIT Cybersecurity AB",
  location: "Malmö, Sweden",
  url: "https://www.linkedin.com/company/qestitsweden/",
  start: datetime(year: 2021, month: 1, day: 1),
  end: "Present",
)

#t.role(
  title: "Offensive Security Consultant",
  start: datetime(year: 2023, month: 7, day: 1),
  end: "Present",
  bullets: (
    [Found critical vulnerabilities across 40+ engagements: RCE paths, EDR bypass via BYOVD, Metasploit-WinRM chains, LSA credential dumps, and Kerberoastable accounts in enterprise AD, cloud, and web environments.],
    [Handled IR on an Akira ransomware intrusion. Rebuilt the attack timeline, traced lateral movement and C2 traffic across AD/SMB/Windows, and confirmed containment.],
    [Wrote custom Frida hooks, exploit scripts, and C2 payloads that bypassed EDR, certificate pinning, Play Integrity attestation, and anti-tampering controls on red team engagements.],
    [Built the firm's automated report generation framework in Typst, replacing manual assembly and standardizing deliverables across the team.],
    [Tested mobile apps (iOS/Android) on medical devices and hospitality platforms with MobSF, Frida/Objection, and Magisk-rooted rigs. Found clinical data in memory, extractable keys, and missing cert pinning.],
    [Ran internal AD assessments for insurance, energy, and manufacturing clients using LLMNR/NBT-NS poisoning, NTLM relay, GPO abuse, and MDM bypass to demonstrate lateral-movement paths.],
  ),
)

#t.role(
  title: "Junior Penetration Tester",
  start: datetime(year: 2023, month: 1, day: 1),
  end: datetime(year: 2023, month: 7, day: 1),
  bullets: (
    [Ran web app, API, and network pentests following PTES and OWASP. Wrote up findings for both engineers and execs so remediation actually happened.],
    [Built exploit scripts and automation tooling that sped up engagements and became the foundation for the firm's reporting framework.],
  ),
)

#t.role(
  title: "Penetration Testing Intern",
  start: datetime(year: 2021, month: 1, day: 1),
  end: datetime(year: 2022, month: 12, day: 1),
  bullets: (
    [Learned pentesting methodology from senior consultants while finishing BSc, contributing to live client assessments.],
    [Wrote BSc thesis on secure web development with University of Gothenburg; published at PROFES 2024 (Best Paper).],
  ),
)

// ═══════════════════════════════════════════════════════════════════════════
// CERTIFICATIONS
// ═══════════════════════════════════════════════════════════════════════════

#t.section("Certifications")

#t.cert(
  title: "Multi-Cloud Red Teaming Analyst (MCRTA)",
  issuer: "CyberWarfare Labs",
  date: datetime(year: 2025, month: 3, day: 1),
  url: "https://labs.cyberwarfare.live/badge/certificate/67e2a648ad91a572aafe5777",
)
#linebreak()
#t.cert(
  title: "Certified Penetration Testing Specialist (CPTS)",
  issuer: "Hack The Box",
  date: datetime(year: 2025, month: 1, day: 1),
  url: "https://academy.hackthebox.com/achievement/badge/ee14298d-de2e-11ef-864f-bea50ffe6cb4",
)
#linebreak()
#t.cert(
  title: "CyberOps Associate",
  issuer: "Cisco",
  date: datetime(year: 2021, month: 8, day: 1),
  url: "https://www.credly.com/badges/5397f441-dc40-4885-8199-cf1f30f3fe59",
)

// ═══════════════════════════════════════════════════════════════════════════
// PUBLICATIONS & AWARDS
// ═══════════════════════════════════════════════════════════════════════════

#t.section("Publications & Awards")

K. Svensson, D. Axelrod _et al._, "Guidelines for Supporting Software Engineers in Developing Secure Web Applications," _PROFES 2024_, Springer, 2025. *Best Research Paper Award.* #link("https://doi.org/10.1007/978-3-031-78386-9_9", "doi:10.1007/978-3-031-78386-9_9") \
R. Groner, K. Svensson, D. Axelrod _et al._, "Empowering Software Engineers to Design More Secure Web Applications," _J. Software: Evolution and Process_, 2026. #link("https://doi.org/10.1002/smr.70083", "doi:10.1002/smr.70083")

// ═══════════════════════════════════════════════════════════════════════════
// EDUCATION
// ═══════════════════════════════════════════════════════════════════════════

#t.section("Education")

#t.education(
  school: "University of Gothenburg",
  degree: "BSc",
  major: "Software Engineering",
  date: datetime(year: 2023, month: 6, day: 1),
)
#t.education(
  school: "Santa Monica College",
  degree: "AA",
  major: "Social and Behavioral Sciences",
  date: datetime(year: 2015, month: 12, day: 1),
)

// ═══════════════════════════════════════════════════════════════════════════
// LANGUAGES
// ═══════════════════════════════════════════════════════════════════════════

#t.section("Languages")

*English* (native) #h(1em) *Swedish* (fluent)
