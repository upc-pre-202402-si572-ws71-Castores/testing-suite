Feature: Como desarrollador, quiero conectar sensores IoT a la plataforma para recibir datos en tiempo real.

    Scenario: E01: Conexión de sensores IoT a la plataforma
        Given el desarrollador ha configurado correctamente los sensores
        When los sensores envían datos en tiempo real al backend
        Then el sistema muestra estos datos en la plataforma para su monitoreo

    Examples:
    | Sensor ID | Plataforma | Estado de conexión |
    | Sensor123 | IoT Monitoring App | Conectado |
    | Sensor456 | IoT Dashboard | Conectado |

    Scenario: E02: Fallo en la conexión de los sensores IoT
        Given el desarrollador ha configurado los sensores
        And la conexión a la red es inestable
        When los sensores intentan enviar datos en tiempo real
        Then se pierde la conexión intermitentemente
        And el sistema muestra un mensaje de error en la plataforma, indicando problemas de conectividad

    Examples:
    | Sensor ID | Error mostrado | Estado de conexión |
    | Sensor123 | Conexión inestable | Desconectado |
    | Sensor456 | Red no disponible | Intermitente |