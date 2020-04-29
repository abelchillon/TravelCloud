package com.travelcloud.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelcloud.model.Missatge;
import com.travelcloud.repository.DAOMissatge;
import com.travelcloud.service.IMissatgeService;

@Service("missatgeService")
public class MissatgeServiceImpl implements IMissatgeService{

	@Autowired
	private DAOMissatge daoMissatge;

	@Override
	public void insertarMissatge(Missatge missatge) throws Exception{
		try {
			daoMissatge.insertarMissatge(missatge);
		} catch (Exception e) {
			throw e;
		}
	}
	
	@Override
	public void eliminarMissatge(Missatge missatge) throws Exception{
		try {
			daoMissatge.eliminarMissatge(missatge);
		} catch (Exception e) {
			throw e;
		}
	}
	
	@Override
	public List<Missatge> llistatMissatges() throws Exception{
		List<Missatge> missatges;
		try {
			missatges = daoMissatge.llistatMissatges();
		} catch (Exception e) {
			throw e;
		}
		return missatges;
		
	}
	
	@Override
	public List<Missatge> llistatCadenaMissatgesUsuari(int idUsuariEmisor, int idUsuariReceptor) throws Exception{
		List<Missatge> missatgesCadenaUsuari;
		try {
			missatgesCadenaUsuari = daoMissatge.llistatCadenaMissatgesUsuari(idUsuariEmisor, idUsuariReceptor);
		} catch (Exception e) {
			throw e;
		}
		return missatgesCadenaUsuari;
	}
	
	@Override
	public List<Missatge> llistatMissatgeUsuari(int idUsuariReceptor) throws Exception{
		List<Missatge> missatgesUsuari;
		try {
			missatgesUsuari = daoMissatge.llistatMissatgeUsuari(idUsuariReceptor);
		} catch (Exception e) {
			throw e;
		}
		return missatgesUsuari;
	}

}
