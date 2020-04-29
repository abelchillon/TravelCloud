package com.travelcloud.service;

import java.util.List;

import com.travelcloud.model.Foto;

public interface IFotoService {

	public void insertarFoto(Foto foto) throws Exception;
	public void modificarFoto(Foto foto) throws Exception;
	public void eliminarFoto(Foto foto) throws Exception;
	
	public List<Foto> llistarFotosViatge(int idViatge) throws Exception;
	public Foto llistarFotoUsuari(int idUsuari, int tipus) throws Exception;
}
