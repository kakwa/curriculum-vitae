#import "@preview/modern-cv:0.9.0": *

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
    firstname: "Pierre-Francois",
    lastname: "Carpentier",
    email: "carpentier.pf@gmail.com",
    phone: "06 70 47 10 17",
    github: "kakwa",
    linkedin: "pfcarpentier",
    address: "114 rue de la Glacière, 75013 Paris",
    positions: ("Ingénieur Logiciel Senior, SRE & Architecte Système",),
    custom: (
      (
        text: "blog",
        icon: "blog",
        link: "https://technically.kakwalab.ovh/",
      ),
      (
        text: "CAO/Impression 3D",
        icon: "cube",
        link: "https://www.printables.com/@kakwa_3337391/models",
      ),
    ),
  ),
  keywords: ("SRE", "DevOps", "Cloud", "Automatisation", "Kubernetes", "AWS"),
  description: "Ingénieur SRE/DevOps senior avec 15 ans d'expérience dans la conception, le déploiement et l'exploitation d'infrastructures cloud-native et on‑premise à grande échelle",
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
  title: [#link("https://www.adobe.com")[#box(image("img/adobe.svg", height: 12pt))] #h(1pt) - Adobe Inc. - Ingénieur Logiciel Senior & SRE / Lead Technique],
  location: "Paris, France",
  date: "2020–présent",
  description: "Lead technique d'une petite équipe dédiée aux outils internes et aux services d'infrastructure cœur."
)

#resume-item[
  - Gestion agile d'équipe (Scrum Master) et planification des tâches,
  - Coordination inter‑équipes et inter‑régions (APAC, US, EU).
  - Architecture, conception et développement de services cœur (Golang/REST/PostgreSQL/Redis).
  - Rôle interne de type PM: recueil des besoins, spécification des fonctionnalités et priorisation.
  - Mise en place et maintenance des pipelines CI/CD (Jenkins/Docker/Argo/Kubernetes)
  - Supervision et astreinte: définition des alertes, runbook, rotation d'astreinte (NewRelic, PagerDuty, Riemann).
  - Ingénierie des données et scripts ETL pour migration et rapprochement (Python).
  - Développement d'UI de contrôle, reporting et inventaire (React/JavaScript/TypeScript).
]

#resume-entry(
  title: [#link("https://www.adobe.com")[#box(image("img/adobe.svg", height: 12pt))] #h(1pt) - Adobe Inc. - Ingénieur SRE/DevOps],
  location: "Arcueil, France",
  date: "2016–2020",
  description: "SRE dans une équipe internationale d'exploitation, avec un focus sur l'automatisation et le troubleshooting complexe."
)

#resume-item[
  - Déploiement et maintenance de la stack/outillage d'automatisation (SaltStack/Ansible/Terraform/CloudFormation).
  - Migration datacenter → Cloud de plateformes marketing et d'analytics (outils, procédures, exécution).
  - Documentation et procédures (Confluence, Markdown, reStructuredText).
  - Conception et distribution d'outils internes (Python, Golang, Artifactory).
  - CI, tests unitaires et couverture (Jenkins/Jenkinsfile/pytest/go test).
  - Optimisation des coûts Cloud/AWS.
  - Astreintes multi‑régions et procédures de handover (US/Inde/Irlande/France).
  - Troubleshooting de problèmes produit et clients complexes.
  - Analyses SQL et optimisation de bases (PostgreSQL/RDS).
]

#resume-entry(
  title: [#link("https://www.csgroup.eu/")[#box(image("img/cs-group.svg", height: 12pt))] #h(1pt) - CS Group - Ingénieur Système & Intégration],
  location: "Le Plessis Robinson, France",
  date: "2011–2016",
  description: "Intégration de COTS et développements spécifiques pour systèmes complexes, secteur public et entreprises."
)

#resume-item[
  - Conception et automatisation de déploiements bare‑metal et virtualisés (Puppet, Kickstart, PXE).
  - Industrialisation du build, packaging et versioning de logiciels tiers/maison (.deb/.rpm, Jenkins).
  - Déploiement et intégration de services IT: DNS, mail, annuaires et web (Bind, Postfix, Roundcube, Trac, IRC).
  - Haute disponibilité et réplication pour stacks SQL, LDAP et web (nginx, Keepalived, OpenLDAP, MySQL).
  - Développement et maintenance de scripts d'automatisation et d'outils opérationnels (Python, Shell, Ruby, Perl).
  - Mise en place de supervision et centralisation de logs (Nagios, SNMP, Logstash, RSyslog).
  - Rédaction de documentation d'installation, runbook et procédures QA (reStructuredText, Testlink).
]

= Projets

#resume-item[
  #cust-project-item([#github-icon #link("https://github.com/kakwa/ldapcherry")[*kakwa/ldapcherry*]], "Application web de gestion d'annuaires et IAM (Python/CherryPy)")
  #cust-project-item([#github-icon #link("https://github.com/wows-tools/wows-depack")[*wows-tools/wows-depack*]], "Rétro‑ingénierie et parsing d'un format propriétaire (C, Doxygen)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/libemf2svg")[*kakwa/libemf2svg*]], "Conversion de graphiques vectoriels MS EMF vers SVG (C)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/pakste")[*kakwa/pakste*]], "Framework d'automatisation de packaging pour construire/publier des DEB/RPM (Makefile + shell)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/wows-whaling-simulator")[*kakwa/wows-whaling-simulator*]], "Simulateur Monte‑Carlo modélisant l'économie de loot boxes (Golang + React)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/uts-server")[*kakwa/uts-server*]], "Serveur d'horodatage cryptographique RFC‑3161 (C + OpenSSL)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/puppet-samba")[*kakwa/puppet-samba*]], "Module Puppet pour gérer les partages Samba et un AD DC")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/silly-sun-server")[*kakwa/silly-sun-server*]], "Reconstruction d'un SunFire V100 en serveur perso (FreeCAD, Golang, Ansible, C, NetBSD)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa?tab=repositories")[*Profil sur Github.com*]], "Divers autres projets logiciels")
  #cust-project-item([#cube-icon #link("https://www.printables.com/@kakwa_3337391/models")[*Profil sur Printables.com*]], "Divers modèles 3D")
  #cust-project-item([#blog-icon #link("https://technically.kakwalab.ovh/")[*technically.kakwalab.ovh*]], "Blog technique")
]

= Stages

#resume-entry(
  title: [#link("https://www.csgroup.eu/")[#box(image("img/cs-group.svg", height: 12pt))] #h(1pt) - Communication & Systèmes],
  location: "Le Plessis Robinson, France",
  date: "2011",
  description: "Mise en œuvre d'une mailing list chiffrée de bout en bout basée sur X509, S/MIME, re‑chiffrement par proxy RSA et arbres de clés."
)

#resume-entry(
  title: [#link("https://www.inria.fr/")[#box(image("img/inria.svg", height: 12pt))] #h(1pt) - INRIA],
  location: "Roquencourt, France",
  date: "2010",
  description: "Dans le cadre du projet européen IDEAS: développement d'un site de visualisation de manuscrits orientaux avec leurs traductions."
)

#resume-entry(
  title: [#link("https://www.ibisc.univ-evry.fr/")[#box(image("img/ibisc.svg", height: 12pt))] #h(1pt) - IBISC],
  location: "Evry, France",
  date: "2009",
  description: "Modélisation biologique: conception d'un modèle de propagation de tumeur pour étudier l'impact de la molécule PA‑1."
)

= Compétences

#grid(
  columns: 2,
  gutter: 15pt,
  grid.cell[
    == Système
    #cust-resume-skill-item("OS", ("Debian/Ubuntu", "RedHat EL/CentOS", "Gentoo", "FreeBSD"))
    #cust-resume-skill-item("Virtualisation", ("ESXi", "VirtualBox", "Docker", "KVM", "LXD", "OpenVZ", "Kubernetes/Argo"))
    #cust-resume-skill-item("Packaging", ("deb", "rpm", "ebuild"))
    #cust-resume-skill-item("Déploiement", ("Puppet", "SaltStack", "Ansible", "Kickstart", "Preseed", "Terraform", "Boto", "PXE"))
    #cust-resume-skill-item("Réseau", ("Keepalived", "OpenVPN", "DHCPd"))
    #cust-resume-skill-item("Cloud", ("AWS", "Azure"))
  ],
  grid.cell[
    == Services
    #cust-resume-skill-item("Serveur Web", ("Apache", "Lighttpd", "Nginx", "Tomcat"))
    #cust-resume-skill-item("Annuaire", ("389 Directory", "OpenLDAP", "Samba AD"))
    #cust-resume-skill-item("Divers", ("Bind", "Ntpd", "Cups", "Bacula", "Postfix", "Dovecot", "Samba", "NFS"))
    #cust-resume-skill-item("Supervision", ("Nagios", "NRPE", "NewRelic", "Logstash", "Snmpd", "OpenTSDB", "Grafana", "CollectD"))
    #cust-resume-skill-item("Bases de données", ("MySQL/MariaDB", "PostgreSQL", "Redis", "DynamoDB", "RDS", "Etcd"))
    #cust-resume-skill-item("Sécurité", ("Syslog-ng", "Rsyslog", "OpenSSH", "Sssd", "IPTables", "PF", "Stunnel"))
    #cust-resume-skill-item("File d'attente", ("Kafka", "Redis"))
  ],
  grid.cell[
    == Programmation
    #cust-resume-skill-item("Langage", ("Golang", "Python", "C", "Shell/Bash", "Javascript", "Perl", "Ocaml"))
    #cust-resume-skill-item("SCM", ("Git", "Subversion", "Mercurial"))
    #cust-resume-skill-item("Framework", ("CherryPy", "Flask", "Echo", "Gorm", "React", "Bootstrap"))
    #cust-resume-skill-item("Spécification", ("Swagger/OpenAPI", "UML"))
    #cust-resume-skill-item("Build", ("Make", "CMake", "GCC", "Clang"))
  ],
  grid.cell[
    == Autre
    #cust-resume-skill-item("Théorie des Réseaux", ("Sécurité", "Routage", "QoS", "TCP/IP", "ATM", "MPLS"))
    #cust-resume-skill-item("Informatique", ("Recherche opérationnelle", "Compilation", "Théorie des graphes", "Analyse de données", "UML"))
    #cust-resume-skill-item("Documentation", ("Vim", "reStructuredText", "Markdown", "LaTeX", "LibreOffice"))
    #cust-resume-skill-item("Outils", ("Jira", "Confluence", "Github", "Vim", "Travis-ci", "Jenkins", "Slack"))
    #cust-resume-skill-item("Méthodologie", ("Agile/Scrum", "MIL-STD-498"))
  ]
)

= Langues

#resume-item[
  - Français: Langue maternelle
  - Anglais: Courant (TOEIC 940/990, pratique quotidienne)
]

= Formation

#resume-entry(
  title: [#link("https://www.sorbonne-universite.fr/")[#box(image("img/sorbonne-university.svg", height: 14pt))] #h(1pt) - Sorbonne Université/UPMC],
  location: "Paris, France",
  date: "2010–2011",
  description: "Master en théorie des réseaux (double diplôme). Sujets: Routage, QoS, protocoles, simulation."
)

#resume-entry(
  title: [#link("https://www.ensiie.fr/")[#box(image("img/ensiie.svg", height: 15pt))] #h(1pt) - École Nationale Supérieure d'Informatique pour l'Industrie et l'Entreprise],
  location: "Evry, France",
  date: "2008–2011",
  description: "Diplôme d'ingénieur en informatique. Logiciel, Systèmes, Réseaux, Mathématiques."
)

#resume-entry(
  title: "Lycée de Kerichen",
  location: "Brest, France",
  date: "2005–2008",
  description: "Classe Préparatoire aux Grandes Écoles — Mathématiques, Physique, Informatique."
)

= Centres d'intérêt

#resume-item[
  - Musique: Pratique de la guitare et du piano
  - Bricolage: Impression 3D et modélisation, Électronique 
  - Informatique: Développement open source, administration de serveurs personnels
]

