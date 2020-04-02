package com.travelcloud.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelcloud.model.Missatge;
import com.travelcloud.repository.DAOMissatge;
import com.travelcloud.service.IMissatgeService;

@Service("missatgeService")
public class MissatgeServiceImpl implements IMissatgeService{

	@Autowired
	private DAOMissatge daoMissatge;

	@Override
	public void afegirMissatge(Missatge missatge) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
