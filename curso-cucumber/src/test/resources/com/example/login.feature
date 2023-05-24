# language: es
Característica: Autenticacion ante el sistema

  Antecedentes: 
    Dado que tengo abierto el navegado
    Y estoy en la pagina principal

  Escenario: Autenticar como administrador
    Cuando introduzca el usuario 'adm@kk.kk' y la contraseña 'P@$$w0rd'
    Y le de a enviar
    Entonces en la pagina aparecera el saludo 'Hola Administrador'
