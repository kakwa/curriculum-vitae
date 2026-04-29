#import "@preview/modern-cv:0.10.0": *

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
      "Site Reliability Engineer",
      "Architecture Système",
    ),
    signature: image("img/signature.svg", format: "svg", width: 150pt),
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

Merci d'examiner ma candidature au poste de POSITION.
Je serais enthousiaste à l'idée de contribuer et d'améliorer PRODUIT.

Étant autonome, curieux, adaptable et habitué à évoluer dans des environnements complexes;
je suis pleinement confiant en ma capacité à monter en compétence et contribuer rapidement
au succès de votre entreprise.

L'informatique va au-delà d'une simple activité professionnelle, c'est aussi pour moi
une passion que je pratique sur mon temps libre aux côtés d'activités de fabrication au sens large
(impression 3D, bricolage, électronique). Cette passion que je partage volontiers via
#link("https://github.com/kakwa")[mes projets open-source publiés sur GitHub], plusieurs #link("https://www.printables.com/@kakwa_3337391")[modèles 3D mis à disposition sur Printables] ou encore au travers de la rédaction #link("https://technically.kakwalab.ovh/")[d'articles plongeant dans ces sujets sur mon blog].

Cette envie de créer constamment, couplée à une grande curiosité, contribue à faire de moi
une personne proactive et toujours à la recherche de solutions, solutions que je n'hésite pas à partager.
Ces qualités, je pense, se traduiront par des contributions tangibles au sein de vos équipes.

Je serais heureux d'échanger avec vous plus en détail afin d'évaluer si mon profil
conviendrait au poste et à votre organisation.
