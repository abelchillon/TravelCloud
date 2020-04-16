package com.travelcloud.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelcloud.model.Desitjos;
import com.travelcloud.repository.DAODesitjos;
import com.travelcloud.service.IDesitjosService;

@Service("desitjosService")
public class DesitjosServiceImpl implements IDesitjosService{

	@Autowired
	private DAODesitjos daoDesitjos;
	
	@Override
	public void insertarDesitjos(Desitjos desitjos) throws Exception{
		try {
			daoDesitjos.insertarDesitjos(desitjos);
		} catch (Exception e) {
			throw e;
		}
	}
	
	@Override
	public void modificarDesitjos(Desitjos desitjos) throws Exception{
		try {
			daoDesitjos.modificarDesitjos(desitjos);
		} catch (Exception e) {
			throw e;
		}
	}
	
	@Override
	public void eliminarDesitjos(Desitjos desitjos) throws Exception{
		try {
			daoDesitjos.eliminarDesitjos(desitjos);
		} catch (Exception e) {
			throw e;
		}
	}
	
	@Override
	public List<Desitjos> llistarDesitjos(int idUsuari) throws Exception{
		List<Desitjos> desitjos;
		try {
			desitjos = daoDesitjos.llistarDesitjos(idUsuari);
		} catch (Exception e) {
			throw e;
		}
		return desitjos;
	}
	
}
