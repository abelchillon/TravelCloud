package com.travelcloud.repository.impl;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.travelcloud.repository.DAOViatge;

@Repository
public class DAOViatgeImpl implements DAOViatge{

	@Autowired
	private DataSource dataSource;
	
}
