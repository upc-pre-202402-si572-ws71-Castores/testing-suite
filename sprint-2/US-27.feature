Feature: Como usuario quiero ser capaz de realizar una solicitud de servicio de transporte para poder contratar un transportista que cubra mis necesidades de envío de productos en condiciones adecuadas.

  Scenario: E01: Solicitud exitosa
    Given el usuario está en la pantalla de solicitud de servicio de transporte
    And ha ingresado los detalles del envío, incluyendo lugar de salida, lugar de llegada, horario de salida y llegada, temperatura ideal y peso de la carga dentro de los rangos permitidos
    When selecciona un transportista disponible y confirma la solicitud
    Then el sistema debe mostrar una confirmación de la solicitud y los detalles del tipo de servicio solicitado.

  Examples:
  | Usuario         | Transportista   | Lugar de salida | Lugar de llegada | Peso   | Temperatura |
  | Juan Pérez      | Transportista A | Lima            | Arequipa         | 100kg  | 5°C         |
  | María González  | Transportista B | Cusco           | Lima             | 200kg  | 2°C         |

  Scenario: E02: Datos fuera del rango permitido
    Given el usuario está en la pantalla de solicitud de servicio de transporte
    When ingresa los detalles del envío, pero uno o más datos están fuera de los rangos permitidos (como peso o temperatura)
    Then el sistema debe mostrar un mensaje de error indicando que los datos ingresados están fuera de los límites permitidos
    And sugerir modificar los valores para que se ajusten a los rangos válidos antes de poder continuar con la solicitud.

  Examples:
  | Usuario         | Peso   | Temperatura | Mensaje de error                   |
  | Carlos Sánchez  | 300kg  | 10°C        | Peso excede el límite permitido     |
  | Ana Morales     | 50kg   | -5°C        | Temperatura fuera del rango válido  |
