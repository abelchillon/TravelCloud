package com.travelcloud.repository.impl;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.travelcloud.model.Viatge;
import com.travelcloud.repository.DAOViatge;

@Repository
public class DAOViatgeImpl implements DAOViatge{

	@Autowired
	private DataSource dataSource;
	
	@Override
	public void insertarViatge(Viatge viatge) throws Exception{
		
	}
	
	@Override
	public void modificarViatge(Viatge viatge) throws Exception{
		
	}
	
	@Override
	public void eliminarViatge(Viatge viatge) throws Exception{
		
	}
	
	@Override
	public List<Viatge> llistarViatges() throws Exception{
		return ;
	}
	
}
