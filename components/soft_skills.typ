// --------------------------------------------------------------------------------
// ARCHIVO: components/soft_skills.typ
// DESCRIPCIÓN: Renderizar las competencias (soft skills) con su respectiva evidencia.
// --------------------------------------------------------------------------------

#import "theme.typ": (
  background_color, font_family, font_size_heading_4, font_size_min,
  item_spacing, section_spacing,
)

#let title = "COMPETENCIAS"

/// Renderizar una competencia individual con su justificación
#let soft_skill_item(item) = {
  stack(
    dir: ttb,
    spacing: 0.1cm,
    text(
      fill: background_color,
      size: font_size_min,
      weight: "bold",
      font: font_family,
    )[#item.at("name")],
    text(
      fill: background_color,
      size: font_size_min,
      weight: "light",
      font: font_family,
    )[#item.at("evidence")],
  )
}

/// Genera el bloque completo de competencias
#let soft_skills_block(skills: ()) = {
  if skills == () { return none }

  stack(
    dir: ttb,
    spacing: section_spacing,

    // Título de la sección (Consistente con Educación en el panel izquierdo)
    text(
      fill: background_color,
      size: font_size_heading_4,
      weight: "light",
      font: font_family,
    )[#upper(title)],

    // Lista de competencias
    stack(
      dir: ttb,
      spacing: item_spacing,
      ..skills.map(item => soft_skill_item(item)),
    ),
  )
}
