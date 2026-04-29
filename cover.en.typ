#import "@preview/modern-cv:0.10.0": *

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
      "Site Reliability Engineer",
      "System Architecture",
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
    target: "Company Recruitment Team",
    name: "COMPANY",
    street-address: "123 Example Street",
    city: "Anytown, ST 12345",
  ),
)

#letter-heading(job-position: "POSITION", addressee: "Sir or Madam")

Thank you for considering my application for the POSITION role.
I would be excited by the opportunity to contribute to and improve PRODUCT.

As someone who is autonomous, curious, adaptable, and used to working in complex environments;
I am fully confident in my ability to ramp up quickly and contribute to your company's success.

Computer science is more than a job for me. It is also a passion I pursue in my free time
alongside broader maker activities (3D printing, DIY, electronics). I am also glad to share that
passion through #link("https://github.com/kakwa")[my open-source projects on GitHub],
several #link("https://www.printables.com/@kakwa_3337391")[3D models published on Printables],
and #link("https://technically.kakwalab.ovh/")[in-depth articles on these topics on my blog].

This constant drive to create, coupled with a genuine curiosity, helps make me
someone proactive and always looking for solutions, solutions I am happy to share.
I believe these qualities will translate into tangible contributions within your teams.

I would be glad to speak with you in more detail to explore whether my profile would suit
the role and your organization.
