package com.travelcloud.service;

import java.util.List;

import com.travelcloud.model.Desitjos;

public interface IDesitjosService {
	public void insertarDesitjos(Desitjos desitjos) throws Exception;
	public void eliminarDesitjos(Desitjos desitjos) throws Exception;
	
	public List<Desitjos> llistarDesitjos(int idUsuari) throws Exception;
}
