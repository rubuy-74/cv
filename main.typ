#import "@preview/simple-technical-resume:0.1.0": *

#let name = "Rubem Neto"
#let phone = "+351 938 043 682"
#let email = "rubemviscard2635@gmail.com"
#let github = "rubuy-74"
#let linkedin = "rubemneto74"
#let personal-site = "rubuy.me"

#show: resume.with(
  top-margin: 0.45in,
  personal-info-font-size: 9.2pt,
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
    - *Relevant Coursework:* Computers Networks, Distributed Systems, Databases, Operating Systems, Algorithms and Data Structures, Artificial Intelligence, Software Engineering, Web Development, Object-Oriented Programming
    - *Grade:* 17/20
  ]
]

#custom-title("Experience")[
  #work-heading(
    "Devops Engineer Intern",
    "Uphold",
    "Porto, Portugal",
    datetime(year:2025, month:6, day:1),
    datetime(year:2025, month:9, day:1),
  )[
    - Automating the configuration and deployment of EC2 instances by developing and maintaining Terraform modules and Ansible Playbooks.
    - Managing application deployments and ensuring system reliability by creating and configuring Kubernetes manifests within a CI/CD pipeline.
  ]
  #work-heading(
    "Head of Projects",
    "NIAEFEUP",
    "Porto, Portugal",
    datetime(year:2024, month:9, day:1),
    datetime(year:2025, month:4, day:1),
  )[
    - Led project coordinators for the academic year, overseeing the development of all internal software applications for NIAEFEUP.
    - Introduced weekly sprints to project teams, leading to better task organization and improved productivity.
  ]
  #work-heading(
    "Software Engineer Intern",
    "Yari Labs",
    "Braga, Portugal",
    datetime(year:2024, month:6, day:1),
    datetime(year:2024, month:7, day:1),
  )[
    - Upgraded a core Flutter application by refactoring the codebase.
    - Implemented the provider pattern, resulting in increased performance and maintainability.
    - Built a comprehensive testing suite with Mockito for unit and integration tests to ensure application stability.
  ]
  #work-heading(
    "Teacher Assistant",
    "FEUP",
    "Porto, Portugal",
    datetime(year:2023, month:3, day:1),
    datetime(year:2025, month:6, day:1),
  )[
    - Conducted weekly tutoring sessions for 30+ students.
    - Tutoring sessions led to a clear improvement in the students average exam performance.
  ]
]


#custom-title("Projects")[
  #project-heading(
    "niployments",
  )[
    - Collaborated on an open-source project at NIAEFEUP, contributing to Kubernetes manifests, Ansible Playbooks and CI/CD pipeline workflows.
    - Helped to achieve a reliable and available systems for all of NIAEEUP's applications.
  ]
  // #project-heading(
  //   "tinyrp",
  // )[
  //   - Implemented a lighweight Reverse Proxy server in Go
  //   - Developed configurable endpoints, health checks and Docker containers for testing
  // ]
  #project-heading(
    "uSettle",
  )[
    - Developed an expense-sharing Flutter application during a hackathon, with a focus on a clean user interface for simple expense tracking between groups.
  ]
  // #project-heading(
  //   "everyday.dev",
  // )[
  //   - Built a full-stack application based on the famous daily-dev website using the Laravel framework, allowing developers to share and create news.
  // ]
  #project-heading(
    "Self hosted infrastructure (carlos)",
  )[
    - Established and manage a bare-metal server, creating a production-like environment to learn core DevOps tools and practices.
    - Automated the deployment of various web applications and services using Docker containers and Ansible playbooks.
  ]
]

#custom-title("Skills")[
  #skills()[
    - *Languages:* Go, Python, Typescript/Javascript, SQL, C/C++, Java
    - *Frameworks & Technologies:* Git, PostgreSQL, Spring Boot, Next.js, React, Laravel
    - *Tools & Platforms:* Docker, AWS, Kubernetes, Terraform, Ansible, CI/CD, Traefik, Linux
  ]
]
