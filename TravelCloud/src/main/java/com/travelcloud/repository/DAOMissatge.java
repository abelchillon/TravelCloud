package com.travelcloud.repository;

import java.util.List;

import com.travelcloud.model.Missatge;

public interface DAOMissatge{ 
	
	public void insertarMissatge(Missatge missatge) throws Exception;
	public void eliminarMissatge(Missatge missatge) throws Exception;
	
	public List<Missatge> llistatMissatges() throws Exception;
	public List<Missatge> llistatCadenaMissatgesUsuari(int idUsuariEmisor, int idUsuariReceptor) throws Exception;
	
	public List<Missatge> llistatMissatgeUsuari(int idUsuariReceptor) throws Exception;
}
