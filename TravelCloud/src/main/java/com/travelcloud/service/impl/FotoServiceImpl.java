package com.travelcloud.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelcloud.repository.DAOFoto;
import com.travelcloud.service.IFotoService;

@Service("fotoService")
public class FotoServiceImpl implements IFotoService{

	@Autowired
	private DAOFoto daoFoto;

}
