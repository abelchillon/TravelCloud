package com.travelcloud.repository.impl;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.travelcloud.repository.DAOMissatge;

@Repository
public class DAOMissatgeImpl implements DAOMissatge{

	@Autowired
	private DataSource dataSource;

	
}