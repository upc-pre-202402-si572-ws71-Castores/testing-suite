Feature: Como usuario quiero obtener información del transportista asignado para un servicio.

  Scenario: E01: Obtener transportista asignado
    Given el endpoint "api/v1/assigned-transporter" está disponible
    And el usuario tiene un servicio activo
    When se realiza una solicitud GET con el ID del servicio
    Then se devuelve un recurso con los datos del transportista asignado.

  Examples:
  | Servicio ID | Transportista |
  | 12345       | Juan Pérez    |
  | 67890       | María López   |

  Scenario: E02: Ver detalles del transportista asignado
    Given el usuario desea ver detalles adicionales del transportista
    When accede al perfil del transportista desde el historial de servicios
    Then se muestran los detalles del transportista asignado.

  Examples:
  | Usuario       | Transportista |
  | Carlos Ortiz  | Pedro Sánchez |
  | Ana Morales   | Lucía Gómez   |
