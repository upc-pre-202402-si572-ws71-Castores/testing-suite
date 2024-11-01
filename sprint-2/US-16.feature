Feature: Como usuario quiero generar un reporte de servicio para obtener un resumen completo de los detalles del transporte.

  Scenario: E01: Generar reporte de servicio
    Given el endpoint "api/v1/service-report" está disponible
    And el usuario tiene un servicio completado
    When se realiza una solicitud POST con el ID del servicio
    Then se genera un reporte en formato PDF con los detalles del servicio.

  Examples:
  | Servicio ID |
  | 121212      |
  | 131313      |

  Scenario: E02: Descargar reporte de servicio
    Given el reporte ha sido generado
    When el usuario hace clic en el botón de descarga
    Then el sistema permite descargar el archivo PDF con el reporte del servicio.

  Examples:
  | Usuario        | Botón de descarga |
  | Carla Ruiz     | Descargar PDF     |
  | Jorge Ramírez  | Descargar informe |
