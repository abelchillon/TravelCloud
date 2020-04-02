package com.travelcloud.model;

import java.sql.Date;

public class Usuari {
	private int idUSUARI;
	private String NomUsuari;
	private String Contrasenya;
	private String email;
	private String Telefon;
	private Date DataRegistre;
	private String Rol;
	
	public Usuari() {
		super();
	}
	public Usuari(int idUSUARI, String nomUsuari, String contrasenya, String email, String telefon,
			String Rol,Date dataRegistre) {
		super();
		this.idUSUARI = idUSUARI;
		NomUsuari = nomUsuari;
		Contrasenya = contrasenya;
		this.email = email;
		Telefon = telefon;
		DataRegistre = dataRegistre;
	}
	
	public int getIdUSUARI() {
		return idUSUARI;
	}
	public void setIdUSUARI(int idUSUARI) {
		this.idUSUARI = idUSUARI;
	}
	public String getNomUsuari() {
		return NomUsuari;
	}
	public void setNomUsuari(String nomUsuari) {
		NomUsuari = nomUsuari;
	}
	public String getContrasenya() {
		return Contrasenya;
	}
	public void setContrasenya(String contrasenya) {
		Contrasenya = contrasenya;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelefon() {
		return Telefon;
	}
	public void setTelefon(String telefon) {
		Telefon = telefon;
	}
	public Date getDataRegistre() {
		return DataRegistre;
	}
	public void setDataRegistre(Date dataRegistre) {
		DataRegistre = dataRegistre;
	}
	public String getRol() {
		return Rol;
	}
	public void setRol(String rol) {
		Rol = rol;
	}
	@Override
	public String toString() {
		return "Usuari [idUSUARI=" + idUSUARI + ", NomUsuari=" + NomUsuari + ", Contrasenya=" + Contrasenya + ", email="
				+ email + ", Telefon=" + Telefon + ", DataRegistre=" + DataRegistre + ", Rol=" + Rol + "]";
	}
	

	
}
