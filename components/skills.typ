// --------------------------------------------------------------------------------
// ARCHIVO: components/skills.typ
// DESCRIPCIÓN: Renderizar las habilidades técnicas agrupadas por stacks.
// --------------------------------------------------------------------------------

#import "theme.typ": (
  background_color, font_family, font_size_heading_2, font_size_heading_4,
  item_spacing, normal_font_size, section_spacing,
)

#let title = "HABILIDADES TÉCNICAS"

/// Renderizar un grupo de habilidades (Título + Lista de ítems)
#let skill_group(group) = {
  stack(
    dir: ttb,
    spacing: 0.2cm,
    text(
      fill: background_color,
      size: normal_font_size,
      weight: "bold",
      font: font_family,
    )[#group.at("category")],
    text(
      size: normal_font_size,
      weight: "light",
      font: font_family,
    )[#group.at("items").join(", ")],
  )
}

/// Genera el bloque completo de habilidades
#let skills_block(skill_groups: ()) = {
  if skill_groups == () { return none }

  stack(
    dir: ttb,
    spacing: section_spacing,

    // Título de la sección (Consistente con experiencia)
    text(
      fill: background_color,
      size: font_size_heading_4,
      weight: "light",
      font: font_family,
    )[#upper(title)],

    // Lista de grupos de habilidades
    stack(
      dir: ttb,
      spacing: item_spacing,
      ..skill_groups.map(group => skill_group(group)),
    ),
  )
}
