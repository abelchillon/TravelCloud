package com.travelcloud.repository;

import java.util.List;

import com.travelcloud.model.Desitjos;

public interface DAODesitjos{ 
	public void insertarDesitjos(Desitjos desitjos) throws Exception;
	public void modificarDesitjos(Desitjos desitjos) throws Exception;
	public void eliminarDesitjos(Desitjos desitjos) throws Exception;
	
	public List<Desitjos> llistarDesitjos(int idUsuari) throws Exception;

}
