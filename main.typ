// --------------------------------------------------------------------------------
// Punto de entrada principal para tu CV. Aquí defines tus datos personales y el
// contenido.
// --------------------------------------------------------------------------------

#import "components/template.typ": cv

#show: cv.with(
  header_info: (
    name: "Kevin",
    surname: "Cardenas",
    role: "Data Analyst",
    source_code_url: "https://github.com/kevst-dev/personal-cv",
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
    *Data Analyst* con base sólida en ingeniería de datos y *3 años de experiencia* construyendo pipelines confiables que alimentan tableros en *Power BI* y modelos ad-hoc en *Pandas, Polars y PySpark*. Combino prácticas de *arquitectura hexagonal* y automatización *CI/CD* para entregar análisis reproducibles sobre *Databricks* y entornos Linux/Docker, traduciendo señales complejas en decisiones accionables para negocio.
  ],
  experience: (
    (
      role: "Analista de Datos en Auditoría Interna",
      company: "Universidad de los Andes",
      dates: "03/09/2022 - Actualidad",
      phone: "(601) 3394949",
      description: [
        - Lideré la transformación tecnológica del área mediante el diseño de *Pipelines ETL* desde cero bajo *Arquitectura Hexagonal*, sustituyendo procesos manuales por flujos automatizados.
        - Implementé flujos de *CI/CD* y administración de contenedores *Docker*, garantizando la integridad de los datos y estableciendo una *cultura de testing rigurosa* con Pytest.
        - Actué como puente técnico para traducir requerimientos de negocio en procesos automatizados y seguros, enfocados en la detección de anomalías y gestión de riesgos.
        - Diseñé tableros ejecutivos en *Power BI* y reportes automatizados en *Pandas*, reduciendo tiempos de preparación de hallazgos para auditoría.
      ],
    ),
  ),
  skills: (
    (
      category: "Analítica & BI",
      items: ("Power BI", "Pandas", "Polars", "SQL"),
    ),
    (
      category: "Plataformas de Datos",
      items: ("PySpark", "Databricks", "Delta Lake", "ETL/ELT"),
    ),
    (
      category: "DevOps & Calidad",
      items: (
        "Arquitectura Hexagonal",
        "Bash",
        "CI/CD",
        "Pytest",
        "Docker",
        "Linux Server Admin",
      ),
    ),
  ),
  soft_skills: (
    (
      name: "Traducción de Requerimientos",
      evidence: "Conversión de necesidades de negocio en procesos automatizados con entregables claros.",
    ),
    (
      name: "Liderazgo Técnico",
      evidence: "Experiencia liderando y formando equipos bajo estándares de calidad de software.",
    ),
    (
      name: "Cultura de Calidad",
      evidence: "Aseguramiento mediante testing riguroso (Unit/Integration) y flujos de CI/CD.",
    ),
  ),
  languages: (
    (name: "Inglés", level: "Técnico"),
    (name: "Español", level: "Nativo"),
  ),
  title: "Mi CV Profesional",
)
