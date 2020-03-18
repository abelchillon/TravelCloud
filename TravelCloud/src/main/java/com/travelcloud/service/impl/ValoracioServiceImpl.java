package com.travelcloud.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelcloud.repository.DAOValoracio;
import com.travelcloud.service.IValoracioService;

@Service("valoracioService")
public class ValoracioServiceImpl implements IValoracioService{

	@Autowired
	private DAOValoracio daoValoracio;

}
