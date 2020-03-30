package com.travelcloud.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

}
