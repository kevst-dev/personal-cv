// --------------------------------------------------------------------------------
// Punto de entrada principal para tu CV. Aquí defines tus datos personales y el
// contenido.
// --------------------------------------------------------------------------------

#import "components/template.typ": cv

#show: cv.with(
  name: "Howard Ong", // Tu nombre completo (en negrita y mayúsculas en el header)
  role: "Data Scientist", // Tu cargo o título profesional actual
  title: "Mi CV Profesional", // Título del PDF para los metadatos del archivo
)

// --- SECCIONES DEL CV ---

= Sobre mí
Dedicado y detallista científico de datos con más de 4 años de experiencia...

= Experiencia
*Empresa A* | Senior Data Scientist \
2020 - Presente
- Lideré el desarrollo de modelos de machine learning...
