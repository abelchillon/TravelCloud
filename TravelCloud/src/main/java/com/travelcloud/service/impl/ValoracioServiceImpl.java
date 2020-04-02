package com.travelcloud.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelcloud.model.Valoracio;
import com.travelcloud.repository.DAOValoracio;
import com.travelcloud.service.IValoracioService;

@Service("valoracioService")
public class ValoracioServiceImpl implements IValoracioService{

	@Autowired
	private DAOValoracio daoValoracio;
	
	@Override
	public void insertarValoracio(Valoracio valoracio) throws Exception{
		try {
			daoValoracio.insertarValoracio(valoracio);
		} catch (Exception e) {
			throw e;
		}
	}
	@Override
	public void modificarValoracio(Valoracio valoracio) throws Exception{
		try {
			daoValoracio.modificarValoracio(valoracio);
		} catch (Exception e) {
			throw e;
		}
	}
	@Override
	public void eliminarValoracio(Valoracio valoracio) throws Exception{
		try {
			daoValoracio.eliminarValoracio(valoracio);
		} catch (Exception e) {
			throw e;
		}
	}
	@Override
	public List<Valoracio> llistarValoracionsPerViatge(int idViatgeValoracio) throws Exception{
		List<Valoracio> valoracions;
		try {
			valoracions = daoValoracio.llistarValoracionsPerViatge(idViatgeValoracio);
		} catch (Exception e) {
			throw e;
		}
		return valoracions;
	}

	@Override
	public List<Valoracio> obtenirPuntuacions() throws Exception {
		return daoValoracio.obtenirPuntuacions();
	}
}
