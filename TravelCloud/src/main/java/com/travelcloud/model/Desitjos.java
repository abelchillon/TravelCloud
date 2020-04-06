package com.travelcloud.model;

import java.sql.Date;

public class Desitjos {
	private int idVIATGE;
	private int idUSUARI;	
	private Date Data;
	
	public Desitjos() {
		super();
	}

	
	public Desitjos(Viatge idVIATGE, Usuari idUSUARI, Date data) {
		super();
	}

	public Desitjos(int idVIATGE, int idUSUARI, Date data) {
		super();
		this.idVIATGE = idVIATGE;
		this.idUSUARI = idUSUARI;
		Data = data;
	}

	public int getIdVIATGE() {
		return idVIATGE;
	}

	public void setIdVIATGE(int idVIATGE) {
		this.idVIATGE = idVIATGE;
	}

	public int getIdUSUARI() {
		return idUSUARI;
	}

	public void setIdUSUARI(int idUSUARI) {
		this.idUSUARI = idUSUARI;
	}

	public Date getData() {
		return Data;
	}

	public void setData(Date data) {
		Data = data;
	}

	@Override
	public String toString() {
		return "Desitjos [idVIATGE=" + idVIATGE + ", idUSUARI=" + idUSUARI + ", Data=" + Data + "]";
	}

}
