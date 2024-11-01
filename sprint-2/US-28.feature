Feature: Como usuario quiero asegurarme de tener un registro de los objetos que serán transportados.

  Scenario: E01: Registro exitoso de objetos en el Check-in
    Given el usuario ha iniciado sesión en la aplicación
    And se encuentra en la sección de Check-in
    When el usuario ingresa la lista de objetos que serán transportados
    And hace clic en el botón "Registrar"
    Then el sistema debe almacenar correctamente la información de los objetos
    And debe mostrar un mensaje de confirmación que indique que el registro ha sido exitoso.

  Examples:
  | Usuario         | Objeto          | Cantidad |
  | Luisa Martínez  | Televisores     | 10       |
  | Pedro Gómez     | Refrigeradores  | 5        |

  Scenario: E02: Error en el registro de objetos debido a datos faltantes
    Given el usuario ha iniciado sesión en la aplicación
    And se encuentra en la sección de Check-in
    When el usuario intenta registrar objetos
    But no completa toda la información requerida (como nombre del objeto o cantidad)
    Then el sistema debe mostrar un mensaje de error indicando que los campos obligatorios están incompletos
    And no debe permitir el registro hasta que se completen todos los datos.

  Examples:
  | Usuario          | Campo faltante     | Mensaje de error                |
  | Sofía Rodríguez  | Cantidad           | Falta ingresar la cantidad      |
  | Andrés Ramírez   | Nombre del objeto  | Falta ingresar el nombre del objeto |
