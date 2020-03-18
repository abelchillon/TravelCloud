package com.travelcloud.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelcloud.repository.DAOViatge;
import com.travelcloud.service.IViatgeService;

@Service("viatgeService")
public class ViatgeServiceImpl implements IViatgeService{

	@Autowired
	private DAOViatge daoViatge;

}
