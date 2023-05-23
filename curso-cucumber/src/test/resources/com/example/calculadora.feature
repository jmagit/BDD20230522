# language: es

Característica: La calculadora debe sumar
	**Como** usuario **quiero** poder sumar dos numeros **para** hacer mis calculos
	
	Escenario: Sumar dos valores positivos
		Dado que tengo la calculadora abierta 
		Y esta inicializada
		Pero no he tocado nada
		Cuando introduzca un 2
		Y despues introduzca un 3
		Y pida el resultado
		Entonces en la pantalla debe aparecer un 5
		
	Escenario: Sumar dos valores negativos
		Dado que tengo la calculadora abierta 
		Y esta inicializada
		Pero no he tocado nada
		Cuando introduzca un -2
		Y despues introduzca un -3
		Y pida el resultado
		Entonces en la pantalla debe aparecer un -5		
		
	Escenario: Sumar un valor positivo con un valor negativo
		Dado que tengo la calculadora abierta 
		Y esta inicializada
		Pero no he tocado nada
		Cuando introduzca un 2
		Y despues introduzca un -3
		Y pida el resultado
		Entonces en la pantalla debe aparecer un -1
		

