#import "@preview/modern-cv:0.9.0": *

#show: resume.with(
  author: (
    firstname: "Pierre-Francois",
    lastname: "Carpentier",
    email: "carpentier.pf@gmail.com",
    phone: "+33 (0) 670 471 017",
    github: "kakwa",
    linkedin: "pfcarpentier",
    address: "114 rue de la Glacière, 75013 Paris",
    positions: ("Senior Software Engineer, SRE & Architect",),
    custom: (
      (
        text: "Blog",
        icon: "globe",
        link: "https://technically.kakwalab.ovh/",
      ),
      (
        text: "3D Models",
        icon: "cube",
        link: "https://www.printables.com/@kakwa_3337391/models",
      ),
    ),
  ),
  keywords: ("SRE", "DevOps", "Cloud", "Automation", "Kubernetes", "AWS"),
  description: "Senior SRE/DevOps engineer with 8+ years of experience designing and operating large-scale cloud-native infrastructures",
  profile-picture: image("picture/ID.jpg"),
  date: datetime.today().display(),
  language: "en",
  colored-headers: true,
  show-footer: false,
  show-address-icon: true,
  paper-size: "a4"
)

= Experience

#resume-entry(
  title: "Senior Software Engineer / Technical Lead",
  location: "Paris, France",
  date: "2020–present",
  description: "Adobe Inc."
)

Technical lead of a small team focused on internal tooling & core infrastructure services:

#resume-item[
  - Leadership: Agile team management (Scrum Master), multi-geo coordination (APAC, US, EU).
  - Architecture: Design and development of critical services (Golang/REST/PostgreSQL/Redis).
  - Product management: User needs gathering, feature specification, prioritization.
  - DevOps: CI/CD pipeline setup (Jenkins/Docker/Argo), Kubernetes deployment.
  - Observability: NewRelic/PagerDuty monitoring, SOP documentation, performance metrics.
  - Data engineering: Python ETL scripts, data migration, API integration.
  - Frontend: Inventory and admin panel (React/JavaScript).
]

#resume-entry(
  title: "SRE/DevOps Engineer",
  location: "Arcueil, France",
  date: "2016–2020",
  description: "Neolane/Adobe Inc."
)

Adobe Campaign SRE in a large & international (US/India/Ireland/France) operation team, with a focus on automation & complex troubleshooting.

#resume-item[
  - Automation stack/tooling roll-out & maintenance (SaltStack/Ansible/Terraform/CloudFormation).
  - Legacy DC to Cloud (AWS) migration of large marketing & data analytics customer platforms (tooling creation, procedure redaction, execution).
  - Documentation and procedures (Confluence, reStructuredText).
  - Mass Email deliverability setup (SPF/DKIM/DMARC, FBLs).
  - Internal tooling design and development (Python, Golang).
  - CI, unit tests and code coverage (Jenkins/Jenkinsfile/pytest/go test).
  - Cloud/AWS cost optimization
  - Troubleshooting complex product and customer issues.
  - SQL analysis and database optimization (PostgreSQL/RDS).
]

#resume-entry(
  title: "Communication et Systèmes",
  location: "Le Plessis Robinson, France",
  date: "2011–2016",
  description: "System Engineer"
)

#resume-item[
  - Building complex systems for governmental/semi-public clients.
  - Debian/RedHat packaging and repo management (Deb, Rpm, Reprepro, Createrepo, GnuPG). Deliverable industrialization and versioning.
  - CI/CD (Jenkins, scripting). Automatic installation (Puppet/Kickstart/Preseed/PXE).
  - DNS (Bind). Mail (Postfix/Dovecot/Roundcube). Directories/DB (389 Directory/OpenLDAP/MySQL/PostgreSQL).
  - Web servers (Apache, Nginx, Tomcat). HA (SQL/LDAP replication, Apache/Nginx LB, VRRP/Keepalived).
  - Monitoring (Nagios, NRPE, SNMP, Logstash). Virtualization (VMware ESXi, VirtualBox/Vagrant, KVM).
  - Scripting (Python/Shell/Perl/Ruby). Operating manuals (reStructuredText). Test procedures (Testlink).
]

= Projects

#resume-entry(
  title: "LdapCherry",
  location: [#github-link("kakwa/ldapcherry")],
  description: "Directory management webapp (Python/CherryPy)."
)

#resume-entry(
  title: "wows-depack",
  location: [#github-link("wows-tools/wows-depack")],
  description: "Reverse-engineering & Parsing of proprietary file format (C)."
)

#resume-entry(
  title: "libemf2svg",
  location: [#github-link("kakwa/libemf2svg")],
  description: "MS EMF to SVG conversion (C)."
)

#resume-entry(
  title: "Pakste",
  location: [#github-link("kakwa/pakste")],
  description: "deb/rpm packaging framework (Makefile + shell)."
)

#resume-entry(
  title: "wows-whaling-simulator",
  location: [#github-link("kakwa/wows-whaling-simulator")],
  description: "lootbox simulator (Golang + React)."
)

#resume-entry(
  title: "uts-server",
  location: [#github-link("kakwa/uts-server")],
  description: "RFC-3161 cryptographic timestamp server. (C + OpenSSL)"
)

#resume-entry(
  title: "puppet-samba",
  location: [#github-link("kakwa/puppet-samba")],
  description: "Puppet module for Samba."
)

#resume-entry(
  title: "silly-sun-server",
  location: [#github-link("kakwa/silly-sun-server")],
  description: "SunFire V100 rebuild (FreeCAD, Golang, Ansible, C, NetBSD)"
)

#resume-entry(
  title: "Misc Projects",
  location: [#github-link("kakwa?language=&page=1&q=&sort=name&tab=repositories&type=source")],
  description: "Many other smaller projects"
)


=== Internships

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
  title: "Université Pierre et Marie Curie, Paris 6",
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
  - Computer Science: Open source development, personal server administration
]

