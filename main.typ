// --------------------------------------------------------------------------------
// Punto de entrada principal para tu CV. Aquí defines tus datos personales y el
// contenido.
// --------------------------------------------------------------------------------

#import "components/template.typ": cv

#show: cv.with(
  header_info: (
    name: "Kevin",
    surname: "Cardenas",
    role: "Data Engineer",
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
    *Software Engineer* especializado en el diseño de arquitecturas robustas y escalables para el procesamiento masivo de datos. Con *3 años de experiencia*, me enfoco en la implementación de patrones como *Arquitectura Hexagonal* para construir pipelines ETL mantenibles. Experto en automatización de infraestructura, cultura de testing (Pytest) y despliegues en entornos Linux/Docker.
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
      ],
    ),
  ),
  skills: (
    (
      category: "Architecture & Design",
      items: ("Arquitectura Hexagonal", "Clean Code", "SOLID"),
    ),
    (
      category: "Backend Development",
      items: ("Python", "SQL", "Bash", "Pytest", "CI/CD"),
    ),
    (
      category: "DevOps & Systems",
      items: ("Linux Server Admin", "Docker", "Git"),
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
