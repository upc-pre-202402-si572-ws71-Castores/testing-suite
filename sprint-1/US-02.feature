Feature: Como visitante quiero ver los beneficios de usar TransportApp para decidir si me conviene.
Scenario: E01: El visitante visualiza los beneficios clave.

    Given el visitante desea conocer los beneficios de la plataforma
    And ha navegado a la sección de beneficios
    When visualiza los beneficios
    Then se resaltan los beneficios clave
    And el visitante puede evaluar si TransportApp satisface sus necesidades.

Examples:
| Nombre del visitante	| Beneficio |
| Martín Pérez	| Conveniencia |
| Sandra Ríos García	| Seguridad |
