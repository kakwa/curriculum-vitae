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
      columns: (30fr, 60fr),
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
    positions: ("Ingénieur Logiciel Senior, SRE & Architecte Système",),
    custom: (
      (
        text: "tech blog",
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
  title: [#link("https://www.adobe.com")[#box(image("img/adobe.svg", height: 12pt))] #h(1pt) - Ingénieur Logiciel Senior & SRE / Lead Technique],
  location: "Paris, France",
  date: "2020–présent",
  description: [#emph[Adobe Inc.] — Lead technique d'une équipe dédiée aux outils internes et aux core services d'infrastructure.]
)

#resume-item[
  - Gestion Scrum/Agile d'équipe, organisation et planification des tâches.
  - Coordination inter‑équipes et inter‑régions (APAC, US, EU).
  - Architecture, conception et développement de core services (Golang/REST/PostgreSQL/Redis).
  - Tâches de PM interne : recueil des besoins, spécification des fonctionnalités et priorisation.
  - Mise en place et maintenance des pipelines CI/CD (Jenkins/Docker/Argo/Kubernetes).
  - Supervision et observabilité, définition des alertes, runbooks, rotation d'astreinte (New Relic, PagerDuty, Riemann).
  - Migration et consolidation de données via des scripts ETL.
  - Développement d'UI de configuration, reporting et inventaire (React/JavaScript/TypeScript).
]

#resume-entry(
  title: [#link("https://www.adobe.com")[#box(image("img/adobe.svg", height: 12pt))] #h(1pt) - Ingénieur SRE/DevOps],
  location: "Arcueil, France",
  date: "2016–2020",
  description: [#emph[Adobe Inc.] — SRE & DevOps production, avec un focus sur automatisation et investigations complexes.]
)

#resume-item[
  - Déploiement d'infrastructure et d'outillage d'automatisation (SaltStack/Ansible/Terraform/CloudFormation).
  - Migration de datacenter vers Cloud de plateformes marketing et d'analytics (outils, procédures, exécution).
  - Documentation et procédures (Confluence, Markdown, reStructuredText).
  - Conception et distribution d'outils d'exploitation (Python, Golang, Artifactory).
  - Configuration de la délivrabilité pour l'emailing de masse (SPF/DKIM/DMARC, FBLs).
  - CI, tests unitaires et couverture (Jenkins/Jenkinsfile/pytest/go test).
  - Optimisation des coûts Cloud/AWS.
  - Astreintes multi‑régions et procédures de handover (US/Inde/Irlande/France).
  - Troubleshooting de problèmes complexes d'implémentation clients et bugs produit.
  - Analyse et optimisation de requêtes SQL d'analytiques et tuning des bases de données (PostgreSQL/RDS).
]

#resume-entry(
  title: [#link("https://www.csgroup.eu/")[#box(image("img/cs-group.svg", height: 12pt))] #h(1pt) - Ingénieur Système & Intégration],
  location: "Le Plessis Robinson, France",
  date: "2011–2016",
  description: [#emph[CS Group] — Intégration COTS & développement métier pour systèmes complexes, secteur public et entreprises.]
)

#resume-item[
  - Automatisation de déploiements bare‑metal et virtualisés (Puppet, Kickstart, PXE).
  - Industrialisation du build, packaging et versioning de logiciels tiers et internes (.deb/.rpm, Jenkins).
  - Déploiement et intégration de services IT : DNS, mail, annuaires et web (Bind, Postfix, Roundcube, Trac, IRC).
  - Haute disponibilité et réplication pour stacks SQL, LDAP et web (Nginx, Keepalived, OpenLDAP, MySQL).
  - Développement et maintenance de scripts d'automatisation et d'outils opérationnels (Python, Shell, Ruby, Perl).
  - Mise en place de supervision et centralisation de logs (Nagios, SNMP, Logstash, Rsyslog).
  - Rédaction de documentation d'installation, runbook et fiche de tests (reStructuredText, TestLink).
]

= Projets

#resume-item[
  #cust-project-item([#github-icon #link("https://github.com/kakwa/ldapcherry")[*kakwa/ldapcherry*]], "Application web de gestion d'annuaires et IAM (Python/CherryPy)")
  #cust-project-item([#github-icon #link("https://github.com/wows-tools/wows-depack")[*wows-tools/wows-depack*]], "Rétro‑ingénierie et parsing d'un format propriétaire (C, Doxygen)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/libemf2svg")[*kakwa/libemf2svg*]], "Conversion de graphiques vectoriels MS EMF vers SVG (C)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/pakste")[*kakwa/pakste*]], "Framework de packaging logiciel .deb/.rpm (Makefile + shell)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/wows-whaling-simulator")[*kakwa/wows-whaling-simulator*]], "Simulation Monte‑Carlo interactive de l'économie de loot boxes (Golang + React)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/uts-server")[*kakwa/uts-server*]], "Serveur d'horodatage cryptographique RFC‑3161 (C + OpenSSL)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/puppet-samba")[*kakwa/puppet-samba*]], "Module Puppet pour Samba, avec gestion des partages et du paramétrage d'AD DC")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/silly-sun-server")[*kakwa/silly-sun-server*]], "Restauration d'un SunFire V100 en serveur perso (FreeCAD, Ansible, C, NetBSD)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa?tab=repositories")[*Profil sur GitHub.com*]], "Divers autres projets logiciels")
  #cust-project-item([#cube-icon #link("https://www.printables.com/@kakwa_3337391/models")[*Profil sur Printables.com*]], "Divers modèles 3D")
  #cust-project-item([#blog-icon #link("https://technically.kakwalab.ovh/")[*technically.kakwalab.ovh*]], "Blog technique")
]

= Stages

#resume-entry(
  title: [#link("https://www.csgroup.eu/")[#box(image("img/cs-group.svg", height: 12pt))] #h(1pt) - #text(style: "italic", weight: "regular")[Communication & Systèmes]],
  location: "Le Plessis Robinson, France",
  date: "2011",
  description: [Conception de mailing list chiffrée de bout en bout basée sur X509, S/MIME, trans‑chiffrement RSA et arbres de clés.]
)

#resume-entry(
  title: [#link("https://www.inria.fr/")[#box(image("img/inria.svg", height: 12pt))] #h(1pt) - #text(style: "italic", weight: "regular")[INRIA]],
  location: "Roquencourt, France",
  date: "2010",
  description: [Développement d'un site de visualisation couplée de manuscrits orientaux et leur traduction.]
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
    #cust-resume-skill-item("OS", ("Debian/Ubuntu", "RedHat EL/CentOS", "Gentoo", "FreeBSD", "NetBSD"))
    #cust-resume-skill-item("Virtualisation", ("ESXi", "VirtualBox", "Docker", "KVM", "LXD", "OpenVZ", "Kubernetes/Argo CD"))
    #cust-resume-skill-item("Packaging", ("deb", "rpm", "ebuild", "pkgsrc"))
    #cust-resume-skill-item("Déploiement", ("Puppet", "SaltStack", "Ansible", "Kickstart", "Preseed", "Terraform", "Boto", "PXE"))
    #cust-resume-skill-item("Réseau", ("Keepalived", "OpenVPN", "DHCPd"))
    #cust-resume-skill-item("Cloud", ("AWS", "Azure"))
  ],
  grid.cell[
    == Services
    #cust-resume-skill-item("Serveur web", ("Apache", "Lighttpd", "Nginx", "Tomcat"))
    #cust-resume-skill-item("Annuaire", ("OpenLDAP", "Samba AD"))
    #cust-resume-skill-item("Bases de données", ("MySQL/MariaDB", "PostgreSQL", "DynamoDB", "Amazon RDS", "etcd"))
    #cust-resume-skill-item("Services IT", ("BIND", "ntpd", "CUPS", "Bacula", "Postfix", "Dovecot", "Samba", "NFS"))
    #cust-resume-skill-item("Supervision", ("Nagios", "NRPE", "New Relic", "Logstash", "snmpd", "OpenTSDB", "Grafana", "collectd"))
    #cust-resume-skill-item("Sécurité", ("syslog-ng", "rsyslog", "OpenSSH", "SSSD", "iptables", "PF", "stunnel"))
    #cust-resume-skill-item("Queues", ("Kafka", "Redis"))
  ],
  grid.cell[
    == Programmation
    #cust-resume-skill-item("Langages", ("Golang", "Python", "C", "Shell/Bash", "Javascript", "Perl", "Ocaml"))
    #cust-resume-skill-item("SCM", ("Git", "Subversion", "Mercurial"))
    #cust-resume-skill-item("Frameworks", ("CherryPy", "Flask", "Echo", "GORM", "React", "Bootstrap"))
    #cust-resume-skill-item("Spécifications", ("Swagger/OpenAPI", "UML"))
    #cust-resume-skill-item("Build", ("Make", "CMake", "GCC", "Clang"))
  ],
  grid.cell[
    == Autre
    #cust-resume-skill-item("Théorie Réseau", ("Sécurité", "Routage", "QoS", "TCP/IP", "ATM", "MPLS"))
    #cust-resume-skill-item("Informatique", ("Recherche opérationnelle", "Compilation", "Théorie des graphes", "Analyse de données", "UML"))
    #cust-resume-skill-item("Documentation", ("Vim", "reStructuredText", "Markdown", "LaTeX", "LibreOffice"))
    #cust-resume-skill-item("Outils", ("Jira", "Confluence", "GitHub", "Vim", "Travis CI", "Jenkins", "Slack"))
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
  description: "Master en théorie des réseaux (double diplôme). Sujets : routage, QoS, protocoles, simulation."
)

#resume-entry(
  title: [#link("https://www.ensiie.fr/")[#box(image("img/ensiie.svg", height: 15pt))] #h(1pt) - École Nationale Supérieure d'Informatique pour l'Industrie et l'Entreprise],
  location: "Évry, France",
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
  - Fabrication et partage: Impression et modélisation 3D, Électronique, code Open Source.
  - Musique: Pratique de la guitare et du piano.
  - Apprendre : curiosité générale sur un large éventail de sujets, des sciences à l'histoire en passant par l'économie ou le design.
]

