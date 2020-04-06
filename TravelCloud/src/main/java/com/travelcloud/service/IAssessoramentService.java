package com.travelcloud.service;

import java.util.List;

import com.travelcloud.model.Assessorament;

public interface IAssessoramentService {
	
	public void insertarAssessorament(Assessorament assessorament) throws Exception;
	public void eliminarAssessorament(Assessorament assessorament) throws Exception;
	
	public List<Assessorament> llistarAssessoraments() throws Exception;
}
