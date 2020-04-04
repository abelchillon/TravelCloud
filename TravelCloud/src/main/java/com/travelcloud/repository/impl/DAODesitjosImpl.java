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

import com.travelcloud.model.Desitjos;
import com.travelcloud.model.Valoracio;
import com.travelcloud.repository.DAODesitjos;

@Repository
public class DAODesitjosImpl implements DAODesitjos{

	@Autowired
	private DataSource dataSource;
	List<Desitjos> llistatDesitjos;
	
	@Override
	public void insertarDesitjos(Desitjos desitjos) throws Exception{
		String sql = "INSERT INTO desitjos (idViatge, idUsuari, data) "
				+ "values (?, ?, ?)";
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, desitjos.getIdVIATGE().getIdVIATGE());
			pStatement.setInt(2, desitjos.getIdUSUARI().getIdUSUARI());
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
	public void eliminarDesitjos(Desitjos desitjos) throws Exception{
		String sql = "DELETE FROM desitjos  WHERE idUSUARI = ? AND idVIATGE = ?";
		
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, desitjos.getIdVIATGE().getIdVIATGE());
			pStatement.setInt(2, desitjos.getIdUSUARI().getIdUSUARI());
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
	public List<Desitjos> llistarDesitjos(int idUsuari) throws Exception{
		String sql = "SELECT * FROM desitjos WHERE idUsuari = ?";
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, idUsuari);
			ResultSet rs = pStatement.executeQuery();
			while(rs.next()) {
				Desitjos desitjos = makeDesitjos(rs);
				llistatDesitjos.add(desitjos);
			}
			pStatement.close();
		} catch (Exception e) {
			throw e;
		} finally {
			if (connection != null) {
				connection.close();				
			}
		}
		return llistatDesitjos;
	}
	
	private Valoracio makeDesitjos(ResultSet rs) throws SQLException {
		int idViatge = rs.getInt("idViatge");
		int idUsuari = rs.getInt("idUsuari");
		Date data = rs.getDate("Data");
		
		Desitjos desitjos = new Desitjos(idViatge, idUsuari, data); //porque idusuari esta como usauri i idviaje esta como viaje
		return desitjos; 
		
	}
	
}
