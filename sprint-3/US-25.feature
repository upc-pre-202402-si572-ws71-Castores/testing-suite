Feature: Como usuario de la aplicación, quiero que el sensor capture y envíe los datos de temperatura a la aplicación web o móvil, para monitorear el estado de los productos transportados.

    Scenario: E01: Captura y envío de datos de temperatura
        Given el transporte lleva instalado un dispositivo IoT
        When el dispositivo detecta la temperatura dentro del transporte
        Then envía los datos de temperatura en tiempo real al sistema de monitoreo
        And el supervisor puede revisar estos datos para detectar anomalías

    Examples:
    | Transporte ID | Temperatura detectada | Estado del sistema |
    | Vehículo001 | 5°C | Normal |
    | Vehículo002 | 15°C | Anomalía detectada |

    Scenario: E02: Error en la captura de datos
        Given el dispositivo tiene un problema técnico
        When intenta capturar los datos de temperatura
        Then el sistema muestra una alerta de error
        And el usuario puede tomar medidas para resolver el problema

    Examples:
    | Transporte ID | Error mostrado | Acciones sugeridas |
    | Vehículo001 | Sensor no responde | Verificar conexión |
    | Vehículo002 | Datos incompletos | Reemplazar sensor |