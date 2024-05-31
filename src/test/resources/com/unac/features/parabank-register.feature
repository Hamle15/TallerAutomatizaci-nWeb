Feature: Registrarse en parabank y verificar el registro
  Yo como usuario
  Necesito registrarme en la página parabank
  Para validar que el registro se realizo de manera correcta

  Scenario: Registrarse en parabank
    Given Quiero abrir la pagina parabank "https://parabank.parasoft.com/"
    When Ingreso a la opcion de Register
    When Ingreso los siguientes datos para mi registro: First Name: "Cloud", Last Name: "Sun", Address: "123 Antioquia", City: "Medellin", State: "Anystate", Zip Code: "12345", Phone: "123-456-7890", SSN: "123-45-6789", Username: "cloud", Password: "12345", Confirm: "12345"
    When Presiono el boton Open New Account y en el select escogemos "SAVINGS"
    When Presiono el boton Open New Account
    When Guardo el numero Your new account number
    Then Valido que la cuenta exista en la opcion de Accounts Overview
