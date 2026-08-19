// This is the file that generates ththat generates the pdf
// forcing-action

#import "@preview/simple-technical-resume:0.1.0": *

#let name = "Rubem Neto"
#let phone = "+351 938 043 682"
#let email = "me@rubuy.me"
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

#show link: underline
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
    "Software Engineer Intern",
    "Cloudflare",
    "Porto, Portugal",
    datetime(year:2026, month:7, day:1),
    datetime(year:2026, month:9, day:1),
  )[
    - Designed and shipped a distributed concurrency-control system for a large-scale workflow-execution platform, capping parallel work across a job and its steps and enforcing limits consistently across every running instance, not per node.
    - Added user-facing observability so customers can see why work is queued and the impact of tuning limits, exposing new metrics through a public query API.
  ]
  #work-heading(
    "Backend Engineer Intern",
    "Blip.pt",
    "Porto, Portugal",
    datetime(year:2025, month:9, day:1),
    datetime(year:2026, month:6, day:1),
  )[
    - Backend development in the BETa program, supporting Sportsbook teams to ship faster on distributed, high-traffic betting systems.
    - Contributed to a large, well-established codebase, working through the complex engineering processes of a large-scale company.
  ]
  #work-heading(
    "DevOps Engineer Intern",
    "Uphold",
    "Porto, Portugal",
    datetime(year:2025, month:6, day:1),
    datetime(year:2025, month:9, day:1),
  )[
    - Automated infrastructure provisioning with Terraform and Ansible, cutting out manual instance updates.
    - Deployed the AWX platform on Kubernetes and integrated it with Teleport for secure EC2 operations.
  ]
  #work-heading(
    "Head of Projects",
    "NIAEFEUP",
    "Porto, Portugal",
    datetime(year:2024, month:9, day:1),
    datetime(year:2025, month:4, day:1),
  )[
    - Co-led the projects office overseeing ~4 development teams building apps students rely on daily.
    - Lead developer on the student association website (React, Next.js, PostgreSQL).
  ]
  // #work-heading(
  //   "Software Engineer Intern",
  //   "Yari Labs",
  //   "Braga, Portugal",
  //   datetime(year:2024, month:6, day:1),
  //   datetime(year:2024, month:7, day:1),
  // )[
  //   - Served as the whole mobile app team with a colleague, refactoring large sections of database and codebase.
  //   - Implemented Provider pattern in Flutter to improve maintainability and performance.
  //   - Strengthened team workflows with Git, Jira, Agile standups, stabilizing the production app.
  // ]
  #work-heading(
    "Teacher Assistant",
    "FEUP",
    "Porto, Portugal",
    datetime(year:2023, month:3, day:1),
    datetime(year:2025, month:6, day:1),
  )[
    - Assisted in Discrete Math and a Computer Laboratory course (C drivers in MINIX), supporting 30+ students per semester.
    - Ran in-class and one-on-one tutoring sessions that helped students prepare for exams.
  ]
]


#custom-title("Projects")[
  #project-heading(
    "niployments",
  )[
    - Helped modernize the infrastructure hosting NIAEFEUP's apps, picking up Kubernetes, Docker and Ansible along the way.
    - Built CI/CD workflows that kept \~4 core applications more reliably available. #link("https://github.com/NIAEFEUP/niployments")[repo]
  ]
  #project-heading(
    "pstr",
  )[
    - Built a regex engine from scratch in Go and wired it into my #link("https://rubuy.me/playground/pstr")[personal website].
    - Wrote unit and integration tests covering the engine's behavior.
  ]
]

#custom-title("Skills")[
  #skills()[
    - *Languages:* Java, Go, Python, Typescript/Javascript, SQL, C/C++, Bash
    - *Frameworks & Technologies:* Spring Boot, Next.js, React, Kafka, Apache Storm, PostgreSQL, GraphQL
    - *Tools & Platforms:* AWS, Kubernetes, Docker, Terraform, Ansible, Teleport, Git, Linux, Grafana
    - *Concepts:* Distributed Systems, CI/CD, Microservices, Message Queues, REST APIs
  ]
]
