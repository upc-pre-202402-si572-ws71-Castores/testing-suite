Feature: Como visitante quiero acceder a una sección de preguntas frecuentes (FAQ) en la página de inicio para resolver dudas comunes antes de registrarme.
Scenario: E01: El visitante accede a la sección de preguntas frecuentes.

    Given el visitante tiene preguntas comunes sobre TransportApp
    And ha navegado a la sección de preguntas frecuentes en la página de inicio
    When revisa las preguntas
    Then se muestran las preguntas y respuestas más frecuentes
    And el visitante puede resolver sus dudas antes de registrarse.

Examples:
| Nombre del visitante	| Tipo de pregunta |
| Javier Morales	| Registro |
| Carla Navarro	| Métodos de pago |