package com.travelcloud.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelcloud.model.Assessorament;
import com.travelcloud.model.Desitjos;
import com.travelcloud.repository.DAOAssessorament;
import com.travelcloud.service.IAssessoramentService;

@Service("assessoramentService")
public class AssessoramentServiceImpl implements IAssessoramentService{

	@Autowired
	private DAOAssessorament daoAssessorament;
	
	@Override
	public void insertarAssessorament(Assessorament assessorament) throws Exception{
		try {
			daoAssessorament.insertarAssessorament(assessorament);
		} catch (Exception e) {
			throw e;
		}
	}
	
	@Override
	public void eliminarAssessorament(Assessorament assessorament) throws Exception{
		try {
			daoAssessorament.eliminarAssessorament(assessorament);
		} catch (Exception e) {
			throw e;
		}
	}
	
	@Override
	public List<Assessorament> llistarAssessoraments() throws Exception{
		List<Assessorament> assessoraments;
		try {
			assessoraments = daoAssessorament.llistarAssessoraments();
		} catch (Exception e) {
			throw e;
		}
		return assessoraments;
	}

}
