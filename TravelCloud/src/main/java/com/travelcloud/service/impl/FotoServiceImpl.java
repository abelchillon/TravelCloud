package com.travelcloud.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelcloud.model.Desitjos;
import com.travelcloud.model.Foto;
import com.travelcloud.repository.DAOFoto;
import com.travelcloud.service.IFotoService;

@Service("fotoService")
public class FotoServiceImpl implements IFotoService{

	@Autowired
	private DAOFoto daoFoto;
	
	@Override
	public void insertarFotoUsuari(Foto foto) throws Exception{
		try {
			daoFoto.insertarFotoUsuari(foto);
		} catch (Exception e) {
			throw e;
		}
	}
	
	@Override
	public void insertarFotoViatge(Foto foto) throws Exception{
		try {
			daoFoto.insertarFotoViatge(foto);
		} catch (Exception e) {
			throw e;
		}
	}
	
	@Override
	public void modificarFoto(Foto foto) throws Exception{
		try {
			daoFoto.modificarFoto(foto);
		} catch (Exception e) {
			throw e;
		}
	}
	
	@Override
	public void eliminarFoto(Foto foto) throws Exception{
		try {
			daoFoto.eliminarFoto(foto);
		} catch (Exception e) {
			throw e;
		}
	}
	
	@Override
	public List<Foto> llistarFotosViatge(int idViatge) throws Exception{
		List<Foto> fotos;
		try {
			fotos = daoFoto.llistarFotosViatge(idViatge);
		} catch (Exception e) {
			throw e;
		}
		return fotos;
	}
	
	@Override
	public Foto llistarFotoUsuari(int idUsuari, int tipus) throws Exception{
		Foto fotoUsuari;
		try {
			fotoUsuari = daoFoto.llistarFotoUsuari(idUsuari, tipus);
		} catch (Exception e) {
			throw e;
		}
		return fotoUsuari;
	}

	@Override
	public String obtenirFotoPerViatge(int idViatge) throws Exception {
		return daoFoto.obtenirFotoPerViatge(idViatge);
	}

}
