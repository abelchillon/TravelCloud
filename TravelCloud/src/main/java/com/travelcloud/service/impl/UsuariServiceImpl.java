package com.travelcloud.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelcloud.model.Usuari;
import com.travelcloud.repository.DAOUsuari;
import com.travelcloud.service.IUsuariService;

@Service("usuariService")
public class UsuariServiceImpl implements IUsuariService{

	@Autowired
	private DAOUsuari daoUsuari;
	
	@Override
	public void insertarUsuari(Usuari usuari) throws Exception {
		try {
			daoUsuari.insertarUsuari(usuari);
		} catch (Exception e) {
			throw e;
		}
		
	}
	
	@Override
	public void modificarUsuari(Usuari usuari) throws Exception {
		try {
			daoUsuari.modificarUsuari(usuari);
		} catch (Exception e) {
			throw e;
		}
		
	}
	
	@Override
	public void eliminarUsuari(Usuari usuari) throws Exception {
		try {
			daoUsuari.eliminarUsuari(usuari);
		} catch (Exception e) {
			throw e;
		}
		
	}
	
	public List<Usuari> llistarUsuaris() throws Exception {
		List<Usuari> usauris;
		try {
			usauris = daoUsuari.llistarUsuaris();
		} catch (Exception e) {
			throw e;
		}
		return usauris;
	}

	@Override
	public Usuari obtenirUsuariPerMail(String email, String password) throws Exception {
		return daoUsuari.obtenirUsuariPerMail(email, password);
	}
	

}
