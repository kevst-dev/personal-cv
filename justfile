# Justfile para compilar el CV con Typst

# Directorios
FONTS_DIR := "fonts"
OUTPUT_DIR := "output"
MAIN_FILE := "main.typ"
PDF_OUTPUT := "output/cv.pdf"

typst:= "mise exec -- typst"

# Muestra la lista de comandos disponibles
default:
    just --list

# Instalar dependencias (si es necesario)
install:
    @echo "Instalando dependencias..."
    @mise install

check:
    mise exec -- pre-commit run --all-files

# Compilar el CV
run:
    @mkdir -p {{OUTPUT_DIR}}
    {{ typst }} compile --font-path {{FONTS_DIR}} {{MAIN_FILE}} {{PDF_OUTPUT}}

# Listar fuentes detectadas (para depuración)
fonts:
    {{ typst }} fonts --font-path {{FONTS_DIR}}

# Limpiar archivos generados
clean:
    rm -rf {{OUTPUT_DIR}}/*.pdf
