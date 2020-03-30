package com.travelcloud.service;

import com.travelcloud.model.Viatge;

public interface IViatgeService {
	
	public void insertarViatge(Viatge viatge) throws Exception;
	public void modificarViatge(Viatge viatge) throws Exception;
	public void eliminarViatge(Viatge viatge) throws Exception;
	

}
