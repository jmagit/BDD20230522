# language: es

Característica: La calculadora debe sumar
	**Como** usuario **quiero** poder sumar dos numeros **para** hacer mis calculos
	
	Antecedentes:
		Dado que tengo la calculadora abierta 
		Y esta inicializada
		
	Escenario: Sumar dos valores positivos
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
		
	Esquema del escenario: Sumar dos valores
		Cuando introduzca un <op1>
		Y despues introduzca un <op2>
		Y pida el resultado
		Entonces en la pantalla debe aparecer un <rslt>
		
		Ejemplos:
			| op1 | op2 | rslt |
			| 2 | 3 | 5 |
			| -1 | 2 | 1 |
			| 2 | -2 | 0 |		
			| -2 | -2 | -4 |		
			| 0.1 | 0 | 0 |		
		

