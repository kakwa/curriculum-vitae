#import "@preview/modern-cv:0.9.0": *

#show: coverletter.with(
  author: (
    firstname: "Pierre-François",
    lastname: "Carpentier",
    email: "carpentier.pf@gmail.com",
    phone: "06 70 47 10 17",
    github: "kakwa",
    linkedin: "pfcarpentier",
    address: "114 rue de la Glacière, 75013 Paris",
    positions: (
      "Ingénieur Logiciel",
      "SRE",
      "Architecture Système",
    ),
    signature: "Cordialement,",
  ),
  language: "fr",
  date: datetime.today().display(),
  paper-size: "a4",
  accent-color: rgb("#239dad"),
  show-footer: false,
  show-address-icon: true,
  profile-picture: none,
)

#hiring-entity-info(
  entity-info: (
    target: "Responsable du recrutement",
    name: "COMPANY",
    street-address: "123 Example Street",
    city: "Anytown, ST 12345",
  ),
)

#letter-heading(job-position: "POSITION", addressee: "Madame, Monsieur")

#coverletter-content[
  Merci d’examiner ma candidature au poste de POSITION chez COMPANY.
  Je serais enthousiaste à l’idée de contribuer et d’améliorer EXEMPLE.
]
#coverletter-content[
  Je suis autonome, curieux, adaptable et habitué à évoluer dans des environnements complexes;
  je suis donc confiant dans ma capacité à monter en compétence et contribuer rapidement au succès de
  votre entreprise.
]

#coverletter-content[
  L’informatique est pour moi plus qu’une activité professionnelle, c’est aussi
  loisir que je pratique sur mon temps libre, aux côtés d’activités de fabrication
  (impression 3D, bricolage, électronique). Je suis le créateur et mainteneur
  de #link("https://github.com/kakwa")[plusieurs petits projets open‑source], et je me suis récemment intéressé à la
  #link("https://www.printables.com/@kakwa_3337391")[modélisation 3D (CAO)] ainsi
  qu’à la rédaction #link("https://technically.kakwalab.ovh/")[d'articles techniques].
  N’hésitez pas à consulter ces projets.
]

#coverletter-content[
  Cette envie de créer, couplé à une grande curiosité contribue à me rendre proactif
  et un meilleur problem-solver, des qualités qui, je le crois,
  se traduiraient par des contributions concrètes au sein de votre équipe.
]
#coverletter-content[
  Je serais heureux d’échanger avec vous afin d’évaluer mon adéquation avec
  votre organisation.
]


