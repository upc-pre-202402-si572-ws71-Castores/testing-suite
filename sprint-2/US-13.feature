Feature: Como usuario quiero añadir elementos a un checklist para organizar mejor mis tareas de transporte.

  Scenario: E01: Añadir un elemento al checklist
    Given el endpoint "api/v1/checklist" está disponible
    And el usuario tiene una tarea pendiente
    When se realiza una solicitud POST con los detalles del nuevo elemento
    Then el elemento se añade al checklist asociado al servicio de transporte.

  Examples:
  | Servicio ID | Elemento     |
  | 54321       | Revisar carga|
  | 98765       | Verificar ruta|

  Scenario: E02: Confirmar la adición del elemento
    Given el usuario ha añadido un elemento al checklist
    When se confirma la operación
    Then el sistema muestra un mensaje de éxito y el elemento aparece en la lista actualizada.

  Examples:
  | Usuario        | Confirmación |
  | Jorge Sánchez  | Elemento añadido correctamente |
  | María Guzmán   | Checklist actualizado |
