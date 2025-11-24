#import "@preview/modern-cv:0.9.0": *
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
        text: "CAD/3D Printing",
        icon: "cube",
        link: "https://www.printables.com/@kakwa_3337391/models",
      ),
    ),
  ),
  keywords: ("SRE", "DevOps", "Cloud", "Automation", "Kubernetes", "AWS"),
  description: "Senior SRE/DevOps engineer with 15 years of experience designing, deploying, and operating large-scale cloud-native and on-premises infrastructures",
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
  title: [#link("https://www.adobe.com")[#box(image("img/adobe.svg", height: 12pt))] #h(1pt) - Senior Software Engineer & SRE / Technical Lead],
  location: "Paris, France",
  date: "2020–present",
  description: [#emph[Adobe Inc.] — Technical lead of a team focused on internal tooling & core infrastructure services.]
)

#resume-item[
  - Agile team management (Scrum Master) and tasks organization & scheduling.
  - Coordinate cross-team and cross-geo initiatives (APAC, US, EU).
  - Architect, design, and develop core services (Go/REST/PostgreSQL/Redis).
  - Act as internal PM to gather requirements, define features, and prioritize delivery.
  - Build and maintain CI/CD pipelines (Jenkins, Docker, Argo CD, Kubernetes).
  - Define monitoring and paging: alerts, runbooks, on-call rotations (New Relic, PagerDuty, Riemann).
  - Develop data engineering and ETL scripts for migration and reconciliation (Python).
  - Build control panels, reporting, and inventory UIs (React, JavaScript, TypeScript).
]

#resume-entry(
  title: [#link("https://www.adobe.com")[#box(image("img/adobe.svg", height: 12pt))] #h(1pt) - SRE/DevOps Engineer],
  location: "Arcueil, France",
  date: "2016–2020",
  description: [#emph[Adobe Inc.] — SRE in an international operation team, with a focus on automation & complex troubleshooting.]
)

#resume-item[
  - Rolled out and maintained automation tooling (SaltStack, Ansible, Terraform, AWS CloudFormation).
  - DC-to-cloud migration of large marketing and analytics platforms (tooling, procedures, execution).
  - Wrote documentation and operational procedures (Confluence, Markdown, reStructuredText).
  - Configured mass emailling deliverability (SPF, DKIM, DMARC; feedback loops).
  - Designed, developed, and distributed internal tooling (Python, Go, Artifactory).
  - Implemented CI, unit testing, and coverage (Jenkins pipelines, pytest, go test).
  - Optimized AWS costs.
  - Established cross-geo on-call handover procedures (US, India, Ireland, France).
  - Troubleshot complex product and customer's implementation issues.
  - Analyzed and optimized analytics SQL queries and tuned databases (PostgreSQL, Amazon RDS).
]

#resume-entry(
  title: [#link("https://www.csgroup.eu/")[#box(image("img/cs-group.svg", height: 12pt))] #h(1pt) - System & Integration Engineer],
  location: "Le Plessis Robinson, France",
  date: "2011–2016",
  description: [#emph[CS Group] — COTS and custom development integration for complex systems serving public & enterprise clients.],
)

#resume-item[
  - Designed and automated bare-metal & virtualized deployments (Puppet, Kickstart, PXE).
  - Streamlined build, packaging and versioning of custom and third-party software (.deb/.rpm, Jenkins).
  - Deployed & integrated IT services: DNS, mail, directories, and web services (BIND, Postfix, Roundcube, Trac, IRC).
  - Designed HA and replication for SQL, LDAP, and web stacks (Nginx, Keepalived, OpenLDAP, MySQL).
  - Developed and maintained automation scripts and operational tooling (Python, Shell, Ruby, Perl).
  - Implemented monitoring and log centralization (Nagios, SNMP, Logstash, rsyslog).
  - Authored installation documentation, reference handbook, and QA procedures (reStructuredText, TestLink).
]

= Projects

#resume-item[
  #cust-project-item([#github-icon #link("https://github.com/kakwa/ldapcherry")[*kakwa/ldapcherry*]], "Directory and IAM management web app (Python, CherryPy)")
  #cust-project-item([#github-icon #link("https://github.com/wows-tools/wows-depack")[*wows-tools/wows-depack*]], "Reverse-engineering and parsing of a proprietary format (C, Doxygen)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/libemf2svg")[*kakwa/libemf2svg*]], "Microsoft EMF vector graphics to SVG conversion (C)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/pakste")[*kakwa/pakste*]], "Packaging framework to build and publish DEB/RPMs (Makefile + Shell)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/wows-whaling-simulator")[*kakwa/wows-whaling-simulator*]], "Monte Carlo simulator modeling in-game loot box economics (Go + React)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/uts-server")[*kakwa/uts-server*]], "RFC-3161 cryptographic timestamp server (C, OpenSSL)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/puppet-samba")[*kakwa/puppet-samba*]], "Puppet module managing Samba shares and AD DC setups")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/silly-sun-server")[*kakwa/silly-sun-server*]], "Sun Fire V100 rebuild into a home server (FreeCAD, Go, Ansible, C, NetBSD)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa?tab=repositories")[*Profile on GitHub.com*]], "Various other software projects")
  #cust-project-item([#cube-icon #link("https://www.printables.com/@kakwa_3337391/models")[*Profile on Printables.com*]], "Various 3D CAD models")
  #cust-project-item([#blog-icon #link("https://technically.kakwalab.ovh/")[*technically.kakwalab.ovh*]], "Technical Blog")
]

= Internships

#resume-entry(
  title: [#link("https://www.csgroup.eu/")[#box(image("img/cs-group.svg", height: 12pt))] #h(1pt) - #text(style: "italic", weight: "regular")[Communication & Systèmes]],
  location: "Le Plessis Robinson, France",
  date: "2011",
  description: [Implementation of end-to-end encrypted mailing list leveraging X509, S/MIME, RSA proxy re-encryption & key trees.]
)

#resume-entry(
  title: [#link("https://www.inria.fr/")[#box(image("img/inria.svg", height: 12pt))] #h(1pt) - #text(style: "italic", weight: "regular")[INRIA]],
  location: "Roquencourt, France",
  date: "2010",
  description: [Built a website to view oriental manuscripts alongside their translations.]
)

#resume-entry(
  title: [#link("https://www.ibisc.univ-evry.fr/")[#box(image("img/ibisc.svg", height: 12pt))] #h(1pt) - #text(style: "italic", weight: "regular")[IBISC]],
  location: "Evry, France",
  date: "2009",
  description: [Biological modeling: developed a cancer tumor propagation model to study PA-1 molecule impact.]
)

= Skills

#grid(
  columns: 2,
  gutter: 15pt,
  grid.cell[
    == System
    #cust-resume-skill-item("OS", ("Debian/Ubuntu", "RedHat EL/CentOS", "Gentoo", "FreeBSD", "NetBSD"))
    #cust-resume-skill-item("Virtualization", ("ESXi", "VirtualBox", "Docker", "KVM", "LXD", "OpenVZ", "Kubernetes/Argo CD"))
    #cust-resume-skill-item("Packaging", ("deb", "rpm", "ebuild", "pkgsrc"))
    #cust-resume-skill-item("Deployment", ("Puppet", "SaltStack", "Ansible", "Kickstart", "Preseed", "Terraform", "Boto", "PXE"))
    #cust-resume-skill-item("Network", ("Keepalived", "OpenVPN", "DHCPd"))
    #cust-resume-skill-item("Cloud", ("AWS", "Azure"))
  ],
  grid.cell[
    == Service
    #cust-resume-skill-item("Web Server", ("Apache", "Lighttpd", "Nginx", "Tomcat"))
    #cust-resume-skill-item("Directory", ("OpenLDAP", "Samba AD"))
    #cust-resume-skill-item("Misc", ("BIND", "ntpd", "CUPS", "Bacula", "Postfix", "Dovecot", "Samba", "NFS"))
    #cust-resume-skill-item("Monitoring", ("Nagios", "NRPE", "New Relic", "Logstash", "snmpd", "OpenTSDB", "Grafana", "collectd"))
    #cust-resume-skill-item("Database", ("MySQL/MariaDB", "PostgreSQL", "DynamoDB", "Amazon RDS", "etcd"))
    #cust-resume-skill-item("Security", ("syslog-ng", "rsyslog", "OpenSSH", "SSSD", "iptables", "PF", "stunnel"))
    #cust-resume-skill-item("Queueing", ("Kafka", "Redis"))
  ],
  grid.cell[
    == Programming
    #cust-resume-skill-item("Language", ("Golang", "Python", "C", "Shell/Bash", "Javascript", "Perl", "Ocaml"))
    #cust-resume-skill-item("SCM", ("Git", "Subversion", "Mercurial"))
    #cust-resume-skill-item("Framework", ("CherryPy", "Flask", "Echo", "GORM", "React", "Bootstrap"))
    #cust-resume-skill-item("Specification", ("Swagger/OpenAPI", "UML"))
    #cust-resume-skill-item("Build", ("Make", "CMake", "GCC", "Clang"))
  ],
  grid.cell[
    == Other
    #cust-resume-skill-item("Network Theory", ("Security", "Routing", "QoS", "TCP/IP", "ATM", "MPLS"))
    #cust-resume-skill-item("Computer Sciences", ("Operations research", "Compilation", "Graph Theory", "Data analysis", "UML"))
    #cust-resume-skill-item("Documentation", ("Vim", "reStructuredText", "Markdown", LaTeX, "LibreOffice"))
    #cust-resume-skill-item("Tools", ("Jira", "Confluence", "GitHub", "Vim", "Travis CI", "Jenkins", "Slack"))
    #cust-resume-skill-item("Methodology", ("Agile/Scrum", "MIL-STD-498"))
  ]
)

= Language

#resume-item[
  - 🇫🇷 French: Native
  - 🇬🇧 English: Fluent (TOEIC 940/990; daily use)
]

= Education

#resume-entry(
  title: [#link("https://www.sorbonne-universite.fr/")[#box(image("img/sorbonne-university.svg", height: 14pt))] #h(1pt) - Sorbonne Université/UPMC],
  location: "Paris, France",
  date: "2010–2011",
  description: "Master's degree in network theory (double degree). Subjects: Routing, QoS, protocols, simulation."
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
  - Tinkering & Sharing: 3D printing & modeling, Electronics, Open Source development.
  - Music: Guitar and piano practice.
  - Learning: Curious about a wide range of topics, from Science to Design, Economics or History.
]
