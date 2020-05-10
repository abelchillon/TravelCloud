package com.travelcloud.model;

import java.sql.Date;

public class Viatge { 
	private int id;
	private String comunitat;
	private String provincia;
	private String localitat;
	private String entorn;
	private String durada;
	private String tipus;
	private String descripcio;
	private String titol;
	private int idUsuari;	
	private Date dataCreacio;
	private int puntuacio;
	private String fotoPortada;
	
	public Viatge() {
		super();
	}

	public Viatge(int id, String comunitat, String provincia, String localitat, String entorn, String durada,
			String tipus, String descripcio, String titol, int idUsuari, Date dataCreacio) {
		super();
		this.id = id;
		this.comunitat = comunitat;
		this.provincia = provincia;
		this.localitat = localitat;
		this.entorn = entorn;
		this.durada = durada;
		this.tipus = tipus;
		this.descripcio = descripcio;
		this.titol = titol;
		this.idUsuari = idUsuari;
		this.dataCreacio = dataCreacio;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getComunitat() {
		return comunitat;
	}

	public void setComunitat(String comunitat) {
		this.comunitat = comunitat;
	}

	public String getProvincia() {
		return provincia;
	}

	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}

	public String getLocalitat() {
		return localitat;
	}

	public void setLocalitat(String localitat) {
		this.localitat = localitat;
	}

	public String getEntorn() {
		return entorn;
	}

	public void setEntorn(String entorn) {
		this.entorn = entorn;
	}

	public String getDurada() {
		return durada;
	}

	public void setDurada(String durada) {
		this.durada = durada;
	}

	public String getTipus() {
		return tipus;
	}

	public void setTipus(String tipus) {
		this.tipus = tipus;
	}

	public String getDescripcio() {
		return descripcio;
	}

	public void setDescripcio(String descripcio) {
		this.descripcio = descripcio;
	}

	public String getTitol() {
		return titol;
	}

	public void setTitol(String titol) {
		this.titol = titol;
	}

	public int getIdUsuari() {
		return idUsuari;
	}

	public void setIdUsuari(int idUsuari) {
		this.idUsuari = idUsuari;
	}

	public Date getDataCreacio() {
		return dataCreacio;
	}

	public void setDataCreacio(Date dataCreacio) {
		this.dataCreacio = dataCreacio;
	}

	public int getPuntuacio() {
		return puntuacio;
	}

	public void setPuntuacio(int puntuacio) {
		this.puntuacio = puntuacio;
	}

	public String getFotoPortada() {
		return fotoPortada;
	}

	public void setFotoPortada(String fotoPortada) {
		this.fotoPortada = fotoPortada;
	}

	@Override
	public String toString() {
		return "Viatge [id=" + id + ", comunitat=" + comunitat + ", provincia=" + provincia + ", localitat=" + localitat
				+ ", entorn=" + entorn + ", durada=" + durada + ", tipus=" + tipus + ", descripcio=" + descripcio
				+ ", titol=" + titol + ", idUsuari=" + idUsuari + ", dataCreacio=" + dataCreacio + "]";
	}

}
