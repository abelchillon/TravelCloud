package com.travelcloud.model;

import java.sql.Date;

public class Usuari {
	private int idUSUARI;
	private String NomUsuari;
	private String Contrasenya;
	private String email;
	private String Telefon;
	private String Descripcio;
	private Date DataRegistre;
	
	public Usuari() {
		super();
	}
	public Usuari(int idUSUARI, String nomUsuari, String contrasenya, String email, String telefon, String descripcio,
			Date dataRegistre) {
		super();
		this.idUSUARI = idUSUARI;
		NomUsuari = nomUsuari;
		Contrasenya = contrasenya;
		this.email = email;
		Telefon = telefon;
		Descripcio = descripcio;
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
	public String getDescripcio() {
		return Descripcio;
	}
	public void setDescripcio(String descripcio) {
		Descripcio = descripcio;
	}
	public Date getDataRegistre() {
		return DataRegistre;
	}
	public void setDataRegistre(Date dataRegistre) {
		DataRegistre = dataRegistre;
	}
	@Override
	public String toString() {
		return "Usuari [idUsuari=" + idUSUARI + ", NomUsuari=" + NomUsuari + ", Contrasenya=" + Contrasenya + ", email="
				+ email + ", Telefon=" + Telefon + ", Descripcio=" + Descripcio + ", DataRegistre=" + DataRegistre
				+ "]";
	}
	
	

	
}
