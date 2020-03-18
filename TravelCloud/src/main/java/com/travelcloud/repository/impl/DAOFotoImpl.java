package com.travelcloud.repository.impl;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.travelcloud.repository.DAOFoto;

@Repository
public class DAOFotoImpl implements DAOFoto{

	@Autowired
	private DataSource dataSource;

	
}
