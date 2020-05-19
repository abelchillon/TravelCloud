package com.travelcloud.service;

import java.util.List;

import com.travelcloud.model.Usuari;

public interface IUsuariService {
	public void insertarUsuari(Usuari usuari) throws Exception;
	public void modificarUsuari(Usuari usuari) throws Exception;
	public void eliminarUsuari(Usuari usuari) throws Exception;
	
	public List<Usuari> llistarUsuaris() throws Exception;
	public Usuari obtenirUsuariPerMail(String email, String password) throws Exception;
}
