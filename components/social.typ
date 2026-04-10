// --------------------------------------------------------------------------------
// ARCHIVO: components/social.typ
// DESCRIPCIÓN: Componente encargado de renderizar la información de contacto y
//              redes sociales en el panel izquierdo del CV.
// --------------------------------------------------------------------------------

#import "utils.typ": colored-icon
#import "theme.typ": (
  background_color, font_family, font_size_heading_4, font_size_min,
  item_spacing, section_spacing,
)

#let title = "CONTACTO"

/// Renderizar una fila individual de contacto (Icono + Texto/Enlace)
///
/// - icon_path (string): Ruta al archivo SVG del icono.
/// - value (string): El texto a mostrar (ej. el número de teléfono o usuario).
/// - url (string, optional): Enlace opcional para hacer el elemento con enlace.
#let social_item(icon_path, value, url: none) = {
  // Validación de seguridad: si no hay valor, no ocupamos espacio en el layout
  if value == none or value == "" { return none }

  let content = grid(
    columns: (0.6cm, 1fr),
    // Ancho fijo para el icono, flexible para el texto
    column-gutter: 0.3cm,
    // Espacio entre el icono y el texto
    align: horizon,

    // Icono dinámico coloreado según el tema
    colored-icon(icon_path, background_color.to-hex(), 0.5cm),

    // Texto estilizado con los tokens del tema
    text(
      fill: background_color,
      size: font_size_min,
      weight: "light",
      font: font_family,
    )[#value],
  )

  // Si existe una URL, envolvemos el contenido en un enlace
  if url != none {
    link(url)[#content]
  } else {
    content
  }
}

/// Genera el bloque completo de redes sociales y contacto con su título
///
/// - contact (dictionary): Diccionario con las llaves de contacto (phone, email, etc.)
/// - title (string): Título de la sección (por defecto "CONTACTO")
#let social_block(contact: (:)) = {
  // Si el diccionario está vacío, evitamos renderizar el bloque
  if contact == (:) { return none }

  stack(
    dir: ttb,
    spacing: section_spacing, // Espacio entre el título y la lista de contactos

    // Título de la sección

    text(
      fill: background_color,
      size: font_size_heading_4,
      weight: "light",
      font: font_family,
    )[#upper(title)],

    // Lista de elementos de contacto
    stack(
      dir: ttb,
      spacing: item_spacing,

      // Teléfono
      social_item("../assets/icons/phone-solid-full.svg", contact.at(
        "phone",
        default: none,
      )),

      // Email
      social_item(
        "../assets/icons/at-solid-full.svg",
        contact.at("email", default: none),
        url: if contact.at("email", default: none) != none {
          "mailto:" + contact.at("email")
        } else { none },
      ),

      // LinkedIn
      social_item(
        "../assets/icons/linkedin-in.svg",
        contact.at("linkedin", default: none),
        url: contact.at("linkedin_url", default: none),
      ),

      // GitHub
      social_item(
        "../assets/icons/github-brands-solid-full.svg",
        contact.at("github", default: none),
        url: contact.at("github_url", default: none),
      ),
    ),
  )
}
