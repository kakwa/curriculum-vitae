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
  profile-picture: image("img/ID.jpg"),
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
  title: [#link("https://www.adobe.com")[#box(image("img/adobe.svg", height: 12pt))] #h(1pt) - Adobe Inc. - Senior Software Engineer & SRE / Technical Lead],
  location: "Paris, France",
  date: "2020–present",
  description: "Technical lead of a small team focused on internal tooling & core infrastructure services."
)

#resume-item[
  - Agile team management (Scrum Master) & task scheduling,
  - Cross team & cross geo coordination (APAC, US, EU).
  - Architecture, Design and Development of core services (Golang/REST/PostgreSQL/Redis).
  - Internal PM-like role, gathering other team needs, specifying features, and prioritizing implementation.
  - CI/CD pipeline setup & maintenance (Jenkins/Docker/Argo/Kubernetes)
  - Monitoring & Paging setup, alerts definition, handbook, on-call rotation (NewRelic, PagerDuty, Riemann).
  - Data engineering & ETL scripting for data migration and reconciliation (Python).
  - Control Panel, Reporting visualization & Inventory UI development (React/JavaScript/TypeScript).
]

#resume-entry(
  title: [#link("https://www.adobe.com")[#box(image("img/adobe.svg", height: 12pt))] #h(1pt) - Adobe Inc. - SRE/DevOps Engineer],
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
  - Cloud/AWS cost optimization.
  - Cross-geo On-Call & handover procedures (US/India/Ireland/France).
  - Troubleshooting complex product and customer issues.
  - SQL analysis and database optimization (PostgreSQL/RDS).
]

#resume-entry(
  title: [#link("https://www.csgroup.eu/")[#box(image("img/cs-group.svg", height: 12pt))] #h(1pt) - CS Group - System & Integration Engineer],
  location: "Le Plessis Robinson, France",
  date: "2011–2016",
  description: "COTS and custom development integration for complex systems serving public & enterprise clients.",
)

#resume-item[
  - Designed and automated bare-metal & virtualized deployments (Puppet, Kickstart, PXE).
  - Streamlined build, packaging and versioning of custom and third-party software (.deb/.rpm, Jenkins).
  - Deployed & integrated IT services: DNS, mail, directories, and web services (Bind, Postfix, Roundcube, Trac, IRC).
  - Designed HA and replication for SQL, LDAP, and web stacks (nginx, Keepalived, OpenLDAP, MySQL).
  - Developed and maintained automation scripts and operational tooling (Python, Shell, Ruby, Perl).
  - Implemented monitoring and log centralization (Nagios, SNMP, Logstash, RSyslog).
  - Authored installation documentation, reference handbook, and QA procedures (reStructuredText, Testlink).
]

= Projects

#resume-item[
  #cust-project-item([#github-icon #link("https://github.com/kakwa/ldapcherry")[*kakwa/ldapcherry*]], "Directory & IAM management webapp (Python/CherryPy)")
  #cust-project-item([#github-icon #link("https://github.com/wows-tools/wows-depack")[*wows-tools/wows-depack*]], "Reverse-engineering & parsing of proprietary format (C, Doxygen)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/libemf2svg")[*kakwa/libemf2svg*]], "MS EMF vector graphics to SVG format conversion (C)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/pakste")[*kakwa/pakste*]], "Packaging automation framework to build & publish DEB/RPMs (Makefile + shell)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/wows-whaling-simulator")[*kakwa/wows-whaling-simulator*]], "Monte Carlo simulator modeling in-game loot box economics (Golang + React)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/uts-server")[*kakwa/uts-server*]], "RFC-3161 cryptographic timestamp server. (C + OpenSSL)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/puppet-samba")[*kakwa/puppet-samba*]], "Puppet module managing Samba shares & AD DC setups")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/silly-sun-server")[*kakwa/silly-sun-server*]], "SunFire V100 rebuild into a home server (FreeCAD, Golang, Ansible, C, NetBSD)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa?tab=repositories")[*Profile on Github.com*]], "Various other software projects")
  #cust-project-item([#cube-icon #link("https://www.printables.com/@kakwa_3337391/models")[*Profile on Printables.com*]], "Various 3D CAD models")
  #cust-project-item([#blog-icon #link("https://technically.kakwalab.ovh/")[*technically.kakwalab.ovh*]], "Technical Blog")
]

= Internships

#resume-entry(
  title: [#link("https://www.csgroup.eu/")[#box(image("img/cs-group.svg", height: 12pt))] #h(1pt) - Communication & Systèmes],
  location: "Le Plessis Robinson, France",
  date: "2011",
  description: "Implementation of end-to-end encrypted mailing list leveraging X509, S/MIME, RSA proxy re-encryption & key trees."
)

#resume-entry(
  title: [#link("https://www.inria.fr/")[#box(image("img/inria.svg", height: 12pt))] #h(1pt) - INRIA],
  location: "Roquencourt, France",
  date: "2010",
  description: "Within European project IDEAS: implemented website for viewing oriental manuscripts alongside their translations."
)

#resume-entry(
  title: [#link("https://www.ibisc.univ-evry.fr/")[#box(image("img/ibisc.svg", height: 12pt))] #h(1pt) - IBISC],
  location: "Evry, France",
  date: "2009",
  description: "Biological modeling: conception of a cancer tumor propagation model to study PA-1 molecule impact."
)

= Skills

#grid(
  columns: 2,
  gutter: 15pt,
  grid.cell[
    == System
    #cust-resume-skill-item("OS", ("Debian/Ubuntu", "RedHat EL/CentOS", "Gentoo", "FreeBSD"))
    #cust-resume-skill-item("Virtualization", ("ESXi", "VirtualBox", "Docker", "KVM", "LXD", "OpenVZ", "Kubernetes/Argo"))
    #cust-resume-skill-item("Packaging", ("deb", "rpm", "ebuild"))
    #cust-resume-skill-item("Deployment", ("Puppet", "SaltStack", "Ansible", "Kickstart", "Preseed", "Terraform", "Boto", "PXE"))
    #cust-resume-skill-item("Network", ("Keepalived", "OpenVPN", "DHCPd"))
    #cust-resume-skill-item("Cloud", ("AWS", "Azure"))
  ],
  grid.cell[
    == Service
    #cust-resume-skill-item("Web Server", ("Apache", "Lighttpd", "Nginx", "Tomcat"))
    #cust-resume-skill-item("Directory", ("389 Directory", "OpenLDAP", "Samba AD"))
    #cust-resume-skill-item("Misc", ("Bind", "Ntpd", "Cups", "Bacula", "Postfix", "Dovecot", "Samba", "NFS"))
    #cust-resume-skill-item("Monitoring", ("Nagios", "NRPE", "NewRelic", "Logstash", "Snmpd", "OpenTSDB", "Grafana", "CollectD"))
    #cust-resume-skill-item("Database", ("MySQL/MariaDB", "PostgreSQL", "Redis", "DynamoDB", "RDS", "Etcd"))
    #cust-resume-skill-item("Security", ("Syslog-ng", "Rsyslog", "OpenSSH", "Sssd", "IPTables", "PF", "Stunnel"))
    #cust-resume-skill-item("Queueing", ("Kafka", "Redis"))
  ],
  grid.cell[
    == Programming
    #cust-resume-skill-item("Language", ("Golang", "Python", "C", "Shell/Bash", "Javascript", "Perl", "Ocaml"))
    #cust-resume-skill-item("SCM", ("Git", "Subversion", "Mercurial"))
    #cust-resume-skill-item("Framework", ("CherryPy", "Flask", "Echo", "Gorm", "React", "Bootstrap"))
    #cust-resume-skill-item("Specification", ("Swagger/OpenAPI", "UML"))
    #cust-resume-skill-item("Build", ("Make", "CMake", "GCC", "Clang"))
  ],
  grid.cell[
    == Other
    #cust-resume-skill-item("Network Theory", ("Security", "Routing", "QoS", "TCP/IP", "ATM", "MPLS"))
    #cust-resume-skill-item("Computer Sciences", ("Operations research", "Compilation", "Graph Theory", "Data analysis", "UML"))
    #cust-resume-skill-item("Documentation", ("Vim", "reStructuredText", "Markdown", "LaTeX", "LibreOffice"))
    #cust-resume-skill-item("Tools", ("Jira", "Confluence", "Github", "Vim", "Travis-ci", "Jenkins", "Slack"))
    #cust-resume-skill-item("Methodology", ("Agile/Scrum", "MIL-STD-498"))
  ]
)

= Language

#resume-item[
  - French: Native
  - English: Fluent (TOEIC score of 940/990, daily practice)
]

= Education

#resume-entry(
  title: [#link("https://www.sorbonne-universite.fr/")[#box(image("img/sorbonne-university.svg", height: 14pt))] #h(1pt) - Sorbonne Université/UPMC],
  location: "Paris, France",
  date: "2010–2011",
  description: "Master degree in network theory (double degree). Subjects: Routing, QoS, protocols, simulation."
)

#resume-entry(
  title: [#link("https://www.ensiie.fr/")[#box(image("img/ensiie.svg", height: 15pt))] #h(1pt) - Ecole Nationale Supérieure d'Informatique pour l'Industrie et l'Entreprise],
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
  - Tickering: 3D printing & modeling, ElectronicÔRF24X3T6Y7J<F5>K89O0P-=`1123<F5><F6><F7><F8>0=<F10 N4RBE3V2WRFTGYBH`1234567890- - Computer Science: Open source development, personal servers administrationUJIKOML.;/'GYHBN TGYHBGFHDFGVRFGDGDCGØÃVBØ V     .¯7<F5>890=0<F8><F9><F12>
]
