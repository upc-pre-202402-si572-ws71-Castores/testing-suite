Feature: Como usuario quiero agregar una solicitud de servicio en la aplicación para gestionar mis necesidades de transporte.
Scenario: E01: El usuario agrega una solicitud de servicio.

    Given el endpoint "api/v1/service" está disponible
    When se envía una solicitud POST con el punto de recogida, destino y tipo de vehículo
    Then se devuelve un recurso de servicio con los datos ingresados y el transportista asignado.

Examples:
| Punto de recogida	| Destino	| Tipo de vehículo |
| Av. Larco 123	| Jirón de la Unión	| Furgoneta |
| Calle 50, Miraflores	| Plaza San Martín	| Camioneta |

Scenario: E02: Confirmación de la solicitud de servicio.

    Given el usuario ha completado el formulario de solicitud de servicio
    When presiona el botón "Enviar"
    Then se muestra un mensaje de confirmación
    And la solicitud aparece en el historial del usuario.

Examples:
| Nombre del usuario	| Estado de la solicitud |
| Andrés Mejía	| Confirmado |
| Sofía Delgado Romero	| Confirmado |
