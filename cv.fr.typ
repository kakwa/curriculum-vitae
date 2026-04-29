#import "@preview/modern-cv:0.10.0": *
#import "@preview/swank-tex:0.1.0": *

#let github-icon = box(fa-icon("github", fill: color-darknight))
#let cube-icon = box(fa-icon("cube", fill: color-darknight))
#let blog-icon = box(fa-icon("blog", fill: color-darknight))

#let cust-resume-skill-item(category, items) = {
  set block(below: 0.65em)
  set pad(top: 2pt)

  pad[
    #grid(
      columns: (47fr, 80fr),
      gutter: 10pt,
      category, resume-skill-values(items),
    )
  ]
}

#let cust-project-item(url, description) = {
  set block(below: 0.65em)
  set pad(top: 0pt)

  pad[
    #grid(
      columns: (30fr, 50fr),
      gutter: 0pt,
      url,
      description,
    )
  ]
}

#show: resume.with(
  author: (
    firstname: "Pierre-François",
    lastname: "Carpentier",
    email: "carpentier.pf@gmail.com",
    phone: "06 70 47 10 17",
    github: "kakwa",
    linkedin: "pfcarpentier",
    address: "114 rue de la Glacière, 75013 Paris",
    positions: ("Ingénierie logicielle", "Site Reliabilty Engineer", "Architecture système", "Contributeur open source"),
    custom: (
      (
        text: "tech blog",
        icon: "blog",
        link: "https://technically.kakwalab.ovh/",
      ),
      (
        text: "CAO / impression 3D",
        icon: "cube",
        link: "https://www.printables.com/@kakwa_3337391/models",
      ),
    ),
  ),
  keywords: ("Ingénierie logicielle", "SRE", "DevOps", "Cloud", "Automatisation", "Kubernetes", "AWS", "Python", "Golang", "Open source"),
  description: "Ingénieur SRE/DevOps senior avec 15 ans d'expérience dans la conception, le déploiement et l'exploitation d'infrastructures cloud natives et sur site à grande échelle",
  profile-picture: image("img/ID.jpg"),
  date: datetime.today().display(),
  language: "fr",
  colored-headers: true,
  accent-color: rgb("#239dad"),
  show-footer: false,
  show-address-icon: true,
  paper-size: "a4"
)

= Expérience

#resume-entry(
  title: [#link("https://www.adobe.com")[#box(image("img/adobe.svg", height: 12pt))] #h(1pt) - Ingénieur logiciel, SRE & lead technique],
  location: "Paris, France",
  date: "2020–présent",
  description: [#emph[Adobe Inc.] — Lead technique au sein d'une équipe développant des systèmes d'emailing à fort volume]
)

#resume-item[
  - Coordination d'initiatives inter-régions, produits et équipes (APAC, États-Unis, Europe).
  - Architecture et déploiement de composants pour des plateformes d'emailing à grande échelle (+1 milliard d'envois par jour) (Go, API REST, SQL, Redis).
  - Décomposition de projets en tâches actionnables pour les développeurs, avec suivi d'avancement clair pour la hiérarchie (Scrum, Jira, méthodes agiles, gestion de projet).
  - Conception et réalistion d'interfaces de controles commandes rendant autonomes les consultants délivrabilité, le support et l'exploitation (React, JavaScript, TypeScript).
  - Recueil des besoins, spécification des fonctionnalités et priorisation des roadmaps (product management).
  - Gestion des pipelines CI/CD pour une dizaine de services et composants (Jenkins, Docker, Argo CD, Kubernetes).
  - Scripts ETL pour migration de données et réconciliation d'inventaires (Python).
  - Définition d'alertes, runbooks et politiques d'escalade pour astreinte 24/7 (New Relic, PagerDuty, Riemann).
]

#resume-entry(
  title: [#link("https://www.adobe.com")[#box(image("img/adobe.svg", height: 12pt))] #h(1pt) - Site Reliability Engineer],
  location: "Arcueil, France",
  date: "2016–2020",
  description: [#emph[Adobe Inc.] — SRE/DevOps au sein d'une équipe international opérant des plateformes marketing B2C]
)

#resume-item[
  - Déploiement d'outillage d'automatisation gérant plus de 5000 serveurs (SaltStack, Ansible, Terraform, AWS CloudFormation).
  - Migration datacenter vers cloud de plateformes marketing à fort volume (+2 To) (outillage, procédures, exécution).
  - Configuration SPF/DKIM/DMARC/FBL/PTR pour l'emailing de masse jusqu'à 15 M d'emails/heure et par client.
  - Conception, développement, documentation et distribution d'outillage internes (Python, Go, Confluence, Markdown).
  - Mise en place CI/CD, tests unitaires et mesure de code coverage (pipelines Jenkins, Artifactory, pytest, go test).
  - Recommandations d'optimisation ayant conduit à une réduction d'environ 20 % des coûts AWS.
  - Analyse de requêtes et de schémas DB avec réduction du temps d'exécution d'un facteur 20 ou plus (PostgreSQL, Amazon RDS).
]

#resume-entry(
  title: [#link("https://www.csgroup.eu/")[#box(image("img/cs-group.svg", height: 12pt))] #h(1pt) - Ingénieur système & intégration],
  location: "Le Plessis-Robinson, France",
  date: "2011–2016",
  description: [#emph[CS Group] — Intégration & développement logiciel pour systèmes complexes, secteur public et entreprises.],
)

#resume-item[
  - Conception et automatisation de déploiements bare-metal et virtualisés (Puppet, Kickstart, PXE).
  - Stratégie de redondance et de réplication ciblant une disponibilité de 99,95 % (Nginx, Keepalived, OpenLDAP, MySQL).
  - Rationalisation du build, du packaging et du versioning de logiciels internes et tiers (.deb/.rpm, Jenkins).
  - Déploiement et intégration de services IT : DNS, messagerie, annuaires et services web (BIND, Postfix, Roundcube, Trac, IRC).
  - Développement et maintenance de scripts d'automatisation et d'outils d'exploitation (Python, Shell, Ruby, Perl).
  - Mise en place de supervision et de centralisation de log (Nagios, SNMP, Logstash, rsyslog).
  - Rédaction des procédures d'installation, manuels de référence et fiches de tests QA (reStructuredText, TestLink).
]

= Projets Open Source

#resume-item[
  #cust-project-item([#github-icon #link("https://github.com/kakwa/ldapcherry")[*kakwa/ldapcherry*]], "Application web de gestion d'annuaires et IAM (Python/CherryPy)")
  #cust-project-item([#github-icon #link("https://github.com/wows-tools/wows-depack")[*wows-tools/wows-depack*]], "Rétro‑ingénierie et parsing d'un format propriétaire (C, Doxygen)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/libemf2svg")[*kakwa/libemf2svg*]], "Conversion de graphiques vectoriels MS EMF vers SVG (C)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/pakste")[*kakwa/pakste*]], "Framework de packaging logiciel .deb/.rpm (Makefile + shell)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/wows-whaling-simulator")[*kakwa/wows-whaling-simulator*]], "Simulation Monte‑Carlo interactive de l'économie de loot boxes (Golang + React)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/uts-server")[*kakwa/uts-server*]], "Serveur d'horodatage cryptographique RFC‑3161 (C + OpenSSL)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/puppet-samba")[*kakwa/puppet-samba*]], "Module Puppet pour Samba, avec gestion des partages et controlleur AD")
  #cust-project-item([#github-icon #link("https://github.com/kakwa?tab=repositories")[*Profil sur GitHub.com*]], "Mes autres projets logiciels.")
  #cust-project-item([#cube-icon #link("https://www.printables.com/@kakwa_3337391/models")[*Profil sur Printables.com*]], "Modèles CAO 3D publiés.")
  #cust-project-item([#blog-icon #link("https://technically.kakwalab.ovh/")[*technically.kakwalab.ovh*]], "Blog technique.")
]

= Stages

#resume-entry(
  title: [#link("https://www.csgroup.eu/")[#box(image("img/cs-group.svg", height: 12pt))] #h(1pt) - #text(style: "italic", weight: "regular")[Communication & Systèmes]],
  location: "Le Plessis-Robinson, France",
  date: "2011",
  description: [Conception de mailing list chiffrée de bout en bout basée sur S/MIME, trans‑chiffrement RSA et arbres de clés.]
)

#resume-entry(
  title: [#link("https://www.inria.fr/")[#box(image("img/inria.svg", height: 12pt))] #h(1pt) - #text(style: "italic", weight: "regular")[INRIA]],
  location: "Rocquencourt, France",
  date: "2010",
  description: [Réalisation d'un site web permettant la consultation e manuscrits orientaux aux côtés de leurs traductions.]
)

#resume-entry(
  title: [#link("https://www.ibisc.univ-evry.fr/")[#box(image("img/ibisc.svg", height: 12pt))] #h(1pt) - #text(style: "italic", weight: "regular")[IBISC]],
  location: "Évry, France",
  date: "2009",
  description: [Modélisation biologique de propagation de tumeur pour étudier l'impact de la molécule PA‑1.]
)

= Compétences

#grid(
  columns: 2,
  gutter: 15pt,
  grid.cell[
    == Système
    #cust-resume-skill-item("OS", ("Debian/Ubuntu", "RHEL", "Gentoo", "*BSD"))
    #cust-resume-skill-item("Virtualisation", ("ESXi", "VirtualBox", "Docker", "KVM", "LXD", "Kubernetes"))
    #cust-resume-skill-item("Packaging", ("deb", "rpm", "ebuild", "pkgsrc"))
    #cust-resume-skill-item("Déploiement", ("Puppet", "SaltStack", "Ansible", "Kickstart", "Preseed", "Terraform", "Boto", "PXE"))
    #cust-resume-skill-item("Réseau", ("Keepalived", "OpenVPN", "DHCPd", "Bind"))
    #cust-resume-skill-item("Cloud", ("AWS", "Azure", "OVH"))
  ],
  grid.cell[
    == Services
    #cust-resume-skill-item("Serveur web", ("Apache", "Lighttpd", "Nginx", "Tomcat"))
    #cust-resume-skill-item("Divers", ("OpenLDAP", "ntpd", "CUPS", "Bacula", "Postfix", "Dovecot", "Samba", "NFS"))
    #cust-resume-skill-item("Supervision", ("Nagios", "NewRelic", "Logstash", "snmpd", "Grafana", "collectd"))
    #cust-resume-skill-item("Bases de données", ("MySQL/MariaDB", "PostgreSQL", "DynamoDB", "Amazon RDS", "etcd"))
    #cust-resume-skill-item("Sécurité", ("rsyslog", "OpenSSH", "iptables", "stunnel"))
    #cust-resume-skill-item("Files d'attente", ("Kafka", "Redis"))
  ],
  grid.cell[
    == Programmation
    #cust-resume-skill-item("Langages", ("Golang", "Python", "C", "Shell/Bash", "JavaScript/TypeScript"))
    #cust-resume-skill-item("SCM", ("Git", "Subversion", "Mercurial"))
    #cust-resume-skill-item("Frameworks", ("CherryPy", "Flask", "Echo", "GORM", "React", "Bootstrap"))
    #cust-resume-skill-item("Spécifications", ("Swagger/OpenAPI", "UML"))
    #cust-resume-skill-item("Build", ("Make", "CMake", "Jenkins", "ArgoCD", "Woodpecker CI"))
  ],
  grid.cell[
    == Autre
    #cust-resume-skill-item("Réseaux", ("Sécurité", "Routage", "QoS", "TCP/IP", "ATM", "MPLS"))
    #cust-resume-skill-item("Informatique", ("Recherche opérationnelle", "Théorie des graphes", "Analyse de données"))
    #cust-resume-skill-item("Documentation", ("Vim", "reStructuredText", "Markdown", LaTeX, text(rgb("#239dad"))[#strong[typst]], "LibreOffice"))
    #cust-resume-skill-item("Outils", ("Jira", "Confluence", "GitHub", "Slack"))
    #cust-resume-skill-item("Méthodologie", ("Agile/Scrum", "MIL-STD-498"))
  ]
)

= Langues

#resume-item[
  - 🇫🇷 Français : langue maternelle
  - 🇬🇧 Anglais : courant (TOEIC 940/990 ; usage quotidien)
]

= Formation

#resume-entry(
  title: [#link("https://www.sorbonne-universite.fr/")[#box(image("img/sorbonne-university.svg", height: 14pt))] #h(1pt) - Sorbonne Université/UPMC],
  location: "Paris, France",
  date: "2010–2011",
  description: "Master en théorie des réseaux (double diplôme). routage, QoS, protocoles, simulation."
)

#resume-entry(
  title: [#link("https://www.ensiie.fr/")[#box(image("img/ensiie.svg", height: 15pt))] #h(1pt) - École Nationale Supérieure d'Informatique pour l'Industrie et l'Entreprise],
  location: "Évry, France",
  date: "2008–2011",
  description: "Diplôme d'ingénieur en informatique. développement logiciel, systèmes, réseaux, mathématiques."
)

#resume-entry(
  title: "Lycée de Kerichen",
  location: "Brest, France",
  date: "2005–2008",
  description: "Classe Préparatoire aux Grandes Écoles — Mathématiques, Physique, Informatique."
)

= Centres d'intérêt

#resume-item[
  - Fabrication et partage : impression et modélisation 3D, électronique, développement open source.
  - Musique : pratique de la guitare et du piano.
  - Apprentissage : curiosité pour un large éventail de sujets, des sciences au design, en passant par l'économie ou l'histoire.
]
