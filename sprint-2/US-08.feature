Feature: Como usuario quiero acceder a un historial de mis servicios solicitados para revisar el estado de mis solicitudes.

  Scenario: E01: Acceder al historial de servicios
    Given el usuario ha realizado varias solicitudes de servicio
    And está en la sección de historial de servicios
    When navega en el historial
    Then se muestran todas las solicitudes pasadas con sus estados correspondientes.

  Examples:
  | Usuario         | Estado   |
  | Juan Pérez      | Entregado|
  | Ana Gutiérrez   | Pendiente|

  Scenario: E02: Ver detalles de una solicitud
    Given el usuario desea obtener más información sobre una solicitud específica
    When hace clic en la solicitud correspondiente
    Then se muestran todos los detalles relevantes de la solicitud.

  Examples:
  | Usuario         | Solicitud ID |
  | Jorge Salinas   | 12345        |
  | Carla Morales   | 67890        |
