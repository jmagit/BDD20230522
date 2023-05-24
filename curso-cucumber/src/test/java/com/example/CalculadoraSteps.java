package com.example;

import static org.junit.jupiter.api.Assertions.assertEquals;

import io.cucumber.java.es.*;

public class CalculadoraSteps {
	Calculadora calc;
	int operando1, operando2, resultado;
	
	@Dado("que tengo la calculadora abierta")
	public void que_tengo_la_calculadora_abierta() {
	    calc = new Calculadora();
	}
	@Dado("esta inicializada")
	public void esta_inicializada() {
	    calc.inicializa();
	}
	@Dado("no he tocado nada")
	public void no_he_tocado_nada() {
	}
	@Cuando("introduzca un {int}")
	public void introduzca_un(Integer int1) {
	    operando1 = (int) int1;
	}
	@Cuando("despues introduzca un {int}")
	public void despues_introduzca_un(Integer int1) {
	    operando2 = (int) int1;
	}
	@Cuando("pida el resultado")
	public void pida_el_resultado() {
	    resultado = calc.suma(operando1, operando2);
	}
	@Entonces("en la pantalla debe aparecer un {int}")
	public void en_la_pantalla_debe_aparecer_un(Integer int1) {
	    assertEquals(int1, resultado);
	}}
