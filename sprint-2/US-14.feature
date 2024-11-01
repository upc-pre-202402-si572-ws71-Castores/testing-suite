Feature: Como usuario quiero eliminar elementos del checklist para mantenerlo actualizado.

  Scenario: E01: Eliminar un elemento del checklist
    Given el endpoint "api/v1/checklist/{id}" está disponible
    And el usuario tiene un elemento en el checklist
    When se realiza una solicitud DELETE con el ID del elemento
    Then el sistema elimina el elemento de la lista.

  Examples:
  | Elemento ID |
  | 111         |
  | 222         |

  Scenario: E02: Confirmar eliminación
    Given el usuario ha solicitado eliminar un elemento
    When se confirma la operación
    Then el sistema muestra un mensaje de confirmación y el elemento ya no aparece en la lista.

  Examples:
  | Usuario       | Confirmación |
  | Pablo Herrera | Eliminado correctamente |
  | Laura Vargas  | Elemento removido |
