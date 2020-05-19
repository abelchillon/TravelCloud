package com.travelcloud.model;

import java.sql.Date;

public class Usuari {
	private int id;
	private String nom;
	private String cognom1;
	private String cognom2;
	private String password;
	private String email;
	private String telefon;
	private String rol;
	private Date dataCreacio;
	private int totalViatges;
	
	public Usuari() {
		super();
	}

	public Usuari(int id, String nom, String cognom1, String cognom2, String password, String email, String telefon,
			String rol, Date dataCreacio) {
		super();
		this.id = id;
		this.nom = nom;
		this.cognom1 = cognom1;
		this.cognom2 = cognom2;
		this.password = password;
		this.email = email;
		this.telefon = telefon;
		this.rol = rol;
		this.dataCreacio = dataCreacio;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getCognom1() {
		return cognom1;
	}

	public void setCognom1(String cognom1) {
		this.cognom1 = cognom1;
	}

	public String getCognom2() {
		return cognom2;
	}

	public void setCognom2(String cognom2) {
		this.cognom2 = cognom2;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelefon() {
		return telefon;
	}

	public void setTelefon(String telefon) {
		this.telefon = telefon;
	}

	public String getRol() {
		return rol;
	}

	public void setRol(String rol) {
		this.rol = rol;
	}

	public Date getDataCreacio() {
		return dataCreacio;
	}

	public void setDataCreacio(Date dataCreacio) {
		this.dataCreacio = dataCreacio;
	}

	public int getTotalViatges() {
		return totalViatges;
	}

	public void setTotalViatges(int totalViatges) {
		this.totalViatges = totalViatges;
	}

	@Override
	public String toString() {
		return "Usuari [id=" + id + ", nom=" + nom + ", cognom1=" + cognom1 + ", cognom2=" + cognom2 + ", password="
				+ password + ", email=" + email + ", telefon=" + telefon + ", rol=" + rol + ", dataCreacio="
				+ dataCreacio + "]";
	}
	
}
