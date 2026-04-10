// --------------------------------------------------------------------------------
// ARCHIVO: components/education.typ
// DESCRIPCIÓN: Renderizar la sección de educación en el panel izquierdo.
// --------------------------------------------------------------------------------

#import "theme.typ": (
  background_color, font_family, font_size_heading_4, font_size_min,
  item_spacing, section_spacing,
)

#let title = "EDUCACIÓN"

/// Renderizar una entrada individual de educación
///
/// - entry (dictionary): Contiene title, years e institution.
#let education_item(entry) = {
  stack(
    dir: ttb,
    spacing: 0.15cm, // Espacio interno muy pequeño entre líneas de la misma entrada

    // Título del estudio (Negrita)
    text(
      fill: background_color,
      size: font_size_min,
      weight: "bold",
      font: font_family,
    )[#entry.at("title", default: "")],

    // Años (Normal)
    text(
      fill: background_color,
      size: font_size_min,
      weight: "light",
      font: font_family,
    )[#entry.at("years", default: "")],

    // Institución (Normal)
    text(
      fill: background_color,
      size: font_size_min,
      weight: "light",
      font: font_family,
    )[#entry.at("institution", default: "")],
  )
}

/// Genera el bloque completo de educación
///
/// - education_list (array): Lista de diccionarios con información educativa.
#let education_block(education_list: ()) = {
  if education_list == () { return none }

  stack(
    dir: ttb,
    spacing: section_spacing, // Espacio entre el título "EDUCACIÓN" y el primer ítem

    // Título de la sección
    text(
      fill: background_color,
      size: font_size_heading_4,
      weight: "light",
      font: font_family,
    )[#upper(title)],

    // Lista de estudios
    stack(
      dir: ttb,
      spacing: item_spacing, // Espacio entre diferentes títulos de estudio
      ..education_list.map(entry => education_item(entry)),
    ),
  )
}
