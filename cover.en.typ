#import "@preview/modern-cv:0.9.0": *

#show: coverletter.with(
  author: (
    firstname: "Pierre-François",
    lastname: "Carpentier",
    email: "carpentier.pf@gmail.com",
    phone: "+33 (0) 670 471 017",
    github: "kakwa",
    linkedin: "pfcarpentier",
    address: "114 rue de la Glacière, 75013 Paris",
    positions: (
      "Software Engineer",
      "System Architecture",
      "SRE",
    ),
    signature: image("img/signature.svg", format: "svg", width: 150pt),
  ),
  language: "en",
  date: datetime.today().display(),
  paper-size: "a4",
  accent-color: rgb("#239dad"),
  show-footer: false,
  show-address-icon: true,
  profile-picture: none,
)

#hiring-entity-info(
  entity-info: (
    target: "Company Recruitement Team",
    name: "COMPANY",
    street-address: "123 Example Street",
    city: "Anytown, ST 12345",
  ),
)

#letter-heading(job-position: "POSITION", addressee: "Sir or Madame")

#coverletter-content[
  Thank you for considering my application for the POSITION role at COMPANY.
  I would be excited by the opportunity to contribute and improve EXAMPLE.
]

#coverletter-content[
  I’m autonomous, always learning, adaptable and fully capable of navigating complex
  environments, so I’m confident I can quickly ramp up across and be a valuable
  contributor to your company.
]

#coverletter-content[
  Computer science is more than a professional activity for me, it’s a hobbie I
  pursue in my free time alongside broader “maker” activities (3D printing,
  tinkering, electronics). I’m the creator and maintainer of #link("https://github.com/kakwa")[several small open‑source projects],
  and lately I’ve been exploring #link("https://www.printables.com/@kakwa_3337391")[CAD 3D modeling] and writing about
  #link("https://technically.kakwalab.ovh/")[technical topics]. Feel free to check these projects out.
]

#coverletter-content[
  This drive to tinker and genuine curiosity helps make me more proactive and a better
  problem solver, qualities that I believe would translate into meaningful
  contributions to your team.
]

#coverletter-content[
  I would be glad to discuss whether I could be a good fit for your organization.
]


