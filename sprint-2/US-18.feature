Feature: Como transportista quiero acceder a mi cuenta de usuario para verificar mi identidad y ver los datos del producto transportado.

  Scenario: E01: Ingreso incorrecto de datos
    Given el transportista no está registrado
    And está en la pantalla de acceso
    When ingresa la contraseña y/o usuario incorrecto
    Then la página muestra un mensaje de "Datos incorrectos".

  Examples:
  | Transportista     | Mensaje            |
  | Pedro Gutiérrez   | Datos incorrectos  |
  | Juan Martínez     | Usuario no encontrado|

  Scenario: E02: Ingreso correcto de datos
    Given el transportista está registrado
    And está en la pantalla de acceso
    When ingresa la contraseña y/o usuario correcto
    Then es enviado a la página principal y se registra como Transportista.

  Examples:
  | Transportista   | Confirmación |
  | Samuel Rodríguez| Bienvenido   |
  | Luis López      | Acceso exitoso |
