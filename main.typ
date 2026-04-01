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
    phone: "+51 987 654 321",
    email: "kevin.cardenas@example.com",
    // TODO: Agregar el enlace real a LinkedIn
    linkedin: "linkedin.com/in/kevin-cardenas-cruz/",
    linkedin_url: "https://www.linkedin.com/in/kevin-cardenas-cruz/",
    // TODO: Agregar el enlace real a GitHub
    github: "github.com/kevin-cardenas",
    github_url: "https://github.com/kevin-cardenas",
  ),
  title: "Mi CV Profesional", 
)
