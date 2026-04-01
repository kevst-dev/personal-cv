// --------------------------------------------------------------------------------
// ARCHIVO: components/social.typ
// DESCRIPCIÓN: Renderiza los iconos y enlaces de contacto en el panel izquierdo.
// --------------------------------------------------------------------------------

#import "utils.typ": colored-icon
#import "theme.typ": white_color, background_color

#let social_item(icon_path, value, url: none) = {
  // Si no hay valor o es nulo, la función no devuelve nada (none)
  if value == none or value == "" { return none }
  
  let content = grid(
    columns: (0.6cm, 1fr), // Icono a la izquierda, texto a la derecha
    column-gutter: 0.3cm,
    align: horizon,
    // Nota: Por ahora usamos el de LinkedIn si los otros no existen
    colored-icon(icon_path, background_color.to-hex(), 0.5cm),
    text(fill: background_color, size: 9pt, weight: "light")[#value]
  )

  if url != none {
    link(url)[#content]
  } else {
    content
  }
}

#let social_block(contact: (:)) = {
  // Solo renderizamos si el diccionario tiene algo
  if contact == (:) { return none }

  stack(
    spacing: 0.6cm,
    // El campo se renderiza solo si existe en el diccionario
    social_item("../assets/icons/linkedin-in.svg", contact.at("phone", default: none)),
    social_item("../assets/icons/linkedin-in.svg", contact.at("email", default: none), url: if contact.at("email", default: none) != none { "mailto:" + contact.email } else { none }),
    social_item("../assets/icons/linkedin-in.svg", contact.at("linkedin", default: none), url: contact.at("linkedin_url", default: none)),
    social_item("../assets/icons/linkedin-in.svg", contact.at("github", default: none), url: contact.at("github_url", default: none)),
  )
}
