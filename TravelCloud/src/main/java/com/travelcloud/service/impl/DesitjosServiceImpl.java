package com.travelcloud.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelcloud.repository.DAODesitjos;
import com.travelcloud.service.IDesitjosService;

@Service("desitjosService")
public class DesitjosServiceImpl implements IDesitjosService{

	@Autowired
	private DAODesitjos daoDesitjos;

}
