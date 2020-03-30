package com.travelcloud.service;

import java.util.List;

import com.travelcloud.model.Valoracio;

public interface IValoracioService {

	public void insertarValoracio(Valoracio valoracio) throws Exception;
	public void modificarValoracio(Valoracio valoracio) throws Exception;
	public void eliminarValoracio(Valoracio valoracio) throws Exception;
	
	public List<Valoracio> llistarValoracionsPerViatge(int idViatgeValoracio) throws Exception;
}
