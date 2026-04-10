// --------------------------------------------------------------------------------
// Punto de entrada principal para tu CV. Aquí defines tus datos personales y el
// contenido.
// --------------------------------------------------------------------------------

#import "components/template.typ": cv

#show: cv.with(
  header_info: (
    name: "Kevin",
    surname: "Cardenas",
    role: "Data Scientist",
    linkedin_url: "https://www.linkedin.com/in/kevin-cardenas-163a01119",
  ),
  // Left panel
  contact: (
    phone: "+57 310 345 7875",
    email: "kevst-dev@protonmail.com",
    linkedin: "kevin-cardenas",
    linkedin_url: "https://www.linkedin.com/in/kevin-cardenas-163a01119",
    github: "kevst-dev",
    github_url: "https://github.com/kevst-dev",
  ),
  education: (
    (
      title: "Básica secundaria",
      years: "2017",
      institution: "Institución Educativa Integrado de Soacha",
    ),
    (
      title: "Técnico en programación de software",
      years: "2017",
      institution: "Servicio Nacional de Aprendizaje - SENA",
    ),
    (
      title: "Ingeniería de sistemas",
      years: "2018 - 2023",
      institution: "Corporación Universitaria Minuto de Dios",
    ),
    (
      title: "Certificación ISO 27001 - Como auditor líder",
      years: "2025",
      institution: "Certiprof",
    ),
  ),
  // Right panel
  profile: [
    *Software Engineer* especializado en el diseño de arquitecturas robustas y escalables para el procesamiento masivo de datos. Con *3 años de experiencia* profesional, me enfoco en la implementación de patrones de diseño como *Arquitectura Hexagonal* y *DDD* para construir pipelines ETL mantenibles y eficientes. Experto en automatización de infraestructura, cultura de testing y despliegues en entornos Linux/Docker.
  ],
  experience: (
    (
      role: "Analista de datos en Auditoría Interna",
      company: "Universidad de los Andes",
      dates: "03/09/2022 - Actualidad",
      phone: "(601) 3394949",
      description: [
        Lideré proyectos de análisis utilizando herramientas como *Python*. Ejecuté análisis exhaustivos para identificar patrones y anomalías, proponiendo soluciones efectivas. Mis habilidades en *Python* permitieron manipular datos, realizar *modelados* y visualizar resultados, contribuyendo con ideas innovadoras y soluciones estratégicas para la toma de decisiones en *auditoría* y revisión de procesos.
      ],
    ),
  ),
  title: "Mi CV Profesional",
)
