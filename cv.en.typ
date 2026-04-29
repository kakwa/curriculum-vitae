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
    phone: "+33 (0) 670 471 017",
    github: "kakwa",
    linkedin: "pfcarpentier",
    address: "114 rue de la Glacière, 75013 Paris",
    positions: ("Software Engineering", "Site Reliability Engineer", "System Architecture", "OSS Contributor"),
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
  keywords: ("Software Engineering","Site Reliability Engineer", "DevOps", "Cloud", "Automation", "Kubernetes", "AWS", "Python", "Golang", "Open Source"),
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
  title: [#link("https://www.adobe.com")[#box(image("img/adobe.svg", height: 12pt))] #h(1pt) - Senior Software Engineer, SRE & Technical Lead],
  location: "Paris, France",
  date: "2020–present",
  description: [#emph[Adobe Inc.] — Technical lead of a team developing and operating mass emailing systems]
)

#resume-item[
  - Coordination of cross-team and cross-geo initiatives (APAC, US, EU).
  - Architect and deploy components for large-scale email platforms delivering 1B+ emails per day (Go, REST API, SQL, Redis).
  - Break down projects into actionable tasks for developers, while providing clear progress tracking for leadership (Scrum, Jira, Agile, Project Management).
  - Build control & command UIs to safely empower deliverability consultants, support and operation (React, JavaScript, TypeScript).
  - Gather requirements, specify functionalities, and prioritize delivery of new features (Product Management).
  - Build and maintain CI/CD pipelines across a dozen services or components (Jenkins, Docker, ArgoCD, Kubernetes)
  - Develop ETL scripts for data migration and inventory reconciliation (Python).
  - Define monitoring alerts, runbooks and escalation policies for 24/7 on-call rotation (New Relic, PagerDuty, Riemann).
]

#resume-entry(
  title: [#link("https://www.adobe.com")[#box(image("img/adobe.svg", height: 12pt))] #h(1pt) - Site Reliability Engineer],
  location: "Arcueil, France",
  date: "2016–2020",
  description: [#emph[Adobe Inc.] — SRE/DevOps in a global operation team managing large B2C marketing platforms]
)

#resume-item[
  - Roll-out of automation tooling managing +5K servers (SaltStack, Ansible, Terraform, AWS CloudFormation).
  - DC-to-Cloud migration of large (+2TB) marketing and analytics platforms (tooling, procedures, execution).
  - SPF/DKIM/DMARC/FBL/PTR configuration for mass-emailing at up to 15M emails/hour per customer.
  - Design, development, documentation and distribution of internal tools/components (Python, Go, Confluence, Markdown).
  - CI/CD setup, unit testing & coverage measurement (Jenkins pipelines, Artifactory, pytest, go test).
  - AWS cost optimization recommendations leading to a ~20% bill reduction.
  - Resolved complex product and customer implementation issues.
  - Analyze and optimize DB queries and schemas leading to up to 20x performance improvements (PostgreSQL, Amazon RDS).
]

#resume-entry(
  title: [#link("https://www.csgroup.eu/")[#box(image("img/cs-group.svg", height: 12pt))] #h(1pt) - System & Integration Engineer],
  location: "Le Plessis-Robinson, France",
  date: "2011–2016",
  description: [#emph[CS Group] — software integration for complex systems serving public & enterprise customers.],
)

#resume-item[
  - Design and automation of bare-metal & virtualized deployments (Puppet, Kickstart, PXE).
  - Design high availability and replication strategy for 99.95% availability (Nginx, Keepalived, OpenLDAP, MySQL).
  - Streamline build, packaging and versioning of custom and third-party software (.deb/.rpm, Jenkins).
  - Deploy & integrate IT services: DNS, mail, directories, and web services (BIND, Postfix, Roundcube, Trac, IRC).
  - Development and maintenance of automation scripts and operational tooling (Python, Shell, Ruby, Perl).
  - Implementation of monitoring and log centralization (Nagios, SNMP, Logstash, rsyslog).
  - Documentation of installation procedures, reference manual, and QA checklists (reStructuredText, TestLink).
]

= Open Source Projects

#resume-item[
  #cust-project-item([#github-icon #link("https://github.com/kakwa/ldapcherry")[*kakwa/ldapcherry*]], "Directory and IAM management web app (Python, CherryPy)")
  #cust-project-item([#github-icon #link("https://github.com/wows-tools/wows-depack")[*wows-tools/wows-depack*]], "Reverse-engineering and parsing of a proprietary file format (C, Doxygen)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/libemf2svg")[*kakwa/libemf2svg*]], "Microsoft EMF vector graphics to SVG conversion (C)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/pakste")[*kakwa/pakste*]], "Packaging framework to build and publish DEB/RPMs (Makefile, pbuilder, mock)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/wows-whaling-simulator")[*kakwa/wows-whaling-simulator*]], "Monte Carlo simulator modeling in-game loot box economics (Go + React)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/uts-server")[*kakwa/uts-server*]], "RFC-3161 cryptographic timestamp server (C, OpenSSL)")
  #cust-project-item([#github-icon #link("https://github.com/kakwa/puppet-samba")[*kakwa/puppet-samba*]], "Puppet module managing Samba shares and AD DC setups")
  #cust-project-item([#github-icon #link("https://github.com/kakwa?tab=repositories")[*Profile on GitHub.com*]], "My other software projects")
  #cust-project-item([#cube-icon #link("https://www.printables.com/@kakwa_3337391/models")[*Profile on Printables.com*]], "Miscellaneous 3D CAD models I've published")
  #cust-project-item([#blog-icon #link("https://technically.kakwalab.ovh/")[*technically.kakwalab.ovh*]], "My technical blog")
]

= Internships

#resume-entry(
  title: [#link("https://www.csgroup.eu/")[#box(image("img/cs-group.svg", height: 12pt))] #h(1pt) - #text(style: "italic", weight: "regular")[Communication & Systèmes]],
  location: "Le Plessis-Robinson, France",
  date: "2011",
  description: [Implementation of end-to-end encrypted mailing list leveraging S/MIME, RSA proxy re-encryption & key trees.]
)

#resume-entry(
  title: [#link("https://www.inria.fr/")[#box(image("img/inria.svg", height: 12pt))] #h(1pt) - #text(style: "italic", weight: "regular")[INRIA]],
  location: "Rocquencourt, France",
  date: "2010",
  description: [Built a website to view oriental manuscripts alongside their translations.]
)

#resume-entry(
  title: [#link("https://www.ibisc.univ-evry.fr/")[#box(image("img/ibisc.svg", height: 12pt))] #h(1pt) - #text(style: "italic", weight: "regular")[IBISC]],
  location: "Évry, France",
  date: "2009",
  description: [Biological modeling: developed a cancer tumor propagation model to study PA-1 molecule impact.]
)

= Skills

#grid(
  columns: 2,
  gutter: 15pt,
  grid.cell[
    == System
    #cust-resume-skill-item("OS", ("Debian/Ubuntu", "RHEL", "Gentoo", "*BSD"))
    #cust-resume-skill-item("Virtualization", ("ESXi", "VirtualBox", "Docker", "KVM", "LXD", "Kubernetes"))
    #cust-resume-skill-item("Packaging", ("deb", "rpm", "ebuild", "pkgsrc"))
    #cust-resume-skill-item("Deployment", ("Puppet", "SaltStack", "Ansible", "Kickstart", "Preseed", "Terraform", "Boto", "PXE"))
    #cust-resume-skill-item("Network", ("Keepalived", "OpenVPN", "DHCPd", "Bind"))
    #cust-resume-skill-item("Cloud", ("AWS", "Azure", "OVH"))
  ],
  grid.cell[
    == Service
    #cust-resume-skill-item("Web Server", ("Apache", "Lighttpd", "Nginx", "Tomcat"))
    #cust-resume-skill-item("Misc", ("OpenLDAP", "ntpd", "CUPS", "Bacula", "Postfix", "Dovecot", "Samba", "NFS"))
    #cust-resume-skill-item("Monitoring", ("Nagios", "NewRelic", "Logstash", "snmpd", "Grafana", "collectd"))
    #cust-resume-skill-item("Database", ("MySQL/MariaDB", "PostgreSQL", "DynamoDB", "Amazon RDS", "etcd"))
    #cust-resume-skill-item("Security", ("rsyslog", "OpenSSH", "iptables", "stunnel"))
    #cust-resume-skill-item("Queueing", ("Kafka", "Redis"))
  ],
  grid.cell[
    == Programming
    #cust-resume-skill-item("Language", ("Golang", "Python", "C", "Shell/Bash", "JavaScript/TypeScript"))
    #cust-resume-skill-item("SCM", ("Git", "Subversion", "Mercurial"))
    #cust-resume-skill-item("Framework", ("CherryPy", "Flask", "Echo", "GORM", "React", "Bootstrap"))
    #cust-resume-skill-item("Specification", ("Swagger/OpenAPI", "UML"))
    #cust-resume-skill-item("Build", ("Make", "CMake", "Jenkins", "ArgoCD", "Woodpecker CI"))
  ],
  grid.cell[
    == Other
    #cust-resume-skill-item("Network Theory", ("Security", "Routing", "QoS", "TCP/IP", "ATM", "MPLS"))
    #cust-resume-skill-item("Computer Science", ("Operations research", "Graph Theory", "Data analysis"))
    #cust-resume-skill-item("Documentation", ("Vim", "reStructuredText", "Markdown", LaTeX, text(rgb("#239dad"))[#strong[typst]], "LibreOffice"))
    #cust-resume-skill-item("Tools", ("Jira", "Confluence", "GitHub", "Slack"))
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
  title: [#link("https://www.ensiie.fr/")[#box(image("img/ensiie.svg", height: 15pt))] #h(1pt) - École Nationale Supérieure d'Informatique pour l'Industrie et l'Entreprise],
  location: "Évry, France",
  date: "2008–2011",
  description: "Computer science engineering diploma. Software, OS, Network, Mathematics."
)

#resume-entry(
  title: "Lycée de Kerichen",
  location: "Brest, France",
  date: "2005–2008",
  description: "Classe Préparatoire aux Grandes Écoles — Mathematics, Physics, Computer Science."
)

= Personal Interests

#resume-item[
  - Tinkering & Sharing: 3D printing & modeling, Electronics, Open Source development.
  - Music: Guitar and piano practice.
  - Learning: Curious about a wide range of topics, from Science to Design, Economics or History.
]
