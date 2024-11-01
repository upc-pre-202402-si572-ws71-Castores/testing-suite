Feature: Como usuario quiero registrar mis vehículos en la plataforma para administrar la información de cada vehículo.

  Scenario: E01: Registrar un nuevo vehículo
    Given el endpoint "api/v1/vehicles" está disponible
    And el usuario tiene los datos del vehículo
    When se envía una solicitud POST con la información del vehículo
    Then se devuelve un recurso de Vehículo con un ID único y los detalles registrados.

  Examples:
  | Marca  | Modelo | Placa     |
  | Toyota | Hilux  | ABC-123   |
  | Nissan | Navara | XYZ-789   |

  Scenario: E02: Actualizar información de un vehículo
    Given el usuario tiene un vehículo registrado en el sistema
    When se envía una solicitud PUT con los detalles actualizados
    Then se devuelve una confirmación de actualización exitosa.

  Examples:
  | Marca   | Modelo | Placa    |
  | Ford    | Ranger | DEF-456  |
  | Hyundai | Tucson | GHI-321  |
