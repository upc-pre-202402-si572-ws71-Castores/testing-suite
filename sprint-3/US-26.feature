Feature: Como usuario de la aplicación, quiero que el sensor capture y envíe los datos de peso a la aplicación web o móvil para monitorear el estado de los productos transportados.

    Scenario: E01: Captura y envío de datos de peso
        Given el transporte lleva instalado un dispositivo IoT
        When el dispositivo detecta el peso de los productos transportados
        Then envía los datos de peso en tiempo real al sistema de monitoreo
        And el supervisor puede revisar estos datos para evitar sobrecarga

    Examples:
    | Transporte ID | Peso detectado | Estado del sistema |
    | Vehículo001   | 500 kg         | Normal |
    | Vehículo002   | 1200 kg        | Sobrecarga |

    Scenario: E02: Error en la captura de datos
        Given el dispositivo tiene un problema técnico
        When intenta capturar los datos de peso
        Then el sistema muestra una alerta de error
        And el usuario puede tomar medidas para resolver el problema

    Examples:
    | Transporte ID | Error mostrado        | Acciones sugeridas |
    | Vehículo001   | Sensor no responde    | Verificar calibración|
    | Vehículo002   | Datos inconsistentes  | Revisar conexiones |