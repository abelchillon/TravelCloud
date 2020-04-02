package com.travelcloud.repository;

import java.util.List;

import com.travelcloud.model.Valoracio;

public interface DAOValoracio{ 
	public void insertarValoracio(Valoracio valoracio) throws Exception;
	public void modificarValoracio(Valoracio valoracio) throws Exception;
	public void eliminarValoracio(Valoracio valoracio) throws Exception;
	
	public List<Valoracio> llistarValoracionsPerViatge(int idViatgeValoracio) throws Exception;
	public List<Valoracio> obtenirPuntuacions() throws Exception;
}
