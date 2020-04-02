package com.travelcloud.service;

import java.util.List;

import com.travelcloud.model.Viatge;

public interface IViatgeService {
	
	public void insertarViatge(Viatge viatge) throws Exception;
	public void modificarViatge(Viatge viatge) throws Exception;
	public void eliminarViatge(Viatge viatge) throws Exception;
	
	public List<Viatge> llistarViatges() throws Exception;
	public List<Viatge> llistarViatgesUsuari(int idUsuari) throws Exception;
	public List<Viatge> obtenirViatges() throws Exception;	

}
