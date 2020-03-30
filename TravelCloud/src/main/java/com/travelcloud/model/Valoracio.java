package com.travelcloud.model;

import java.sql.Date;

public class Valoracio {
	private Usuari idUSUARI;	
	private Viatge idVIATGE;
	private String Comentari;
	private int Puntuacio;
	private Date Data;
	
	public Valoracio() {
		super();
	}
	
	
// Holaa, aqui faltaria un idValoracio tambien para que identifique a la valoracion, no he tocado nada porque supongo que maria tendra que cambiarlo en base de datos...
	public Valoracio(Usuari idUSUARI, Viatge idVIATGE, String comentari, int puntuacio, Date data) {
		super();
		this.idUSUARI = idUSUARI;
		this.idVIATGE = idVIATGE;
		Comentari = comentari;
		Puntuacio = puntuacio;
		Data = data;
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

	public String getComentari() {
		return Comentari;
	}

	public void setComentari(String comentari) {
		Comentari = comentari;
	}

	public int getPuntuacio() {
		return Puntuacio;
	}

	public void setPuntuacio(int puntuacio) {
		Puntuacio = puntuacio;
	}

	public Date getData() {
		return Data;
	}

	public void setData(Date data) {
		Data = data;
	}

	@Override
	public String toString() {
		return "Valoracio [idUSUARI=" + idUSUARI + ", idVIATGE=" + idVIATGE + ", Comentari=" + Comentari
				+ ", Puntuacio=" + Puntuacio + ", Data=" + Data + "]";
	}
	

}
