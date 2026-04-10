// --------------------------------------------------------------------------------
// ARCHIVO: components/experience.typ
// DESCRIPCIÓN: Renderizar la sección de experiencia laboral en el panel derecho.
// --------------------------------------------------------------------------------

#import "theme.typ": (
  background_color, font_family, font_size_heading_2, font_size_heading_4,
  font_size_small, item_spacing, normal_font_size, section_spacing,
  text_leading,
)

#let title = "EXPERIENCIA"

/// Renderizar una entrada individual de experiencia
///
/// - entry (dictionary): Contiene role, company, dates, phone, description (content).
#let experience_item(entry) = {
  stack(
    dir: ttb,
    spacing: 0.5cm, // Espacio entre elementos de la misma experiencia

    // Cargo (Respetando estilo light del perfil)
    text(
      fill: background_color,
      size: normal_font_size,
      weight: "bold",
      font: font_family,
    )[#upper(entry.at("role"))],

    // Empresa
    text(
      fill: background_color,
      size: normal_font_size,
      weight: "light",
      font: font_family,
    )[*Empresa:* #entry.at("company")],

    // Fechas (Línea independiente)
    text(
      fill: background_color,
      size: normal_font_size,
      weight: "light",
      font: font_family,
    )[*Fechas:* #entry.at("dates")],

    // Teléfono (Opcional) con etiqueta en negrita
    if entry.at("phone", default: none) != none {
      text(
        fill: background_color,
        size: normal_font_size,
        weight: "light",
        font: font_family,
      )[*Teléfono:* #entry.at("phone")]
    },

    // Descripción (Acepta contenido con negritas)
    text(
      size: normal_font_size,
      weight: "light",
      font: font_family,
    )[#entry.at("description")],
  )
}

/// Genera el bloque completo de experiencia
///
/// - experience_list (array): Lista de diccionarios con información laboral.
#let experience_block(experience_list: ()) = {
  if experience_list == () { return none }

  stack(
    dir: ttb,
    spacing: section_spacing, // Consistente con el espaciado en profile.typ (Título vs Párrafo)

    // Título de la sección (Igual que en profile.typ)
    text(
      fill: background_color,
      size: font_size_heading_4,
      weight: "light",
      font: font_family,
    )[#upper(title)],

    // Lista de experiencias
    stack(
      dir: ttb,
      spacing: item_spacing, // Espacio entre diferentes empleos
      ..experience_list.map(entry => experience_item(entry)),
    ),
  )
}
