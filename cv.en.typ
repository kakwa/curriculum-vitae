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
    positions: ("SRE / Software Engineer / DevOps",)
  ),
  profile-picture: image("picture/ID.jpg"),
  date: datetime.today().display(),
  paper-size: "a4"
)

= Experience

=== Professional Experience

#resume-entry(
  title: "Adobe Inc.",
  location: "Arcueil/Paris, France",
  date: "2016–present",
  description: "SRE/Software Engineer/DevOps"
)

#resume-item[
  - 2020–present — Design and implementation of internal infrastructure tools and services inside the Managed Service Engineering team.
  - Specification, design and implementation of APIs and services (Golang/REST/Swagger/PostgreSQL/Redis).
  - Gathering and analysis of users needs; specification of new features (de-facto PM).
  - Task scheduling and management (Sprint Planning, Jira). Team organization (Scrum Master).
  - Synchronization with US and Indian teams.
  - Monitoring and SOPs (NewRelic/PagerDuty/Confluence).
  - CI/CD management (Jenkins/Docker/Argo). Technical documentation (Confluence).
  - Data import/migration and ETL scripting (Python). Frontend/UI (React/Javascript).
]

#resume-item[
  - 2016–2020 — Adobe Campaign TechOps (SRE): automation and production.
  - Deployment, maintenance and evolution of automation (SaltStack/Ansible/Terraform/Cloudformation). Legacy DC to AWS migration.
  - Documentation and procedures (Confluence, reStructuredText). CI, unit tests and coverage (Jenkins/Jenkinsfile/pytest/go test).
  - AWS cost optimization. Email DNS setup (SPF, DKIM, DMARC, Route53).
  - Tools improving robustness and security (Python, Golang). Synchronization with R&D (DevOps).
  - Monitoring alerts and customer tickets (On-call). Troubleshooting product and customer issues.
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

=== Personal Projects

#resume-entry(
  title: "Various open source projects on GitHub",
  location: "",
  date: "2012–present",
  description: ""
)

#resume-item[
  - Wows-depack — reverse-engineering and implementation of decompression tools for a proprietary archive format (C, CUnit, GitHub Actions).
  - Ldapcherry — webapp to manage users and groups across multiple directories (Python/CherryPy/Bootstrap).
  - Puppet-samba — Puppet module to manage Samba (Puppet, Ruby, Python).
  - Ascii-graph — Python library to print data as ASCII histograms (Python).
  - Wows-whaling-simulator — Drop box simulator (Golang/React/Redis/REST).
  - Libemf2svg — Microsoft EMF to SVG conversion library (C, Valgrind, AFL).
  - Libvisio2svg — Convert Microsoft Visio (VSS/VSD) to SVG (C++).
  - Amkecpak — packaging framework and deb/rpm packages (Makefile, Shell, Pbuilder, Mock).
  - Uts-server — RFC 3161 cryptographic timestamp server (C, OpenSSL).
  - Collectd-opentsdb — CollectD writer module for OpenTSDB (C, Curl).
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
  - 3D Printing: Design and printing of custom parts
  - Computer sciences: Open Source development, server administration
]

