package com.travelcloud.model;

import java.sql.Date;

public class Foto {
	private int id;
	private int idUsuari;	
	private int idViatge;
	private String src;
	private Date dataCreacio;
		
	public Foto() {
		super();
	}

	public Foto(int id, int idUsuari, int idViatge, String src, Date dataCreacio) {
		super();
		this.id = id;
		this.idUsuari = idUsuari;
		this.idViatge = idViatge;
		this.src = src;
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

	public String getSrc() {
		return src;
	}

	public void setSrc(String src) {
		this.src = src;
	}

	public Date getDataCreacio() {
		return dataCreacio;
	}

	public void setDataCreacio(Date dataCreacio) {
		this.dataCreacio = dataCreacio;
	}

	@Override
	public String toString() {
		return "Foto [id=" + id + ", idUsuari=" + idUsuari + ", idViatge=" + idViatge + ", src=" + src
				+ ", dataCreacio=" + dataCreacio + "]";
	}
	
	
}
