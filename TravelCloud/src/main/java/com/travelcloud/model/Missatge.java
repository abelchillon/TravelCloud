package com.travelcloud.model;

import java.sql.Date;

public class Missatge {
	
	private int id;
	private String titol;
	private String cos;
	private int idUsuari;
	private int idAssessorament;
	private int idAssessor;
	private Date dataCreacio;
	
	public Missatge() {
		super();
	}

	public Missatge(int id, String titol, String cos, int idUsuari, int idAssessorament, int idAssessor,
			Date dataCreacio) {
		super();
		this.id = id;
		this.titol = titol;
		this.cos = cos;
		this.idUsuari = idUsuari;
		this.idAssessorament = idAssessorament;
		this.idAssessor = idAssessor;
		this.dataCreacio = dataCreacio;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitol() {
		return titol;
	}

	public void setTitol(String titol) {
		this.titol = titol;
	}

	public String getCos() {
		return cos;
	}

	public void setCos(String cos) {
		this.cos = cos;
	}

	public int getIdUsuari() {
		return idUsuari;
	}

	public void setIdUsuari(int idUsuari) {
		this.idUsuari = idUsuari;
	}

	public int getIdAssessorament() {
		return idAssessorament;
	}

	public void setIdAssessorament(int idAssessorament) {
		this.idAssessorament = idAssessorament;
	}

	public int getIdAssessor() {
		return idAssessor;
	}

	public void setIdAssessor(int idAssessor) {
		this.idAssessor = idAssessor;
	}

	public Date getDataCreacio() {
		return dataCreacio;
	}

	public void setDataCreacio(Date dataCreacio) {
		this.dataCreacio = dataCreacio;
	}

	@Override
	public String toString() {
		return "Missatge [id=" + id + ", titol=" + titol + ", cos=" + cos + ", idUsuari=" + idUsuari
				+ ", idAssessorament=" + idAssessorament + ", idAssessor=" + idAssessor + ", dataCreacio=" + dataCreacio
				+ "]";
	}
	
	
}
