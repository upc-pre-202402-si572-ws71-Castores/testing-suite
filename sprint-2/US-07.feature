Feature: Como usuario quiero añadir una solicitud de servicio en la aplicación para gestionar mis necesidades de transporte.
  
  Scenario: E01: Añadir solicitud de servicio
    Given el endpoint "api/v1/service" está disponible
    And se requiere un punto de recojo, destino y tipo de vehículo
    When se envía una solicitud POST
    Then se devuelve un recurso de Servicio con los datos ingresados y el transportista asignado.

  Examples:
  | Punto de recojo | Destino   | Tipo de vehículo |
  | Lima            | Cusco     | Camión           |
  | Arequipa        | Puno      | Camioneta        |

  Scenario: E02: Confirmación de Solicitud
    Given el usuario ha completado el formulario de solicitud
    When hace clic en el botón "Enviar"
    Then se muestra un mensaje de confirmación y la solicitud aparece en el historial del usuario.

  Examples:
  | Usuario           | Botón de confirmación |
  | Carlos Sánchez    | Enviar                |
  | María Fernández   | Confirmar             |
