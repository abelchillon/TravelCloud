package com.travelcloud.service.impl;

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
	

}
