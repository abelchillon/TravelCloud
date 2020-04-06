package com.travelcloud.repository;

import java.util.List;

import com.travelcloud.model.Assessorament;

public interface DAOAssessorament{ 

	public void insertarAssessorament(Assessorament assessorament) throws Exception;
	public void eliminarAssessorament(Assessorament assessorament) throws Exception;
	
	public List<Assessorament> llistarAssessoraments() throws Exception;
}
