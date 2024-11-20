Feature: Como desarrollador, quiero obtener la información del sensor mediante una solicitud GET al API para mostrar la información en la aplicación web o móvil.

    Scenario: E01: Recibir datos del sensor
        Given el endpoint api/v1/sensor/ está disponible
        When se realiza una solicitud GET con el parámetro del código del sensor
        Then se recibe una respuesta con estado 200 y un recurso de tipo Sensor con valores para temperatura, ubicación, presión y humedad

    Examples:
    | Sensor ID | Estado de respuesta | Datos recibidos |
    | Sensor001 | 200 OK | 25°C, Lima, 1013 hPa, 60% humedad |
    | Sensor002 | 200 OK | 30°C, Cusco, 1020 hPa, 55% humedad |