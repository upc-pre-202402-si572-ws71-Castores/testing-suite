Feature: Como visitante quiero contactar con TransportApp desde la página de inicio para resolver dudas sobre el servicio.
Scenario: E01: El visitante envía un mensaje desde la sección de contacto.

    Given el visitante desea contactar con TransportApp
    And ha llenado el formulario de contacto
    When presiona el botón "Enviar"
    Then se muestra un mensaje de confirmación.

Examples:
| Nombre del visitante	| Estado del mensaje |
| Diego Vargas	| Enviado |
| Valentina Ortega Ruiz	| Enviado |
