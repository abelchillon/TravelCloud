package com.travelcloud.model;

import java.sql.Date;

public class Desitjos {
	private int id;
	private int idUsuari;
	private int idViatge;	
	private Date dataCreacio;
	
	public Desitjos() {
		super();
	}

	public Desitjos(int id, int idUsuari, int idViatge, Date dataCreacio) {
		super();
		this.id = id;
		this.idUsuari = idUsuari;
		this.idViatge = idViatge;
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

	public Date getDataCreacio() {
		return dataCreacio;
	}

	public void setDataCreacio(Date dataCreacio) {
		this.dataCreacio = dataCreacio;
	}

	@Override
	public String toString() {
		return "Desitjos [id=" + id + ", idUsuari=" + idUsuari + ", idViatge=" + idViatge + ", dataCreacio="
				+ dataCreacio + "]";
	}

	
}
