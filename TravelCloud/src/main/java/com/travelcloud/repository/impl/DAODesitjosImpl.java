package com.travelcloud.repository.impl;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.travelcloud.repository.DAODesitjos;

@Repository
public class DAODesitjosImpl implements DAODesitjos{

	@Autowired
	private DataSource dataSource;

	
}
