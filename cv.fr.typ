#import "@preview/modern-cv:0.9.0": *

#show: resume.with(
  author: (
    firstname: "Pierre-Francois",
    lastname: "Carpentier",
    email: "carpentier.pf@gmail.com",
    phone: "06 70 47 10 17",
    github: "kakwa",
    linkedin: "pfcarpentier",
    address: "114 rue de la Glacière, 75013 Paris",
    positions: ("Développeur & Site Reliability Engineer Senior",)
  ),
  profile-picture: image("picture/ID.jpg"),
  date: datetime.today().display(),
  paper-size: "a4"
)

*= Profil Professionnel*

Ingénieur Logiciel & SRE senior polyvalent avec 12+ ans d'expérience dans la conception et l'exploitation d'infrastructures cloud à grande échelle. Expert en automatisation, observabilité et résilience des systèmes. Contributeur Open Source.

= Expérience

=== Parcours Professionnel

#resume-entry(
  title: "Adobe Inc.",
  location: "Arcueil/Paris, France",
  date: "2016–présent",
  description: "SRE/Ingénieur Logiciel/DevOps"
)

#resume-item[
  - 2020–présent — Lead technique d'une équipe de 3 développeurs (Managed Service Engineering).
  - Leadership : Coordination (Scrum Master), synchronisation multi-géos (APAC, US, EU).
  - Architecture : Conception et développement de services critiques (Golang/REST/PostgreSQL/Redis).
  - Product management : Collecte des besoins, spécification de fonctionnalités, priorisation.
  - DevOps : Pipelines CI/CD (Jenkins/Docker/Argo), déploiement Kubernetes.
  - Observabilité : Supervision NewRelic/PagerDuty, SOPs, métriques de performance.
  - Data engineering : Scripts ETL Python, migration de données, intégrations API.
  - Frontend : Développement d'interfaces (React/JavaScript).
]

#resume-item[
  - 2016–2020 — Adobe Campaign TechOps (SRE) : automatisation et production.
  - Automatisation (SaltStack/Ansible/Terraform/CloudFormation). Migration vers AWS (optimisation coûts −30%).
  - Documentation et procédures (Confluence, reStructuredText). CI, tests unitaires et couverture (Jenkins/Jenkinsfile/pytest/go test).
  - DNS email (SPF/DKIM/DMARC, Route53). Outils de robustesse/sécurité (Python, Golang).
  - Alertes de supervision et tickets clients (astreintes). Investigation de problèmes produits et clients.
  - Analyses/optimisation SQL (PostgreSQL/RDS). Contexte international (US/Inde/Irlande/France).
]

#resume-entry(
  title: "Communication et Systèmes",
  location: "Le Plessis Robinson, France",
  date: "2011–2016",
  description: "Ingénieur Intégrateur"
)

#resume-item[
  - Systèmes complexes pour clients étatiques/parapublics.
  - Packaging Debian/RedHat et gestion de dépôts (Deb, Rpm, Reprepro, Createrepo, GnuPG). Industrialisation et versioning.
  - CI/CD (Jenkins, scripting). Installation automatique (Puppet/Kickstart/Preseed/PXE).
  - DNS (Bind). Messagerie (Postfix/Dovecot/Roundcube). Annuaire/BDD (389 Directory/OpenLDAP/MySQL/PostgreSQL).
  - Serveurs Web (Apache, Nginx, Tomcat). HA (réplication SQL/LDAP, LB Apache/Nginx, VRRP/Keepalived).
  - Supervision (Nagios, NRPE, SNMP, Logstash). Virtualisation (VMware ESXi, VirtualBox/Vagrant, KVM).
  - Scripting (Python/Shell/Perl/Ruby). Manuels d'exploitation (reStructuredText). Fiches de tests (Testlink).
]

=== Projets Open Source & Contributions

#resume-entry(
  title: "Projets Open Source",
  location: "",
  date: "2012–présent",
  description: ""
)

#resume-item[
  - Wows-Depack — Rétro-ingénierie d'outils de compression (C).
  - LdapCherry — Application web de gestion d'annuaires (Python/CherryPy).
  - LibEMF2SVG — Conversion EMF vers SVG (C, OpenSSL).
  - LibVisio2SVG — Conversion Visio vers SVG (C/C++).
  - Pakste — Framework de packaging deb/rpm (Makefile, shell).
  - Wows-Whaling-Simulator — Simulateur web (Golang/React).
  - UTS-Server — Serveur d'horodatage cryptographique RFC-3161.
  - Puppet-Samba — Module Puppet pour Samba.
  - Autres projets — GitHub.
]

=== Stages

#resume-entry(
  title: "Communication et Systèmes",
  location: "Le Plessis Robinson, France",
  date: "2011",
  description: "Intégration/Développement: infrastructure de messagerie sécurisée"
)

#resume-item[
  - Messagerie chiffrée de bout en bout (x509). POC de mailing list chiffrée (N destinataires).
  - Technologies: Linux, S/MIME, x509, Dovecot, Postfix, Thunderbird, LDAP, TLS, C, PolarSSL/MbedTLS.
]

#resume-entry(
  title: "INRIA",
  location: "Roquencourt, France",
  date: "2010",
  description: "Développement web"
)

#resume-item[
  - Projet européen Ideas: site pour manuscrits orientaux et traductions.
  - Technologies: Python, Django, HTML, CSS, Apache, Linux.
]

#resume-entry(
  title: "Laboratoire IBISC",
  location: "Evry, France",
  date: "2009",
  description: "Modélisation biologique: modèle de tumeur"
)

#resume-item[
  - Recherche en bio-informatique. Modèle pour étude de la molécule PA-1.
  - Technologies: C, Doxygen.
]

= Compétences

=== Système

#resume-item[
  - OS: Debian/Ubuntu, RedHat EL/CentOS, Gentoo, FreeBSD
  - Virtualisation: ESXi, VirtualBox, Docker, KVM, LXD, OpenVZ, Kubernetes/Argo
  - Packaging: deb, rpm, ebuild
  - Déploiement: Puppet, SaltStack, Ansible, Kickstart, Preseed, Terraform, Boto, PXE
  - Réseau: Keepalived, OpenVPN, DHCPd — Cloud: AWS, Azure
]

=== Services

#resume-item[
  - Web: Apache, Lighttpd, Nginx, Tomcat — Annuaires: 389 Directory, OpenLDAP, Samba AD
  - BDD: MySQL, PosgreSQL, Redis, DynamoDB, RDS, Etcd — Autres: Bind, Ntpd, Cups, Bacula, Postfix, Dovecot
  - Supervision: Nagios, NRPE, NewRelic, Logstash, Snmpd, OpenTSDB, Grafana, CollectD
  - Sécurité: Syslog-ng, Rsyslog, OpenSSH, Sssd, IPTables, PF, Stunnel
  - FS partagé: Samba, NFS — Queueing: Kafka, Redis
]

=== Programmation

#resume-item[
  - Langages: Golang, Python, C, Shell/Bash, Javascript, Perl, Ocaml — SCM: Git, Subversion, Mercurial
  - Framework: CherryPy, Flask, Echo, Gorm, React, Bootstrap — Spécification: Swagger/OpenAPI
  - Build: Make, CMake, GCC, Clang
]

=== Autre

#resume-item[
  - Théorie des Réseaux: Sécurité, Routage, QoS, TCP/IP, ATM, MPLS — Théorie Info: RO, Compilation, Graphes, Analyse de Données, UML
  - Documentation: reStructuredText, Markdown, LaTeX, LibreOffice — Outils: Jira, Confluence, Github, Gitea, Vim, Travis-ci, Jenkins, Slack, Discord
  - Méthodologie: Agile/Scrum, MIL-STD-498
]

= Langues

#resume-item[
  - Français: Langue maternelle
  - Anglais: Courant (TOEIC 940/990, pratique quotidienne)
  - Espagnol: Notions (Niveau Bac)
]

= Formation

#resume-entry(
  title: "Université Pierre et Marie Curie Paris 6",
  location: "Paris, France",
  date: "2010–2011",
  description: "Master Recherche Réseau (double diplôme). Sécurité, Routage, QoS, protocoles, simulation."
)

#resume-entry(
  title: "ENSIIE",
  location: "Evry, France",
  date: "2008–2011",
  description: "Études d'ingénieur en Informatique. Développement, Système, Réseaux, Mathématiques."
)

#resume-entry(
  title: "Lycée de Kerichen",
  location: "Brest, France",
  date: "2005–2008",
  description: "Classe Préparatoire aux Grandes Écoles — Filière MP."
)

= Centres d'intérêt

#resume-item[
  - Musique: Guitare et piano
  - Électronique: Fabrication et réparation
  - Impression 3D: Conception et impression de pièces, construction d'imprimante
  - Informatique: Développement open source, administration de serveurs personnels
]

