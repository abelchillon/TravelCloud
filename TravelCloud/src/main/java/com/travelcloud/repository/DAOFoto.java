package com.travelcloud.repository;

import java.util.List;

import com.travelcloud.model.Foto;

public interface DAOFoto{ 
	public void insertarFotoUsuari(Foto foto) throws Exception;
	public void insertarFotoViatge(Foto foto) throws Exception;
	public void modificarFoto(Foto foto) throws Exception;
	public void eliminarFoto(Foto foto) throws Exception;
	
	public List<Foto> llistarFotosViatge(int idViatge) throws Exception;
	public Foto llistarFotoUsuari(int idUsuari, int tipus) throws Exception;
	public String obtenirFotoPerViatge(int idViatge) throws Exception;

}
