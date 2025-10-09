#import "@preview/modern-cv:0.9.0": *

#let github-icon = box(fa-icon("github", fill: color-darknight))
#let cube-icon = box(fa-icon("cube", fill: color-darknight))
#let blog-icon = box(fa-icon("blog", fill: color-darknight))


#show: resume.with(
  author: (
    firstname: "Pierre-Francois",
    lastname: "Carpentier",
    email: "carpentier.pf@gmail.com",
    phone: "+33 (0) 670 471 017",
    github: "kakwa",
    linkedin: "pfcarpentier",
    address: "114 rue de la Glacière, 75013 Paris",
    positions: ("Senior Software Engineer, SRE & System Architect",),
    custom: (
      (
        text: "blog",
        icon: "blog",
        link: "https://technically.kakwalab.ovh/",
      ),
      (
        text: "CAD/3DP",
        icon: "cube",
        link: "https://www.printables.com/@kakwa_3337391/models",
      ),
    ),
  ),
  keywords: ("SRE", "DevOps", "Cloud", "Automation", "Kubernetes", "AWS"),
  description: "Senior SRE/DevOps engineer with 15 years of experience designing, deploying and operating large-scale cloud-native & on-premise infrastructures",
  profile-picture: image("picture/ID.jpg"),
  date: datetime.today().display(),
  language: "en",
  colored-headers: true,
  accent-color: rgb("#239dad"),
  show-footer: false,
  show-address-icon: true,
  paper-size: "a4"
)

= Experience

#resume-entry(
  title: "Adobe Inc. - Senior Software Engineer & SRE / Technical Lead",
  location: "Paris, France",
  date: "2020–present",
  description: "Technical lead of a small team focused on internal tooling & core infrastructure services."
)

#resume-item[
  - Agile team management (Scrum Master) & task scheduling,
  - cross team & cross geo coordination (APAC, US, EU).
  - Architecture, Design and Development of core services (Golang/REST/PostgreSQL/Redis).
  - Internal PM-like role, gathering other team needs, specifying features, and prioritizing implementation.
  - CI/CD pipeline setup & maintenance (Jenkins/Docker/Argo/Kubernetes)
  - Monitoring & Paging setup, alerts definition, handbook, on-call rotation (NewRelic, PagerDuty, Riemann).
  - Data engineering & ETL scripting for data migration and reconsiliation (python).
  - Control Panel, Reporting visualization & Inventory UI development (React/JavaScript/TypeScript).
]

#resume-entry(
  title: "Adobe Inc. - SRE/DevOps Engineer",
  location: "Arcueil, France",
  date: "2016–2020",
  description: "SRE in an international operation team, with a focus on automation & complex troubleshooting."
)

#resume-item[
  - Automation stack/tooling roll-out & maintenance (SaltStack/Ansible/Terraform/CloudFormation).
  - DC to Cloud migration of large marketing & data analytics platforms (tooling, procedure, execution).
  - Documentation and procedures (Confluence, Markdown, reStructuredText).
  - Mass email deliverability setup (SPF/DKIM/DMARC, FBLs).
  - Internal tooling design, development & distribution (Python, Golang, Artifactory).
  - CI, unit tests and code coverage (Jenkins/Jenkinsfile/pytest/go test).
  - Cloud/AWS cost optimization
  - Cross-geo On-Call & handover procedures (US/India/Ireland/France)
  - Troubleshooting complex product and customer issues.
  - SQL analysis and database optimization (PostgreSQL/RDS).
]

#resume-entry(
  title: "CS Group - System & Integration Engineer",
  location: "Le Plessis Robinson, France",
  date: "2011–2016",
  description: "COTS and custom development integration for complex systems serving public & enterprise clients.",
)

#resume-item[
  - Design and automat bare-metal & virtualized deployments (Puppet, Kickstart, PXE).
  - Streamlined build, packaging and versioning of custom and third-party software (.deb/.rpm, Jenkins).
  - Deploy & integrate IT services: DNS, mail, directories, and web services (Bind, Postfix, Roundcube, Trac, IRC).
  - Implemented high-availability architectures and replication strategies across SQL DBs, LDAP, and at the web layer (nginx, VRRP/Keepalived, OpenLDAP, MySQL).
  - Developed and maintained automation scripts and operational tooling (Python, Shell, Ruby, Perl).
  - Implement monitoring and log centralization  (Nagios, SNMP, Logstash, RSyslog).
  - Authored installation documention, reference handbook, and QA procedures (reStructuredText, Testlink).
]

= Projects

#resume-item[
- #github-icon #link("https://github.com/kakwa/ldapcherry")[*kakwa/ldapcherry*]: Directory management webapp (Python/CherryPy).
- #github-icon #link("https://github.com/wows-tools/wows-depack")[*wows-tools/wows-depack*]: Reverse-engineering & parsing of proprietary format (C, Doxygen).
- #github-icon #link("https://github.com/kakwa/libemf2svg")[*kakwa/libemf2svg*]: MS EMF to SVG conversion (C).
- #github-icon #link("https://github.com/kakwa/pakste")[*kakwa/pakste*]: deb/rpm packaging framework (Makefile + shell).
- #github-icon #link("https://github.com/kakwa/wows-whaling-simulator")[*kakwa/wows-whaling-simulator*]: Lootbox simulator (Golang + React).
- #github-icon #link("https://github.com/kakwa/uts-server")[*kakwa/uts-server*]: RFC-3161 cryptographic timestamp server. (C + OpenSSL)
- #github-icon #link("https://github.com/kakwa/puppet-samba")[*kakwa/puppet-samba*]: Puppet module for Samba.
- #github-icon #link("https://github.com/kakwa/silly-sun-server")[*kakwa/silly-sun-server*]: SunFire V100 rebuild (FreeCAD, Golang, Ansible, C, NetBSD)
- #github-icon #link("https://github.com/kakwa?tab=repositories")[*Profile on Github.com*]: Various other software projects.
- #cube-icon #link("https://www.printables.com/@kakwa_3337391/models")[*Profile on Printables.com*]: Various 3D CAD models.
- #blog-icon #link("https://technically.kakwalab.ovh/")[*technically.kakwalab.ovh*]: My technical blog.
]

= Internships

#resume-entry(
  title: "Communication et Systèmes",
  location: "Le Plessis Robinson, France",
  date: "2011",
  description: "System integration / Software development: secured mail infrastructure conception"
)

#resume-item[
  - End-to-end encrypted mail infrastructure based on x509. POC mailing list with E2E encryption (N recipients).
  - Technologies: Linux, S/MIME, x509, Dovecot, Postfix, Thunderbird, LDAP, TLS, C, PolarSSL/MbedTLS.
]

#resume-entry(
  title: "INRIA",
  location: "Roquencourt, France",
  date: "2010",
  description: "Web development"
)

#resume-item[
  - Within the European project Ideas: website for viewing oriental manuscripts and translations.
  - Technologies: Python, Django, HTML, CSS, Apache, Linux.
]

#resume-entry(
  title: "Laboratoire IBISC",
  location: "Evry, France",
  date: "2009",
  description: "Biological modelization: conception of a cancer tumor model"
)

#resume-item[
  - Bioinformatics research. Model to study PA-1 molecule impact.
  - Technologies: C, Doxygen.
]

= Skills

#resume-skill-item(
  "System",
  (
    "OS: Debian/Ubuntu, RedHat EL/CentOS, Gentoo, FreeBSD",
    "Virtualization: ESXi, VirtualBox, Docker, KVM, LXD, OpenVZ, Kubernetes/Argo",
    "Packaging: deb, rpm, ebuild",
    "Deployment: Puppet, SaltStack, Ansible, Kickstart, Preseed, Terraform, Boto, PXE",
    "Network: Keepalived, OpenVPN, DHCPd",
    "Cloud: AWS, Azure"
  ),
)

#resume-skill-item(
  "Services",
  (
    "Web Server: Apache, Lighttpd, Nginx, Tomcat",
    "Directory: 389 Directory, OpenLDAP, Samba AD",
    "Database: MySQL, PostgreSQL, Redis, DynamoDB, RDS, Etcd",
    "Other: Bind, Ntpd, Cups, Bacula, Postfix, Dovecot",
    "Monitoring: Nagios, NRPE, NewRelic, Logstash, Snmpd, OpenTSDB, Grafana, CollectD",
    "Security: Syslog-ng, Rsyslog, OpenSSH, Sssd, IPTables, PF, Stunnel",
    "Network FS: Samba, NFS",
    "Queueing: Kafka, Redis"
  ),
)

#resume-skill-item(
  "Programming",
  (
    "Language: Golang, Python, C, Shell/Bash, Javascript, Perl, Ocaml",
    "SCM: Git, Subversion, Mercurial",
    "Framework: CherryPy, Flask, Echo, Gorm, React, Bootstrap",
    "Specification: Swagger/OpenAPI",
    "Build: Make, CMake, GCC, Clang"
  ),
)

#resume-skill-item(
  "Other",
  (
    "Network theory: Security, Routing, QoS, TCP/IP, ATM, MPLS",
    "Computer Sciences: Operations research, Compilation, Graph Theory, Data analysis, UML",
    "Documentation: Vim, reStructuredText, Markdown, LaTeX, LibreOffice",
    "Tools: Jira, Confluence, Github, Vim, Travis-ci, Jenkins, Slack",
    "Methodology: Agile/Scrum, MIL-STD-498"
  ),
)

= Language

#resume-item[
  - French: Native (Native language)
  - English: Fluent (TOEIC score of 940/990, daily practice)
  - Spanish: Basic (High school level)
]

= Education

#resume-entry(
  title: "Sorbonne Université - UPMC",
  location: "Paris, France",
  date: "2010–2011",
  description: "Master degree in network theory (double degree). Subjects: Routing, QoS, protocols, simulation."
)

#resume-entry(
  title: "Ecole Nationale Supérieure d'Informatique pour l'Industrie et l'Entreprise",
  location: "Evry, France",
  date: "2008–2011",
  description: "Computer sciences engineering diploma. Software, OS, Network, Mathematics."
)

#resume-entry(
  title: "Lycée de Kerichen",
  location: "Brest, France",
  date: "2005–2008",
  description: "Classe Préparatoire aux Grandes Ecoles — Mathematics, Physics, Computer Sciences."
)

= Personal Interests

#resume-item[
  - Music: Guitar and piano practice
  - Electronic: Building and fixing devices
  - 3D Printing: Design and printing of custom parts, printer construction
  - Computer Science: Open source development, personal servers administration
]

