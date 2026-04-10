// --------------------------------------------------------------------------------
// ARCHIVO: components/profile.typ
// DESCRIPCIÓN: Renderizar la sección de perfil profesional en el panel derecho.
// --------------------------------------------------------------------------------

#import "theme.typ": (
  background_color, font_family, font_size_heading_4, normal_font_size,
  section_spacing, text_leading,
)

/// Renderizar el bloque de perfil profesional
///
/// - title (string): Título de la sección.
/// - content (content): El texto descriptivo (acepta marcado como negritas).
#let profile_block(title: "PERFIL PROFESIONAL", content: []) = {
  if content == [] { return none }

  stack(
    dir: ttb,
    spacing: section_spacing, // Espacio entre el título y el párrafo

    // Título de la sección en el panel derecho (Más grande y destacado)
    text(
      fill: background_color,
      size: font_size_heading_4,
      weight: "light",
      font: font_family,
    )[#upper(title)],

    // Contenido del perfil con soporte para negritas y justificación
    text(
      fill: background_color,
      size: normal_font_size,
      weight: "light",
      font: font_family,
    )[#content],
  )
}
