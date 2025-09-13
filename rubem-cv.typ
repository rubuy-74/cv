#import "@preview/simple-technical-resume:0.1.0": *

#let name = "Rubem Neto"
#let phone = "+351 938 043 682"
#let email = "rubemviscard2635@gmail.com"
#let github = "rubuy-74"
#let linkedin = "rubemneto74"
#let personal-site = "rubuy.me"

#show: resume.with(
  top-margin: 0.25in,
  personal-info-font-size: 9.5pt,
  author-position: center,
  personal-info-position: center,
  author-name: name,
  phone: phone,
  email: email,
  website: personal-site,
  linkedin-user-id: linkedin,
  github-username: github
)

#custom-title("Education")[
  #education-heading(
    "University of Porto", "Porto, Portugal",
    "Masters of Science", "Informatics and Computing Engineering",
    datetime(year: 2025, month: 9, day: 1),
    datetime(year: 2027, month: 7,  day: 1)
  )[
  ]
  #education-heading(
    "University of Porto", "Porto, Portugal",
    "Bachelor of Science", "Informatics and Computing Engineering",
    datetime(year: 2022, month: 9, day: 1),
    datetime(year: 2025, month: 7,  day: 1)
  )[
    - *Relevant Coursework:* Computers Networks, Distributed Systems, Databases, Operating Systems, Algorithms and Data Structures, Software Engineering, Web Development, Object-Oriented Programming
    - *Grade:* 17/20
  ]
]

#custom-title("Experience")[
  #work-heading(
    "Backend Engineer Intern",
    "Blip.pt",
    "Porto, Portugal",
    datetime(year:2025, month:9, day:1),
    datetime(year:2026, month:6, day:1),
  )[
    - Built backend systems for Sportsbook teams, leveraging Java, Kafka, Apache Storm, Cassandra, AWS.
    - Enhanced project delivery speed by supporting distributed, high-performance betting platforms.
  ]
  #work-heading(
    "Devops Engineer Intern",
    "Uphold",
    "Porto, Portugal",
    datetime(year:2025, month:6, day:1),
    datetime(year:2025, month:9, day:1),
  )[
    - Automated infrastructure provisioning with Terraform and Ansible, reducing manual updates.
    - Deployed AWX platform on Kubernetes, integrated with Teleport, enabling secure EC2 operations.
    - Developed Bash scripts for dynamic inventories, improving Ansible deployment flexibility.
  ]
  #work-heading(
    "Head of Projects",
    "NIAEFEUP",
    "Porto, Portugal",
    datetime(year:2024, month:9, day:1),
    datetime(year:2025, month:4, day:1),
  )[
    - Co-led the Head of Projects office, managing ~4 development teams delivering apps essential to student daily life.
    - Took lead developer role for the University Association website using React, Next.js, PostgreSQL.
  ]
  #work-heading(
    "Software Engineer Intern",
    "Yari Labs",
    "Braga, Portugal",
    datetime(year:2024, month:6, day:1),
    datetime(year:2024, month:7, day:1),
  )[
    - Served as the whole mobile app team with a colleague, refactoring large sections of database and codebase.
    - Implemented Provider pattern in Flutter to improve maintainability and performance.
    - Strengthened team workflows with Git, Jira, Agile standups, stabilizing the production app.
  ]
  #work-heading(
    "Teacher Assistant",
    "FEUP",
    "Porto, Portugal",
    datetime(year:2023, month:3, day:1),
    datetime(year:2025, month:6, day:1),
  )[
    - Assisted in Discrete Math and Computer Laboratory (C driver implementation in MINIX), supporting 30+ students per semester.
    - Provided in-class and dedicated tutoring sessions improving exam results.
    - Strengthened communication and teaching ability by simplifying complex concepts for peers.
  ]
]


#custom-title("Projects")[
  #project-heading(
    "niployments",
  )[
    - Contributed to infrastructure modernization for NIAEFEUP’s hosted applications, learning Kubernetes, Docker, and Ansible on the go.
    - Built CI/CD workflows, strengthening system availability for \~4 core applications.
  ]
  #project-heading(
    "Self hosted infrastructure (carlos)",
  )[
    - Configured and managed a personal physical server (Proxmox), hosting daily-use applications.
    - Deployed services including Vaultwarden, Wireguard, Syncthing, and Docmost using Docker/Ansible automation.
  ]
]

#custom-title("Skills")[
  #skills()[
    - *Languages:* Java, Go, Python, Typescript/Javascript, SQL, C/C++
    - *Frameworks & Technologies:* Git, PostgreSQL, Spring Boot, Next.js, React, Laravel
    - *Tools & Platforms:*  AWS, Kubernetes, Docker, Terraform, Ansible, CI/CD, Linux
  ]
]
