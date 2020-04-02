package com.travelcloud.model;

import java.sql.Date;

public class Assessorament {
	private int idASSESSORAMENT;
	private Usuari idUSUARI;	
	private Date Data;
	private int idAssessor;

	public Assessorament() {
		super();
	}
	
	public Assessorament(int idASSESSORAMENT, Usuari idUSUARI, Date data, int idAssessor) {
		super();
		this.idASSESSORAMENT = idASSESSORAMENT;
		this.idUSUARI = idUSUARI;
		this.Data = data;
		this.idAssessor = idAssessor;
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
	
	public Date getData() {
		return Data;
	}

	public void setData(Date data) {
		Data = data;
	}

	public int getIdAssessor() {
		return idAssessor;
	}

	public void setIdAssessor(int idAssessor) {
		this.idAssessor = idAssessor;
	}

	@Override
	public String toString() {
		return "Assessorament [idASSESSORAMENT=" + idASSESSORAMENT + ", idUSUARI=" + idUSUARI + ", Data=" + Data
				+ ", idAssessor=" + idAssessor + "]";
	}

	
}
