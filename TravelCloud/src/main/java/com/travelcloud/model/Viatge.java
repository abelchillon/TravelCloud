package com.travelcloud.model;

import java.sql.Date;

public class Viatge {
	private int idVIATGE;
	private String Comunitat;
	private String Provincia;
	private String Localitat;
	private String Entorn;
	private String Durada;
	private String TipusViatger;
	private String Descripcio;
	private Usuari idUSUARI;	
	private Date Data;
	
	public Viatge() {
		super();
	}

	public Viatge(int idVIATGE, String comunitat, String provincia, String localitat, String entorn, String durada,
			String tipusViatger, String descripcio, Usuari idUSUARI, Date data) {
		super();
		this.idVIATGE = idVIATGE;
		Comunitat = comunitat;
		Provincia = provincia;
		Localitat = localitat;
		Entorn = entorn;
		Durada = durada;
		TipusViatger = tipusViatger;
		Descripcio = descripcio;
		this.idUSUARI = idUSUARI;
		Data = data;
	}

	public int getIdVIATGE() {
		return idVIATGE;
	}

	public void setIdVIATGE(int idVIATGE) {
		this.idVIATGE = idVIATGE;
	}

	public String getComunitat() {
		return Comunitat;
	}

	public void setComunitat(String comunitat) {
		Comunitat = comunitat;
	}

	public String getProvincia() {
		return Provincia;
	}

	public void setProvincia(String provincia) {
		Provincia = provincia;
	}

	public String getLocalitat() {
		return Localitat;
	}

	public void setLocalitat(String localitat) {
		Localitat = localitat;
	}

	public String getEntorn() {
		return Entorn;
	}

	public void setEntorn(String entorn) {
		Entorn = entorn;
	}

	public String getDurada() {
		return Durada;
	}

	public void setDurada(String durada) {
		Durada = durada;
	}

	public String getTipusViatger() {
		return TipusViatger;
	}

	public void setTipusViatger(String tipusViatger) {
		TipusViatger = tipusViatger;
	}

	public String getDescripcio() {
		return Descripcio;
	}

	public void setDescripcio(String descripcio) {
		Descripcio = descripcio;
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
		return "Viatge [idVIATGE=" + idVIATGE + ", Comunitat=" + Comunitat + ", Provincia=" + Provincia + ", Localitat="
				+ Localitat + ", Entorn=" + Entorn + ", Durada=" + Durada + ", TipusViatger=" + TipusViatger
				+ ", Descripcio=" + Descripcio + ", idUSUARI=" + idUSUARI + ", Data=" + Data + "]";
	}
}
