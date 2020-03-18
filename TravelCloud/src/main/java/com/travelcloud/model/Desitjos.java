package com.travelcloud.model;

import java.sql.Date;

public class Desitjos {
	private Viatge idVIATGE;
	private Usuari idUSUARI;	
	private Date Data;
	
	public Desitjos() {
		super();
	}
	
	public Desitjos(Viatge idVIATGE, Usuari idUSUARI, Date data) {
		super();
		this.idVIATGE = idVIATGE;
		this.idUSUARI = idUSUARI;
		Data = data;
	}

	public Viatge getIdVIATGE() {
		return idVIATGE;
	}

	public void setIdVIATGE(Viatge idVIATGE) {
		this.idVIATGE = idVIATGE;
	}

	public Usuari getIdUSUARI() {
		return idUSUARI;
	}

	public void setIdUSUARI(Usuari idUSUARI) {
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
