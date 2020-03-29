package com.travelcloud.repository;

import com.travelcloud.model.Usuari;

public interface DAOUsuari{ 
	public void insertarUsuari(Usuari usuari) throws Exception;
	public void modificarUsuari(Usuari usuari) throws Exception;
	
}
