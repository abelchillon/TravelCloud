package com.travelcloud.repository.impl;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.travelcloud.repository.DAOAssessorament;

@Repository
public class DAOAssessoramentImpl implements DAOAssessorament{

	@Autowired
	private DataSource dataSource;
	
}
