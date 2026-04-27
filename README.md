# 📑 CV Data-Centric Software Engineer (Typst)

Este repositorio contiene mi currículum profesional, diseñado y construido utilizando **Typst**, un sistema de composición tipográfica moderno que ofrece la potencia de LaTeX con la agilidad de herramientas contemporáneas.

## 🚀 Arquitectura Técnica

El proyecto ha sido diseñado bajo principios de ingeniería de software, priorizando la modularidad y la mantenibilidad:

- **Diseño Modular:** Cada sección del CV (Experiencia, Educación, Competencias, etc.) es un componente `.typ` independiente en la carpeta `components/`.
- **ATS-Friendly:** Estructura optimizada para ser escaneada correctamente por sistemas automáticos de reclutamiento (ATS).
- **Separación de Concernimientos:** Los datos personales y profesionales residen en `main.typ`, mientras que la lógica de diseño y tokens visuales están en `template.typ` y `theme.typ`.
- **Developer Experience (DX):** Uso de `just` para la automatización de tareas y `mise` para la gestión del entorno.

## 🛠️ Stack de Herramientas

- **Typst:** Motor de composición tipográfica para generar el PDF.
- **Just:** Command runner para simplificar la compilación (`just run`).
- **Mise/rtx:** Gestión de versiones de herramientas y entorno.
- **Pre-commit:** Hooks para asegurar la calidad del código y limpieza antes de cada commit.
- **Cspell:** Corrector ortográfico técnico para evitar errores en el documento final.

## 📦 Cómo Empezar

### Requisitos Previos

Asegúrate de tener instaladas las siguientes herramientas:
- [Typst CLI](https://github.com/typst/typst)
- [Just](https://github.com/casey/just) (Opcional, pero recomendado)

### Compilación

Para generar el CV en formato PDF, simplemente ejecuta:

```bash
just run
```

El resultado se guardará automáticamente en `output/cv.pdf`.

## 📁 Estructura del Proyecto

```text
├── components/       # Secciones modulares del CV
├── assets/           # Imágenes e iconos
├── fonts/            # Tipografías personalizadas (Poppins)
├── output/           # Directorio de salida del PDF (ignorado por git)
├── main.typ          # Punto de entrada y datos personales
├── template.typ      # Lógica de diseño y layout
└── theme.typ         # Tokens de diseño (Colores, tamaños, fuentes)
```

## 🎨 Personalización

Si deseas utilizar este CV como base para el tuyo:
1. Modifica tus datos profesionales en `main.typ`.
2. Ajusta los colores y espaciados globales en `theme.typ`.

---
*Diseñado por Kevin Cardenas.*
