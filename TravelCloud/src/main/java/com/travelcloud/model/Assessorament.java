package com.travelcloud.model;

import java.sql.Date;

public class Assessorament {
	private int id;
	private int idUsuari;	
	private int idAssessor;
	private Date dataCreacio;
	
	public Assessorament() {
		super();
	}
	
	public Assessorament(int id, int idUsuari, int idAssessor, Date dataCreacio) {
		super();
		this.id = id;
		this.idUsuari = idUsuari;
		this.idAssessor = idAssessor;
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
		return "Assessorament [id=" + id + ", idUsuari=" + idUsuari + ", idAssessor=" + idAssessor + ", dataCreacio="
				+ dataCreacio + "]";
	}

	
}
