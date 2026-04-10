// --------------------------------------------------------------------------------
// ARCHIVO: components/languages.typ
// DESCRIPCIÓN: Renderizar la sección de idiomas en el panel izquierdo.
// --------------------------------------------------------------------------------

#import "theme.typ": (
  background_color, font_family, font_size_heading_4, font_size_min,
  item_spacing, section_spacing,
)

#let title = "IDIOMAS"

/// Renderizar un idioma individual
#let language_item(item) = {
  text(
    fill: background_color,
    size: font_size_min,
    weight: "light",
    font: font_family,
  )[*#item.at("name"):* #item.at("level")]
}

/// Genera el bloque completo de idiomas
#let languages_block(languages: ()) = {
  if languages == () { return none }

  stack(
    dir: ttb,
    spacing: section_spacing,

    // Título de la sección
    text(
      fill: background_color,
      size: font_size_heading_4,
      weight: "light",
      font: font_family,
    )[#upper(title)],

    // Lista de idiomas
    stack(
      dir: ttb,
      spacing: item_spacing,
      ..languages.map(item => language_item(item)),
    ),
  )
}
