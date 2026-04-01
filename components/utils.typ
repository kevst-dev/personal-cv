// --------------------------------------------------------------------------------
// Funciones de utilidad compartidas entre componentes.
// --------------------------------------------------------------------------------

#let colored-icon(path, hex_color, width_icon) = {
  // 1. Leer el archivo como texto (string)
  let svg_text = read(path)
  
  // 2. Inyectar el atributo 'fill' en la etiqueta <svg>
  let colored_svg = svg_text.replace("<svg", "<svg fill=\"" + hex_color + "\"")
  
  // 3. Convertir a bytes y renderizar
  image(bytes(colored_svg), width: width_icon)
}
