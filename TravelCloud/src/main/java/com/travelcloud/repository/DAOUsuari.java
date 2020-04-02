package com.travelcloud.repository;

import java.util.List;
import com.travelcloud.model.Usuari;

public interface DAOUsuari{ 
	public void insertarUsuari(Usuari usuari) throws Exception;
	public void modificarUsuari(Usuari usuari) throws Exception;
	public void eliminarUsuari(Usuari usuari) throws Exception;
	
	public List<Usuari> llistarUsuaris() throws Exception;
}
