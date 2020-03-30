package com.travelcloud.model;

import java.sql.Date;

public class Foto {
	private int idFOTO;
	private Usuari idUSUARI;	
	private Viatge idVIATGE;
	private int Tipus;
	private String Source;
	private Date Data;
		
	public Foto() {
		super();
	}

	// LA FECHA DE LA FOTO?? 
	
	
	public Foto(int idFOTO, Usuari idUSUARI, Viatge idVIATGE, int tipus, String source, Date data) {
		super();
		this.idFOTO = idFOTO;
		this.idUSUARI = idUSUARI;
		this.idVIATGE = idVIATGE;
		Tipus = tipus;
		Source = source;
		Data = data;
	}

	public int getIdFOTO() {
		return idFOTO;
	}

	public void setIdFOTO(int idFOTO) {
		this.idFOTO = idFOTO;
	}

	public Usuari getIdUSUARI() {
		return idUSUARI;
	}

	public void setIdUSUARI(Usuari idUSUARI) {
		this.idUSUARI = idUSUARI;
	}

	public Viatge getIdVIATGE() {
		return idVIATGE;
	}

	public void setIdVIATGE(Viatge idVIATGE) {
		this.idVIATGE = idVIATGE;
	}

	public int getTipus() {
		return Tipus;
	}

	public void setTipus(int tipus) {
		Tipus = tipus;
	}

	public String getSource() {
		return Source;
	}

	public void setSource(String source) {
		Source = source;
	}

	public Date getData() {
		return Data;
	}

	public void setData(Date data) {
		Data = data;
	}

	@Override
	public String toString() {
		return "Foto [idFOTO=" + idFOTO + ", idUSUARI=" + idUSUARI + ", idVIATGE=" + idVIATGE + ", Tipus=" + Tipus
				+ ", Source=" + Source + ", Data=" + Data + "]";
	}
	
}
