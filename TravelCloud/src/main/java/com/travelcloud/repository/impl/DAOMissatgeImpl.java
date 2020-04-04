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
import com.travelcloud.model.Usuari;
import com.travelcloud.repository.DAOMissatge;

@Repository
public class DAOMissatgeImpl implements DAOMissatge{
	
	List<Missatge> llistatMissatges;
	List<Missatge> llistatMissatgesUsuari;
	
	@Autowired
	private DataSource dataSource;
	
	@Override
	public void insertarMissatge(Missatge missatge) throws Exception{
		
		String sql = "INSERT INTO missatge (idMissatge, idUsuariEmisor, idUsuariReceptor, titol, descripcio, dataMissatge) "
				+ "values (?, ?, ?, ?, ?, ?)";
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, missatge.getIdMissatge());
			pStatement.setInt(2, missatge.getIdUsuariEmisor());
			pStatement.setInt(3, missatge.getIdUsuariReceptor());
			pStatement.setString(4, missatge.getTitol());
			pStatement.setString(5, missatge.getDescripcio());
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
		String sql = "DELETE FROM missatge  WHERE idMissatge = ?";
		
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, missatge.getIdMissatge());
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
		String sql = "SELECT * FROM missatge WHERE idUsuariEmisor = ? AND idUsuariReceptor = ?";
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
		int idMissatge = rs.getInt("idMissatge");
		int idUsuariEmisor = rs.getInt("idUsuariEmisor");
		int idUsuariReceptor = rs.getInt("idUsuariReceptor");
		String titol = rs.getString("titol");
		String descripcio = rs.getString("descripcio");
		Date dataMissatge = rs.getDate("dataMissatge");
		
		Missatge missatge = new Missatge(idMissatge, idUsuariEmisor, idUsuariReceptor, titol, descripcio, dataMissatge);
		
		return missatge;
		
	}
}
