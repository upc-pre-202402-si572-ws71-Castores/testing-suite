Feature: Como cliente quiero acceder a mi cuenta de usuario para verificar mi identidad y ver los detalles del transporte.
Scenario: E01: Detalles de inicio de sesión incorrectos.

    Given el cliente no está registrado
    And está en la pantalla de inicio de sesión
    When ingresa un nombre de usuario y/o contraseña incorrectos
    Then la página muestra un mensaje de "Datos incorrectos".

Examples:
| Nombre de usuario	| Contraseña	| Mensaje de error |
| cliente@test.com	| pass1234	| Datos incorrectos |
| mariana.gomez@correo.pe	| abcdefg123	| Datos incorrectos |

Scenario: E02: Detalles de inicio de sesión correctos.

    Given el cliente no está registrado
    And está en la pantalla de inicio de sesión
    When ingresa el nombre de usuario y la contraseña correctos
    Then el usuario es redirigido a la página principal
    And se registra como Cliente
    And se envía un correo de confirmación a la dirección de correo asociada.

Examples:
| Nombre de usuario	| Contraseña	| Correo de confirmación |
| cliente@test.com	| contrasegura1	| Enviado |
| luis.perez@correo.com	| 123abcDEF	| Enviado |
