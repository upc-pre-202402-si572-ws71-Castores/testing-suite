Feature: Como usuario quiero añadir una persona encargada a un servicio de transporte para gestionar mejor el seguimiento del servicio.

  Scenario: E01: Añadir una persona encargada
    Given el endpoint "api/v1/person-in-charge" está disponible
    And el usuario tiene los datos de la persona encargada
    When se realiza una solicitud POST con los detalles de la persona encargada
    Then la persona es asignada al servicio y se registra su información en la base de datos.

  Examples:
  | Servicio ID | Nombre Encargado | Rol     |
  | 55555       | Carlos Mendoza   | Supervisor |
  | 66666       | Ana López        | Coordinador |

  Scenario: E02: Confirmar asignación de la persona encargada
    Given el usuario ha añadido una persona encargada
    When se confirma la operación
    Then el sistema muestra un mensaje de éxito y la persona asignada aparece en la lista de responsables del servicio.

  Examples:
  | Usuario         | Confirmación  |
  | Marta García    | Persona asignada |
  | Juan Torres     | Encargado añadido |
