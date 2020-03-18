package com.travelcloud.repository.impl;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.travelcloud.repository.DAOValoracio;

@Repository
public class DAOValoracioImpl implements DAOValoracio{

	@Autowired
	private DataSource dataSource;

	
}
