Feature: Como cliente quiero acceder a mi cuenta de usuario para verificar mi identidad y ver los datos del producto transportado.

  Scenario: E01: Ingreso incorrecto de datos
    Given el cliente no está registrado
    And está en la pantalla de acceso
    When ingresa la contraseña y/o usuario incorrecto
    Then la página muestra un mensaje de "Datos incorrectos".

  Examples:
  | Cliente         | Mensaje            |
  | Felipe Gómez    | Datos incorrectos  |
  | Ana Sánchez     | Usuario no encontrado|

  Scenario: E02: Ingreso correcto de datos
    Given el cliente está registrado
    And está en la pantalla de acceso
    When ingresa la contraseña y/o usuario correcto
    Then es enviado a la página principal y se registra como Cliente.

  Examples:
  | Cliente         | Confirmación |
  | Raúl Pérez      | Bienvenido   |
  | Lorena Gutiérrez| Acceso exitoso |
