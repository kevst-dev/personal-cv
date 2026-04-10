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
  title: "Mi CV Profesional",
)
