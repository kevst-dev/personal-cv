// --------------------------------------------------------------------------------
// Punto de entrada principal para tu CV. Aquí defines tus datos personales y el
// contenido.
// --------------------------------------------------------------------------------

#import "components/template.typ": cv

#show: cv.with(
  name: "Kevin", // Tu nombre completo (en negrita y mayúsculas en el header)
  surname: "Cardenas", // Tu apellido completo
  role: "Data Scientist", // Tu cargo o título profesional actual
  title: "Mi CV Profesional", // Título del PDF para los metadatos del archivo
)
