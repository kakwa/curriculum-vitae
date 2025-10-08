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
    positions: ("Senior Site Reliability Engineer & DevOps Architect",)
  ),
  profile-picture: image("picture/ID.jpg"),
  date: datetime.today().display(),
  paper-size: "a4"
)

*= Professional Summary*

Senior SRE/DevOps engineer with 8+ years of experience designing and operating large-scale cloud-native infrastructures. Expert in automation, observability, and system resilience. Technical leader who has managed international teams and contributed to open source. Specialized in cloud migration, cost optimization, and continuous improvement of DevOps processes.

= Experience

=== Professional Experience

#resume-entry(
  title: "Adobe Inc.",
  location: "Arcueil/Paris, France",
  date: "2016–present",
  description: "SRE/Software Engineer/DevOps"
)

#resume-item[
  - 2020–present — Technical lead of a 3-developer team in "Managed Service Engineering".
  - Leadership: Agile team management (Scrum Master), multi-geo coordination (APAC, US, EU).
  - Architecture: Design and development of critical services (Golang/REST/PostgreSQL/Redis).
  - Product management: User needs gathering, feature specification, prioritization.
  - DevOps: CI/CD pipeline setup (Jenkins/Docker/Argo), Kubernetes deployment.
  - Observability: NewRelic/PagerDuty monitoring, SOP documentation, performance metrics.
  - Data engineering: Python ETL scripts, data migration, API integration.
  - Frontend: User interface development (React/JavaScript).
]

#resume-item[
  - 2016–2020 — Adobe Campaign TechOps (SRE): automation and production.
  - Deployment, maintenance and evolution of automation (SaltStack/Ansible/Terraform/CloudFormation). Legacy DC to AWS migration (cost optimization −30%).
  - Documentation and procedures (Confluence, reStructuredText). CI, unit tests and coverage (Jenkins/Jenkinsfile/pytest/go test).
  - Email DNS setup (SPF/DKIM/DMARC, Route53). Tools improving robustness and security (Python, Golang).
  - Monitoring alerts and customer tickets (on-call). Troubleshooting product and customer issues.
  - SQL analysis and optimization (PostgreSQL/RDS). International context (US/India/Ireland/France).
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

=== Open Source Projects & Contributions

#resume-entry(
  title: "Various open source projects on GitHub",
  location: "",
  date: "2012–present",
  description: ""
)

#resume-item[
  - Wows-depack — Reverse-engineering of compression tools (C, 50+ stars).
  - Ldapcherry — Directory management webapp (Python/CherryPy).
  - Libemf2svg — EMF to SVG conversion (C, OpenSSL).
  - Libvisio2svg — Visio to SVG conversion (C/C++).
  - Pakste — deb/rpm packaging framework (Makefile, shell).
  - Wows-whaling-simulator — Web simulator (Golang/React).
  - Uts-server — RFC 3161 cryptographic timestamp server.
  - Puppet-samba — Puppet module for Samba.
  - Other projects — GitHub.
]

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

=== System

#resume-item[
  - OS: Debian/Ubuntu, RedHat EL/CentOS, Gentoo, FreeBSD
  - Virtualization: ESXi, VirtualBox, Docker, KVM, LXD, OpenVZ, Kubernetes/Argo
  - Packaging: deb, rpm, ebuild
  - Deployment: Puppet, SaltStack, Ansible, Kickstart, Preseed, Terraform, Boto, PXE
  - Network: Keepalived, OpenVPN, DHCPd
  - Cloud: AWS, Azure
]

=== Services

#resume-item[
  - Web: Apache, Lighttpd, Nginx, Tomcat — Directory: 389 Directory, OpenLDAP, Samba AD
  - DB: MySQL, PosgreSQL, Redis, DynamoDB, RDS, Etcd — Other: Bind, Ntpd, Cups, Bacula, Postfix, Dovecot
  - Monitoring: Nagios, NRPE, NewRelic, Logstash, Snmpd, OpenTSDB, Grafana, CollectD
  - Security: Syslog-ng, Rsyslog, OpenSSH, Sssd, IPTables, PF, Stunnel
  - Network FS: Samba, NFS — Queueing: Kafka, Redis
]

=== Programming

#resume-item[
  - Languages: Golang, Python, C, Shell/Bash, Javascript, Perl, Ocaml — SCM: Git, Subversion, Mercurial
  - Frameworks: CherryPy, Flask, Echo, Gorm, React, Bootstrap — Specification: Swagger/OpenAPI
  - Build: Make, CMake, GCC, Clang
]

=== Other

#resume-item[
  - Network theory: Security, Routing, QoS, TCP/IP, ATM, MPLS — Computer Sciences: OR, Compilation, Graph Theory, Data analysis, UML
  - Documentation: Vim, reStructuredText, Markdown, LaTeX, LibreOffice
  - Tools: Jira, Confluence, Github, Vim, Travis-ci, Jenkins, Slack — Methodology: Agile/Scrum, MIL-STD-498
]

= Language

#resume-item[
  - French: Native (Native language)
  - English: Fluent (TOEIC 940/990, daily practice)
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

