Feature: Como visitante quiero conocer más sobre los servicios que ofrece TransportApp para evaluar su utilidad.
Scenario: E01: El visitante visualiza la información sobre los servicios.

    Given el visitante desea conocer los servicios
    And ha accedido a la sección "Acerca de" en la página de inicio
    When el visitante revisa el contenido
    Then se despliega la información completa de los servicios ofrecidos.

Examples:
| Nombre del visitante	| Sección de la página|
| Carlos Mendoza	| Acerca de |
| Luisa Fernández López	| Acerca de |

Scenario: E02: El visitante visualiza un llamado a la acción.

    Given el visitante está en la sección "Acerca de"
    When hace scroll en la sección
    Then se despliega un llamado a la acción para registrarse en la aplicación web.

| Nombre del visitante	| Botón de acción|
| Camila Rodríguez	|¡Regístrate ahora! |
| José Antonio Ruiz	| Empieza hoy mismo |
