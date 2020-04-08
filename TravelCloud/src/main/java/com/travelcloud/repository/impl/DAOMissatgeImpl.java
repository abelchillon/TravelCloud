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

import com.travelcloud.model.Missatge;
import com.travelcloud.repository.DAOMissatge;

@Repository
public class DAOMissatgeImpl implements DAOMissatge{
	
	List<Missatge> llistatMissatges;
	List<Missatge> llistatMissatgesUsuari;
	
	@Autowired
	private DataSource dataSource;
	
	@Override
	public void insertarMissatge(Missatge missatge) throws Exception{
		
		String sql = "INSERT INTO missatge (titol, cos, idUsuari, idAssessorament, idAssessor, dataCreacio) "
				+ "values (?, ?, ?, ?, ?, ?)";
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setString(1, missatge.getTitol());
			pStatement.setString(2,missatge.getCos());
			pStatement.setInt(3, missatge.getIdUsuari());
			pStatement.setInt(3, missatge.getIdAssessorament());
			pStatement.setInt(3, missatge.getIdAssessor());
			pStatement.setDate(6, new Date(Calendar.getInstance().getTime().getTime()));
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
	public void eliminarMissatge(Missatge missatge) throws Exception{
		String sql = "DELETE FROM missatge  WHERE id = ?";
		
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, missatge.getId());
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
	public List<Missatge> llistatMissatges() throws Exception{
		String sql = "SELECT * FROM missatge";
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			ResultSet rs = pStatement.executeQuery();
			while(rs.next()) {
				Missatge missatge = makeMissatge(rs);
				llistatMissatges.add(missatge);
			}
			pStatement.close();
		} catch (Exception e) {
			throw e;
		} finally {
			if (connection != null) {
				connection.close();				
			}
		}
		
		return llistatMissatges;
	}
	
	@Override
	public List<Missatge> llistatMissatgesUsuari(int idUsuariEmisor, int idUsuariReceptor) throws Exception{
		String sql = "SELECT * FROM missatge WHERE idUsuari = ? AND idAssessor = ?";
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, idUsuariEmisor);
			pStatement.setInt(1, idUsuariReceptor);
			ResultSet rs = pStatement.executeQuery();
			while(rs.next()) {
				Missatge missatge = makeMissatge(rs);
				llistatMissatgesUsuari.add(missatge);
			}
			pStatement.close();
		} catch (Exception e) {
			throw e;
		} finally {
			if (connection != null) {
				connection.close();				
			}
		}
		return llistatMissatgesUsuari;
	}
	
	private Missatge makeMissatge(ResultSet rs) throws SQLException {
		int id = rs.getInt("id");
		String titol = rs.getString("titol");
		String cos = rs.getString("cos");		
		int idUsuari = rs.getInt("idUsuari");
		int idAssessorament = rs.getInt("idAssessorament");
		int idAssessor = rs.getInt("idAssessor");		
		Date dataCreacio = rs.getDate("dataCreacio");
		
		Missatge missatge = new Missatge(id, titol, cos, idUsuari, idAssessorament, idAssessor, dataCreacio);
		
		return missatge;
		
	}
}
