Feature: Como desarrollador quiero almacenar y gestionar datos en tiempo real sobre la ubicación y condiciones de la carga.

  Scenario: E01: Almacenar datos de ubicación
    Given el endpoint "api/v1/locations" está disponible
    And un sensor IoT está enviando datos
    When se recibe una solicitud POST con datos de ubicación
    Then los datos se almacenan correctamente en la base de datos.

  Examples:
  | Sensor ID | Ubicación      |
  | 101       | -12.046374, -77.042793 |
  | 202       | -13.532, -71.967  |

  Scenario: E02: Mostrar condiciones de la carga
    Given el endpoint "api/v1/cargo-conditions" está disponible
    When el sistema recibe datos de temperatura y humedad
    Then los datos se muestran en el panel de control en tiempo real.

  Examples:
  | Sensor ID | Temperatura | Humedad |
  | 303       | 22°C        | 60%     |
  | 404       | 18°C        | 70%     |
