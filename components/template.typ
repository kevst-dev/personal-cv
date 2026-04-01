// --------------------------------------------------------------------------------
// Configuración global de diseño y estructura del documento. Centraliza la lógica
// de márgenes, fuentes y orden de componentes.
// --------------------------------------------------------------------------------

#import "theme.typ": (
  font_family, header_height, left_panel_width, normal_font_size,
  page_margin_bottom, page_margin_left, page_margin_right, text_leading,
)
#import "header.typ": header
#import "left_panel.typ": left_panel
#import "social.typ": social_block

// Función principal de configuración (Template)
#let cv(
  name: "TU NOMBRE",
  surname: "TU APELLIDO",
  role: "TU CARGO",
  contact: (:),
  title: "CV",
  body,
) = {
  // 1. Metadatos del documento
  set document(title: title, author: name)

  // 2. Configuración de página y márgenes "base" (A sangre para el header)
  set page(
    paper: "a4",
    margin: 0pt, // Sin márgenes globales para permitir que el header y el panel toquen los bordes
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

  // 5. Estructura del documento (Un solo grid para toda la página)
  grid(
    columns: 100%,
    rows: (header_height, 1fr), // Header altura fija, resto altura flexible
    gutter: 0pt,

    // FILA 1: Encabezado
    header(
      name: name,
      surname: surname,
      role: role,
      linkedin_url: contact.at("linkedin_url", default: none)
      ),

    // FILA 2: Contenido (Panel Izquierdo y Panel Derecho)
    grid(
      columns: (left_panel_width, 1fr),
      rows: 100%,
      gutter: 0pt,
      left_panel(
        content: [
          #social_block(contact: contact)
        ],
      ),
      // Panel negro
      pad(x: page_margin_right, y: 1cm)[#body],
      // Panel derecho con el contenido del usuario
    )
  )
}
