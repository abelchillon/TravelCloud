package com.travelcloud.service;

import com.travelcloud.model.Usuari;

public interface IUsuariService {
	public void insertarUsuari(Usuari usuari) throws Exception;
	public void modificarUsuari(Usuari usuari) throws Exception;
	public void eliminarUsuari(Usuari usuari) throws Exception;
}
