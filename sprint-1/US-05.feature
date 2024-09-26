Feature: Como visitante quiero leer testimonios de otros clientes en la página de inicio para conocer sus experiencias con TransportApp.
Scenario: E01: El visitante visualiza los testimonios de clientes.

    Given el visitante desea leer testimonios
    And ha navegado a la sección de testimonios en la página de inicio
    When revisa los testimonios
    Then se muestran opiniones verificadas de los clientes
    And el visitante puede entender mejor las experiencias de otros usuarios.

Examples:
| Nombre del visitante	| Testimonio |
| Ricardo López	| Excelente servicio |
| Paola Gutiérrez Díaz	| Muy satisfecho |