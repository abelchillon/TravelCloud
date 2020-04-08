package com.travelcloud.repository.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.travelcloud.model.Assessorament;
import com.travelcloud.repository.DAOAssessorament;

@Repository
public class DAOAssessoramentImpl implements DAOAssessorament{

	@Autowired
	private DataSource dataSource;
	List<Assessorament> llistatAssessorament;
	
	@Override
	public void insertarAssessorament(Assessorament assessorament) throws Exception{
		String sql = "INSERT INTO assessorament (idUsuari, idAssessor, data) "
				+ "values (?, ?, ?)";
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, assessorament.getIdUsuari());
			pStatement.setInt(2, assessorament.getIdAssessor());
			pStatement.setDate(3, new Date(Calendar.getInstance().getTime().getTime()));
			pStatement.executeUpdate();
			pStatement.close();
		} catch (Exception e) {
			throw e;
		} finally {
			if (connection != null) {
				connection.close();				
			}
		}
	}
	
	@Override
	public void eliminarAssessorament(Assessorament assessorament) throws Exception{
		String sql = "DELETE FROM assessorament  WHERE id = ?";
		
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, assessorament.getId());
			pStatement.executeUpdate();
			pStatement.close();
		} catch (Exception e) {
			throw e;
		} finally {
			if (connection != null) {
				connection.close();				
			}
		}
	}
	
	@Override
	public List<Assessorament> llistarAssessoraments() throws Exception {
		String sql = "SELECT * FROM assessorament";
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			ResultSet rs = pStatement.executeQuery();
			while(rs.next()) {
				Assessorament assessorament = makeAssessorament(rs);
				llistatAssessorament.add(assessorament);
			}
			pStatement.close();
		} catch (Exception e) {
			throw e;
		} finally {
			if (connection != null) {
				connection.close();				
			}
		}
		return llistatAssessorament;
	}
	
	
	private Assessorament makeAssessorament(ResultSet rs) throws SQLException {
		int id = rs.getInt("id");
		int idUsuari = rs.getInt("idUsuari");
		int idAssessor = rs.getInt("idAssessor");
		Date data = rs.getDate("Data");

		
		Assessorament assessorament = new Assessorament(id, idUsuari, idAssessor,data); 
		return assessorament; 
		
	}
	
	
}
