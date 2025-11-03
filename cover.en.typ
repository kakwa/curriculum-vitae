#import "@preview/modern-cv:0.9.0": *

#show: coverletter.with(
  author: (
    firstname: "P-F",
    lastname: "Carpentier",
    email: "carpentier.pf@gmail.com",
    phone: "+33 (0) 670 471 017",
    github: "kakwa",
    linkedin: "pfcarpentier",
    address: "114 rue de la Glacière, 75013 Paris",
    positions: (
      "Software Engineer",
      "System Architect",
      "SRE",
    ),
    signature: "Sincerely,",
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
    name: "Google, Inc.",
    street-address: "1600 AMPHITHEATRE PARKWAY",
    city: "MOUNTAIN VIEW, CA 94043",
  ),
)
#let name = text("KIKOO LOL")

#letter-heading(job-position: "Lead SRE", addressee: "Sir or Madame")

#coverletter-content[
  I’m drawn to teams that treat reliability, developer experience, and measurable
  outcomes as first‑class. I thrive in ambiguous spaces and at scale, where
  thoughtful automation and clear SLOs unlock product velocity.

  What I bring:
  - self‑directed, adaptable, and proactive; able to map complex environments into
    clear technical roadmaps
  - a track record of reducing incidents and MTTR without slowing delivery
  - pragmatic platform engineering that removes toil and shortens lead time for
    changes
  - data‑informed cost/performance trade‑offs and clear communication across
    engineering and product

  I believe I would be a strong addition to your team, combining hands‑on
  engineering with pragmatic leadership. I would welcome the opportunity to discuss
  how my experience can help your teams accelerate delivery and improve operational
  excellence. Thank you for your time and consideration.
]


