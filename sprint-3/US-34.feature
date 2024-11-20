Feature: Como transportista, quiero recibir una notificación para saber si se concluyó el viaje exitosamente.

    Scenario: E01: Notificación de un viaje concluido en la sección principal
        Given el conductor ha iniciado sesión en la aplicación
        And se ha concluido un viaje asignado
        When el conductor ingresa a la pantalla principal de la aplicación
        Then el sistema debe mostrar automáticamente una notificación en la parte superior o en un banner visible indicando que el viaje ha sido concluido
        And la notificación debe mostrar detalles como la fecha y hora de conclusión del viaje y el estado (exitoso o con incidencias)

    Examples:
    | Conductor | Fecha y hora | Estado del viaje |
    | Carlos Sánchez | 20/11/2024 10:00 | Exitoso |
    | Ana Martínez | 20/11/2024 15:00 | Con incidencias |

    Scenario: E02: Notificación de un viaje concluido en la sección Notificaciones
        Given el conductor ha iniciado sesión en la aplicación
        And el viaje asignado ha sido concluido
        When el conductor hace clic en el ícono de "Notificaciones" en la interfaz
        Then el sistema debe listar todas las notificaciones relevantes
        And muestra la notificación del viaje concluido con información detallada

    Examples:
    | Conductor | Detalles de la notificación |
    | Carlos Sánchez | Viaje Lima-Cusco, 20/11/2024, Exitoso |
    | Ana Martínez | Viaje Arequipa-Puno, 20/11/2024, Con incidencias |

