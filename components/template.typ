// --------------------------------------------------------------------------------
// Configuración global de diseño y estructura del documento. Centraliza la lógica
// de márgenes, fuentes y orden de componentes.
// --------------------------------------------------------------------------------

#import "theme.typ": (
  font_family, header_height, left_panel_width, normal_font_size,
  page_margin_bottom, page_margin_left, page_margin_right, page_margin_top,
  section_spacing, text_leading,
)
#import "header.typ": header
#import "left_panel.typ": left_panel
#import "social.typ": social_block
#import "education.typ": education_block
#import "profile.typ": profile_block

// Función principal de configuración (Template)
#let cv(
  header_info: (:), // Sin valores por defecto, estructura limpia
  contact: (:),
  education: (),
  profile: [],
  title: "CV",
  body,
) = {
  // 1. Metadatos del documento
  set document(title: title, author: header_info.at("name", default: ""))

  // 2. Configuración de página y márgenes "base"
  set page(
    paper: "a4",
    margin: 0pt,
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
  grid(
    columns: 100%,
    rows: (header_height, 1fr),
    gutter: 0pt,

    // FILA 1: Encabezado (Ahora independiente y modular)
    header(info: header_info),

    // FILA 2: Contenido
    grid(
      columns: (left_panel_width, 1fr),
      rows: 100%,
      gutter: 0pt,

      // Panel Izquierdo
      left_panel(
        content: [
          #social_block(contact: contact)
          #v(section_spacing)
          #education_block(education_list: education)
        ],
      ),

      // Panel Derecho (Contenido principal)
      pad(
        x: page_margin_right,
        top: page_margin_top,
        bottom: page_margin_bottom,
      )[
        #profile_block(content: profile)
        #v(section_spacing)
        #body
      ],
    )
  )
}
