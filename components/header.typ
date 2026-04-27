// --------------------------------------------------------------------------------
// ARCHIVO: components/header.typ
// DESCRIPCIÓN: Componente del encabezado del CV.
//              Dibuja la franja de color superior con el nombre y el cargo.
// --------------------------------------------------------------------------------

#import "theme.typ": (
  background_color, font_family, font_size_heading_1, font_size_heading_2,
  header_height, white_color,
)

#let header(
  name: "TU NOMBRE",
  role: "TU CARGO",
) = {
  block(
    fill: background_color,
    width: 100%,
    height: header_height,
    inset: (x: 1.5cm, y: 1cm), // Margen interno
    radius: 0pt,
    spacing: 0pt,
  )[
    #set text(fill: white_color, font: font_family)
    #align(horizon)[
      #text(size: font_size_heading_1, weight: "bold")[#upper(name)] \
      #v(-0.2em)
      #text(size: font_size_heading_2, weight: "regular")[#role]
    ]
  ]
}
