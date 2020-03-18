package com.travelcloud.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelcloud.repository.DAOAssessorament;
import com.travelcloud.service.IAssessoramentService;

@Service("assessoramentService")
public class AssessoramentServiceImpl implements IAssessoramentService{

	@Autowired
	private DAOAssessorament daoAssessorament;
	

}
