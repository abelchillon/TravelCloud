package com.travelcloud.model;

import java.sql.Date;

public class Valoracio {
	private int id;	
	private int idUsuari;	
	private int idViatge;
	private String comentari;
	private int puntuacio;
	private Date dataCreacio;
	
	public Valoracio() {
		super();
	}

	public Valoracio(int id, int idUsuari, int idViatge, String comentari, int puntuacio, Date dataCreacio) {
		super();
		this.id = id;
		this.idUsuari = idUsuari;
		this.idViatge = idViatge;
		this.comentari = comentari;
		this.puntuacio = puntuacio;
		this.dataCreacio = dataCreacio;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getIdUsuari() {
		return idUsuari;
	}

	public void setIdUsuari(int idUsuari) {
		this.idUsuari = idUsuari;
	}

	public int getIdViatge() {
		return idViatge;
	}

	public void setIdViatge(int idViatge) {
		this.idViatge = idViatge;
	}

	public String getComentari() {
		return comentari;
	}

	public void setComentari(String comentari) {
		this.comentari = comentari;
	}

	public int getPuntuacio() {
		return puntuacio;
	}

	public void setPuntuacio(int puntuacio) {
		this.puntuacio = puntuacio;
	}

	public Date getDataCreacio() {
		return dataCreacio;
	}

	public void setDataCreacio(Date dataCreacio) {
		this.dataCreacio = dataCreacio;
	}

	@Override
	public String toString() {
		return "Valoracio [id=" + id + ", idUsuari=" + idUsuari + ", idViatge=" + idViatge + ", comentari=" + comentari
				+ ", puntuacio=" + puntuacio + ", dataCreacio=" + dataCreacio + "]";
	}

}
