// --------------------------------------------------------------------------------
// Punto de entrada principal para tu CV. Aquí defines tus datos personales y el
// contenido.
// --------------------------------------------------------------------------------

#import "components/template.typ": cv

#show: cv.with(
  name: "Kevin",
  surname: "Cardenas",
  role: "Data Scientist",
  contact: (
    phone: "+57 310 345 7875",
    email: "kevst-dev@protonmail.com",
    // TODO: Agregar el enlace real a LinkedIn
    linkedin: "kevin-cardenas",
    linkedin_url: "https://www.linkedin.com/in/kevin-cardenas-163a01119",
    // TODO: Agregar el enlace real a GitHub
    github: "kevst-dev",
    github_url: "https://github.com/kevst-dev",
  ),
  education: (
    (
      title: "Básica secundaria",
      years: "2017",
      institution: "Institución Educativa Integrado de Soacha",
    ),
    (
      title: "Técnico en programación de software",
      years: "2017",
      institution: "Servicio Nacional de Aprendizaje - SENA",
    ),
    (
      title: "Ingeniería de sistemas",
      years: "2018 - 2023",
      institution: "Corporación Universitaria Minuto de Dios",
    ),
    (
      title: "Certificación ISO 27001 - Como auditor líder",
      years: "2025",
      institution: "Certiprof",
    ),
  ),
  title: "Mi CV Profesional",
)
