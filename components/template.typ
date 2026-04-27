// --------------------------------------------------------------------------------
// Configuración global de diseño y estructura del documento. Centraliza la lógica
// de márgenes, fuentes y orden de componentes.
// --------------------------------------------------------------------------------

#import "theme.typ": (
  font_family, normal_font_size, page_margin_bottom, page_margin_left,
  page_margin_right, text_leading,
)
#import "header.typ": header

// Función principal de configuración (Template)
#let cv(
  name: "TU NOMBRE", // Nombre del profesional
  role: "TU CARGO", // Cargo o profesión actual
  title: "CV", // Título del documento (metadatos)
  body, // Contenido que el usuario escribe en main.typ
) = {
  // 1. Metadatos del documento
  set document(title: title, author: name)

  // 2. Configuración de página y márgenes "base" (A sangre para el header)
  set page(
    paper: "a4",
    margin: (x: 0pt, y: 0pt),
  )

  // 3. Configuración de texto base
  set text(
    font: font_family,
    size: normal_font_size,
    lang: "es",
  )

  // 4. Configuración de párrafos
  set par(
    justify: true,
    leading: text_leading,
  )

  // 5. Estructura del documento
  // --- Encabezado Automático ---
  header(name: name, role: role)

  // --- Cuerpo con márgenes ---
  pad(
    left: page_margin_left,
    right: page_margin_right,
    bottom: page_margin_bottom,
    top: 1cm, // Un pequeño margen para separar del header
  )[
    #body
  ]
}
