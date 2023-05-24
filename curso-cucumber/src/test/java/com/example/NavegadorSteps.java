package com.example;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.time.Duration;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import io.cucumber.java.After;
import io.cucumber.java.es.*;

public class NavegadorSteps {
	WebDriver driver;
	@Dado("que tengo abierto el navegado")
	public void que_tengo_abierto_el_navegado() {
		driver = new ChromeDriver();
	}

	@Dado("estoy en la pagina principal")
	public void estoy_en_la_pagina_principal() {
		driver.get("http://localhost:8181/");
	}

	@Cuando("introduzca el usuario {string} y la contraseña {string}")
	public void introduzca_el_usuario_y_la_contraseña(String usr, String pwd) {
	    driver.findElement(By.id("txtUsuario")).sendKeys(usr);
	    driver.findElement(By.id("txtPassword")).sendKeys(pwd);
	}

	@Cuando("le de a enviar")
	public void le_de_a_enviar() {
	    driver.findElement(By.id("btnSendLogin")).click();
	}

	@Entonces("en la pagina aparecera el saludo {string}")
	public void en_la_pagina_aparecera_el_saludo(String saludo) throws InterruptedException {
		driver.wait(2000);
	    assertEquals(saludo, driver.findElement(By.id("userData")).getText());
	}

	@After
	public void cierraNavegador() {
		driver.close();
	}
}
