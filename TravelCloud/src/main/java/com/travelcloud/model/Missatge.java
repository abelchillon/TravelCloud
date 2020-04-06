package com.travelcloud.model;

import java.sql.Date;

public class Missatge {
	
	private int IdMissatge;
	private int idUsuariEmisor;
	private int idUsuariReceptor;
	private String titol;
	private String descripcio;
	private Date DataMissatge;
	
	public Missatge() {
		super();
	}
	public Missatge(int IdMissatge, int idUsuariEmisor, int idUsuariReceptor, String titol, String descripcio, Date DataMissatge) {
		super();
		this.IdMissatge = IdMissatge;
		this.idUsuariEmisor = idUsuariEmisor;
		this.idUsuariReceptor = idUsuariReceptor;
		this.titol = titol;
		this.descripcio = descripcio;
		this.DataMissatge = DataMissatge;
	}
	
	public int getIdMissatge() {
		return IdMissatge;
	}
	public int getIdUsuariEmisor() {
		return idUsuariEmisor;
	}
	public int getIdUsuariReceptor() {
		return idUsuariReceptor;
	}
	public String getTitol() {
		return titol;
	}
	public String getDescripcio() {
		return descripcio;
	}
	public Date getDataMissatge() {
		return DataMissatge;
	}
	
	public void setIdUsuariEmisor(int idUsuariEmisor) {
		this.idUsuariEmisor = idUsuariEmisor;
	}
	public void setIdUsuariReceptor(int idUsuariReceptor) {
		this.idUsuariReceptor = idUsuariReceptor;
	}
	public void setTitol(String titol) {
		this.titol = titol;
	}
	public void setDescripcio(String descripcio) {
		this.descripcio = descripcio;
	}
	public void setDataMissatge(Date DataMissatge) {
		this.DataMissatge = DataMissatge;
	}
	
	
	@Override
	public String toString() {
		return "Missatge [idMissatge=" + IdMissatge + ", idUsuariEmisor=" + idUsuariEmisor + ", idUsuariReceptor=" + idUsuariReceptor + ", titol="
				+ titol + ", descripcio=" + descripcio + ", DataMissatge=" + DataMissatge +  "]";
	}

}
