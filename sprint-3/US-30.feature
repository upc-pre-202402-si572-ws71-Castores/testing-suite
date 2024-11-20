Feature: Como usuario de la aplicación, quiero poder recibir información del transporte para tener constancia de la situación del producto transportado.

    Scenario: E01: Acceso a la pantalla de datos
        Given el usuario se encuentra en la pantalla principal
        When el usuario selecciona la opción de visualizar la información
        Then el usuario es enviado a una pantalla donde se visualiza en tiempo real la temperatura, peso, lugar de salida y llegada, horario estimado de salida y llegada

    Examples:
    | Usuario | Información solicitada | Estado del sistema |
    | Juan Pérez | Temperatura y peso | Datos disponibles |
    | María Gómez | Horario y ubicación | Datos disponibles |

    Scenario: E02: Datos no disponibles
        Given el usuario se encuentra en la pantalla principal
        When selecciona la opción de visualizar la información, pero el sistema no puede obtener los datos de los sensores debido a una interrupción en la conexión
        Then el sistema debe mostrar un mensaje indicando que los datos no están disponibles en ese momento

    Examples:
    | Usuario | Error mostrado | Acción sugerida |
    | Juan Pérez | Conexión interrumpida | Reintentar más tarde |
    | María Gómez | Datos no disponibles | Verificar sensores |