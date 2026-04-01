// --------------------------------------------------------------------------------
// components/header.typ
// Componente del encabezado del CV Dibuja la franja de color superior con el nombre y el cargo.
// --------------------------------------------------------------------------------

// TODO: Definir el enlace a LinkedIn

#import "utils.typ": colored-icon
#import "theme.typ": (
  background_color, font_family, font_size_heading_1, font_size_heading_2,
  header_height, left_panel_width, page_margin_left,
  page_margin_top, section_spacing, white_color, normal_font_size,
  font_size_min, normal_font_size
)

#let image_path = "../assets/glacier.jpg"
#let linkedin_icon_path = "../assets/icons/linkedin-in.svg"
#let linkedin_url = "https://www.linkedin.com/in/kevin-cardenas-cruz/"

#let header(
  name: "TU NOMBRE",
  surname: "TU APELLIDO",
  role: "TU CARGO",
) = {
  // 1. Construimos el componente del texto (Nombre y Cargo)
  let text_content = [
    #set text(fill: white_color, font: font_family)
    #text(size: font_size_heading_1, weight: "bold")[#upper(name)]
    #text(size: font_size_heading_1, weight: "regular")[#upper(surname)] \
    #v(-0.2em) // Espacio vertical
    #set text(fill: rgb("#A6A6A6"), font: font_family)
    #text(size: normal_font_size, weight: "regular")[#role] \
    #set text(fill: white_color, font: font_family)
    #v(0.5em) // Espacio para la línea
    #line(length: 20%, stroke: (paint: white_color, thickness: 1pt)) // Línea blanca
  ]

  let linkedin_link = [
    #link(linkedin_url)[
      #set text(fill: white_color)
      #grid(
        columns: auto,
        // Una sola columna del ancho del icono
        rows: (auto, auto),
        row-gutter: 0.2cm,
        // Espacio pequeño entre icono y texto
        align: center + horizon,
        colored-icon(linkedin_icon_path, white_color.to-hex(), 2.4cm),
        text(size: normal_font_size, weight: "regular")[Mi  LinkedIn],
      )
    ]
  ]

  // 3. Ensamblamos en el bloque principal
  block(
    fill: background_color,
    width: 100%,
    height: header_height,
    inset: (x: page_margin_left, y: page_margin_top),
    radius: 0pt,
    spacing: 0pt,
  )[
    #grid(
      columns: (1fr, auto),
      column-gutter: 0pt,
      align: (left + top, right + horizon),
      // Contenido del grid:
      text_content, linkedin_link,
    )
  ]
}
