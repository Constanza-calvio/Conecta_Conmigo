package com.dojo.conectaConmigo.models;

public class Perfil {
	
	private String userName;
    private String lastNames; // Asegúrate de tener un getter y un setter para esta propiedad
    private String email;
    private String quienSoy;
    private String profileImage;
    
    
	public String getProfileImage() {
		return profileImage;
	}
	public void setProfileImage(String profileImage) {
		this.profileImage = profileImage;
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
	public String getQuienSoy() {
		return quienSoy;
	}
	public void setQuienSoy(String quienSoy) {
		this.quienSoy = quienSoy;
	}
	

    // Constructor, getters y setters
}


