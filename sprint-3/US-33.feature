Feature: Como desarrollador, quiero enviar la información del sensor mediante una solicitud POST al API para almacenar la información en el backend.

    Scenario: E01: Enviar datos del sensor
        Given el endpoint api/v1/sensor/ está disponible
        When una solicitud POST se realiza con el parámetro del código del sensor y valores de temperatura, ubicación, presión y humedad
        Then se recibe una respuesta con estado 204

    Examples:
    | Sensor ID | Datos enviados | Estado de respuesta |
    | Sensor001 | 25°C, 60% humedad | 204 No Content |
    | Sensor002 | 30°C, 55% humedad| 204 No Content |