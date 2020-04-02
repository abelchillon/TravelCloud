package com.travelcloud.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelcloud.model.Valoracio;
import com.travelcloud.model.Viatge;
import com.travelcloud.repository.DAOViatge;
import com.travelcloud.service.IViatgeService;

@Service("viatgeService")
public class ViatgeServiceImpl implements IViatgeService{

	@Autowired
	private DAOViatge daoViatge;
	
	@Override
	public void insertarViatge(Viatge viatge) throws Exception{
		try {
			daoViatge.insertarViatge(viatge);
		} catch (Exception e) {
			throw e;
		}
	}
	
	@Override
	public void modificarViatge(Viatge viatge) throws Exception{
		try {
			daoViatge.modificarViatge(viatge);
		} catch (Exception e) {
			throw e;
		}
	}
	
	@Override
	public void eliminarViatge(Viatge viatge) throws Exception{
		try {
			daoViatge.eliminarViatge(viatge);
		} catch (Exception e) {
			throw e;
		}
	}
	
	@Override
	public List<Viatge> llistarViatges() throws Exception {
		List<Viatge> viatges;
		try {
			viatges = daoViatge.llistarViatges();
		} catch (Exception e) {
			throw e;
		}
		return viatges;
	}
	
	@Override
	public List<Viatge> llistarViatgesUsuari(int idUsuari) throws Exception {
		List<Viatge> viatgesUsuari;
		try {
			viatgesUsuari = daoViatge.llistarViatgesUsuari(idUsuari);
		} catch (Exception e) {
			throw e;
		}
		return viatgesUsuari;
	}

	@Override
	public List<Viatge> obtenirViatges() throws Exception {
		return daoViatge.obtenirViatges();
	}
}
