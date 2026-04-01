// --------------------------------------------------------------------------------
// ARCHIVO: components/left_panel.typ
// DESCRIPCIÓN: Componente del panel izquierdo del CV.
//              Ocupa un ancho fijo y se extiende verticalmente.
// --------------------------------------------------------------------------------

#import "theme.typ": left_panel_width, white_color, page_margin_left, page_margin_top

// Definimos el componente del panel izquierdo
#let left_panel(content: []) = {
  // En Typst, para que un bloque ocupe el alto disponible sin desbordar,
  // es mejor integrarlo en un grid o usar '1fr' en el contenedor superior.
  block(
    fill: rgb("#F0F5F9"),
    width: left_panel_width,
    height: 100%, // En el contexto de un grid con altura definida, esto funcionará bien
    inset: (x: page_margin_left, y: page_margin_top),
    radius: 0pt,
  )[
    #content
  ]
}
