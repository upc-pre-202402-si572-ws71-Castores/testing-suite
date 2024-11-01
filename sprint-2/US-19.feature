Feature: Como usuario de la aplicación quiero iniciar sesión en la aplicación para acceder a sus funcionalidades.

  Scenario: E01: Inicio de Sesión Exitoso
    Given el usuario de la aplicación desea iniciar sesión
    And está en la vista inicial de la aplicación
    When hace clic en el botón "Iniciar sesión"
    Then ingresa sus credenciales correctas y accede a las funcionalidades de la aplicación.

  Examples:
  | Usuario          | Botón de acción |
  | María Gómez      | Iniciar sesión  |
  | Pedro Ramírez    | Continuar       |

  Scenario: E02: Error en el Inicio de Sesión por Credenciales Incorrectas
    Given el usuario de la aplicación desea iniciar sesión
    And está en la vista inicial de la aplicación
    When hace clic en el botón "Iniciar sesión" con credenciales incorrectas
    Then el sistema muestra un mensaje de error indicando que las credenciales son incorrectas.

  Examples:
  | Usuario          | Mensaje de error      |
  | José Torres      | Credenciales incorrectas |
  | Laura Ortiz      | Usuario no encontrado  |
