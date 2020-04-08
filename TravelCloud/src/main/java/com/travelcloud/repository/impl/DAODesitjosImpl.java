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
import com.travelcloud.repository.DAODesitjos;

@Repository
public class DAODesitjosImpl implements DAODesitjos{

	@Autowired
	private DataSource dataSource;
	List<Desitjos> llistatDesitjos;
	
	@Override
	public void insertarDesitjos(Desitjos desitjos) throws Exception{
		String sql = "INSERT INTO desitjos (idUsuari, idViatge, dataCreacio) "
				+ "values (?, ?, ?)";
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, desitjos.getIdUsuari());
			pStatement.setInt(2, desitjos.getIdViatge());
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
		String sql = "DELETE FROM desitjos  WHERE idUsuari = ? AND idViatge = ?";
		
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, desitjos.getIdUsuari());
			pStatement.setInt(2, desitjos.getIdViatge());
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
	
	private Desitjos makeDesitjos(ResultSet rs) throws SQLException {
		int id = rs.getInt("id");
		int idUsuari = rs.getInt("idUsuari");
		int idViatge = rs.getInt("idViatge");
		Date dataCreacio = rs.getDate("Data");
		
		Desitjos desitjos = new Desitjos(id, idUsuari, idViatge, dataCreacio);
		return desitjos; 
		
	}
	
}
