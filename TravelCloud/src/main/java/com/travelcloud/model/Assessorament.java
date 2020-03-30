package com.travelcloud.model;

import java.sql.Date;

public class Assessorament {
	private int idASSESSORAMENT;
	private Usuari idUSUARI;	
	private Double Preu;
	private Date Data;

	public Assessorament() {
		super();
	}
	
	//aqui tambien faltaria el id del asesor que gestiona el asesoramiento no?

	public Assessorament(int idASSESSORAMENT, Usuari idUSUARI, Double preu, Date data) {
		super();
		this.idASSESSORAMENT = idASSESSORAMENT;
		this.idUSUARI = idUSUARI;
		Preu = preu;
		Data = data;
	}

	public int getIdASSESSORAMENT() {
		return idASSESSORAMENT;
	}

	public void setIdASSESSORAMENT(int idASSESSORAMENT) {
		this.idASSESSORAMENT = idASSESSORAMENT;
	}

	public Usuari getIdUSUARI() {
		return idUSUARI;
	}

	public void setIdUSUARI(Usuari idUSUARI) {
		this.idUSUARI = idUSUARI;
	}

	public Double getPreu() {
		return Preu;
	}

	public void setPreu(Double preu) {
		Preu = preu;
	}

	public Date getData() {
		return Data;
	}

	public void setData(Date data) {
		Data = data;
	}

	@Override
	public String toString() {
		return "Assessorament [idASSESSORAMENT=" + idASSESSORAMENT + ", idUSUARI=" + idUSUARI + ", Preu=" + Preu
				+ ", Data=" + Data + "]";
	}
	
}
