package com.dojo.conectaConmigo.models;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;

public class Login {
	@NotEmpty(message = "*campo obligatorio") // PARA QUE EL CAMPO DE EMAIL SEA COMPLETADO DE MANERA OBLIGATORIA
	@Email(message = "Por favor ingresa un correo valido") // PARA QUE LA CONTRASEÑA CONTENGA CARACTERES ESPECIFICOS
	private String email;

	@NotEmpty(message = "*campo obligatorio") // PARA QUE EL CAMPO DE EMAIL SEA COMPLETADO DE MANERA
														// OBLIGATORIA
	@Size(min = 8, max = 128)
	private String password;

	// CUANDO HAGAS CAMBIOS EN LOS MODELOS SIEMPRE REINICIA EL CODIGO PORQUE SE DEBE
	// ACTUALIZAR TMBN EN EL WORKBENCH

	// CONSTRUCTOR
	public Login() {

	}

	// GETTERS AND SETTERS
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
