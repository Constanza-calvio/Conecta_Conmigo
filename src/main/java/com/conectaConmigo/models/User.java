package com.dojo.conectaConmigo.models;

import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "users")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotEmpty(message = "*campo obligatorio") // PARA QUE EL CAMPO DEL USUARIO SEA COMPLETADO DE MANERA
												// OBLIGATORIA
	@Size(min = 3, max = 30)
	private String userName;

	@NotEmpty(message = "*compo obligatorio") // PARA QUE EL CAMPO DEL USUARIO SEA COMPLETADO DE MANERA
	// OBLIGATORIA
	@Size(min = 3, max = 30)
	private String lastNames;
	
	private String firstName;

	@NotEmpty(message = "*campo obligatorio") // PARA QUE EL CAMPO DE EMAIL SEA COMPLETADO DE MANERA OBLIGATORIA
	@Email(message = "Por favor ingresa un email valido!") // PARA QUE CONTENGA CARACTERES ESPECIFICOS
	private String email;

	@NotEmpty(message = "*campo obligatorio") // PARA QUE EL CAMPO DE EMAIL SEA COMPLETADO DE MANERA
											// OBLIGATORIA
	@Size(min = 8, max = 128, message = "La contraseña debe tener un minimo de 8 caracteres")
	private String password;

	@Transient // ESTA ANOTACION ES PARA QUE EL DATO NO SEA TOMADO EN CUENTA AL MOMENTO DE
				// CREAR LA TABLA EN LA BBDD
	@NotEmpty(message = "*campo obligatorio") // PARA QUE EL CAMPO DE EMAIL SEA COMPLETADO DE MANERA
														// OBLIGATORIA
	@Size(min = 8, max = 128, message = "La contraseña debe tener un minimo de 8 caracteres")
	private String confirmPassword;
	
	@NotEmpty(message = "*campo obligatorio")
	private String quienSoy;
	
	private String photoUrl;

    public String getPhotoUrl() {
        return photoUrl;
    }

    public void setPhotoUrl(String photoUrl) {
        this.photoUrl = photoUrl;
    }

	
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getQuienSoy() {
		return quienSoy;
	}

	public void setQuienSoy(String quienSoy) {
		this.quienSoy = quienSoy;
	}

	//RELACION UNO A MUCHOS CON TESTIMONIOS
	@OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
	private List<TestimonyModel> testimonio;
			
	
	// CONSTRUCTOR
	public User() {

	}

	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}

	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}

	@Column(updatable = false)
	private Date createdAt;
	private Date updatedAt;

	
	
	// GETTERS AND SETTERS
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getLastNames() {
		return lastNames;
	}

	public void setLastNames(String lastNames) {
		this.lastNames = lastNames;
	}

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

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public List<TestimonyModel> getTestimonio() {
		return testimonio;
	}

	public void setTestimonio(List<TestimonyModel> testimonio) {
		this.testimonio = testimonio;
	}
	

}
