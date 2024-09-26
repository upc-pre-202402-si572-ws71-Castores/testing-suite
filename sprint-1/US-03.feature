Feature: Como visitante quiero comparar diferentes planes de servicio en la página de inicio para elegir el que mejor se ajuste a mis necesidades.
Scenario: E01: El visitante compara planes de servicio.

    Given el visitante desea comparar los planes disponibles
    And ha accedido a la tabla comparativa en la página de inicio
    When visualiza la tabla
    Then se muestran las diferencias clave entre los planes, incluyendo precios y características
    And el visitante puede seleccionar el plan más adecuado.

Examples:
| Nombre del visitante	| Tipo de plan |	Precio |
| Mario Gómez Sánchez	| Plan Premium |	$50 |
| Ana María Salinas	| Plan Básico |	$30 |

Scenario: E02: El visitante ve un llamado a la acción para transportistas.

    Given el visitante está en la sección de planes
    And ha hecho clic en una de las tarifas disponibles
    Then se muestra un llamado a la acción con un formulario de registro para agencias de transporte o transportistas independientes.

Examples:
| Nombre del visitante	| Tarifa seleccionada |
| Jorge Martínez	| Plan Básico |
| Beatriz Ramírez Torres	| Plan Estándar |
