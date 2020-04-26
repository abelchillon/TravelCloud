package com.travelcloud.model;

public class ViatgeValoracio { 
	private Viatge viatge;
	private Valoracio valoracio;
	
	public ViatgeValoracio() {
		super();
	}

	public ViatgeValoracio(Viatge viatge, Valoracio valoracio) {
		super();
		this.viatge = viatge;
		this.valoracio = valoracio;
	}

	public Viatge getViatge() {
		return viatge;
	}

	public void setViatge(Viatge viatge) {
		this.viatge = viatge;
	}

	public Valoracio getValoracio() {
		return valoracio;
	}

	public void setValoracio(Valoracio valoracio) {
		this.valoracio = valoracio;
	}

	@Override
	public String toString() {
		return "ViatgeValoracio [viatge=" + viatge + ", valoracio=" + valoracio + "]";
	}

}
