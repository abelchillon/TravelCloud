package com.travelcloud.repository.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Calendar;
import java.sql.Date;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.travelcloud.model.Usuari;
import com.travelcloud.repository.DAOUsuari;

@Repository
public class DAOUsuariImpl implements DAOUsuari{

	@Autowired
	private DataSource dataSource;

	@Override
	public void insertarUsuari(Usuari usuari) throws Exception {
		String sql = "INSERT INTO usuari (idUSUARI, NomUsuari, Contrasenya, email, Telefon, Descripcio, DataRegistre) "
								+ "values (?, ?, ?, ?, ?, ?, ?)";
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, usuari.getIdUSUARI());
			pStatement.setString(2, usuari.getNomUsuari());
			pStatement.setString(3, usuari.getContrasenya());
			pStatement.setString(4, usuari.getEmail());
			pStatement.setString(5, usuari.getTelefon());
			pStatement.setString(6, usuari.getDescripcio());
			pStatement.setDate(7, new Date(Calendar.getInstance().getTime().getTime()));
			
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
	
}
