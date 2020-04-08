package com.travelcloud.repository.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.List;
import java.sql.Date;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.travelcloud.model.Usuari;
import com.travelcloud.repository.DAOUsuari;

@Repository
public class DAOUsuariImpl implements DAOUsuari{
	
	List<Usuari> llistatUsuaris;

	@Autowired
	private DataSource dataSource;

	@Override
	public void insertarUsuari(Usuari usuari) throws Exception {
		String sql = "INSERT INTO usuari (nom, cognom1, cognom2, password, email, telefon, rol, dataCreacio) "
								+ "values (?, ?, ?, ?, ?, ?, ?, ?)";
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setString(1, usuari.getNom());
			pStatement.setString(2, usuari.getCognom1());
			pStatement.setString(3, usuari.getCognom2());
			pStatement.setString(4, usuari.getPassword());
			pStatement.setString(5, usuari.getEmail());
			pStatement.setString(6, usuari.getTelefon());
			pStatement.setString(7, usuari.getRol());
			pStatement.setDate(8, new Date(Calendar.getInstance().getTime().getTime()));

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
	public void modificarUsuari(Usuari usuari) throws Exception {
		String sql = "UPDATE usuari SET nom = ?, password = ?, telefon = ? WHERE id = ?";
		
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setString(1, usuari.getNom());
			pStatement.setString(2, usuari.getPassword());
			pStatement.setString(3, usuari.getTelefon());
			pStatement.setInt(4, usuari.getId());
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
	public void eliminarUsuari(Usuari usuari) throws Exception{
		String sql = "DELETE FROM usuari  WHERE id = ?";
		
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, usuari.getId());
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
	public List<Usuari> llistarUsuaris() throws Exception{
		String sql = "SELECT * FROM usuari";
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			ResultSet rs = pStatement.executeQuery();
			while(rs.next()) {
				Usuari usuari = makeUser(rs);
				llistatUsuaris.add(usuari);
			}
			pStatement.close();
		} catch (Exception e) {
			throw e;
		} finally {
			if (connection != null) {
				connection.close();				
			}
		}
		
		return llistatUsuaris;
	}
	
	private Usuari makeUser(ResultSet rs) throws SQLException {
		int id = rs.getInt("id");
		String nom = rs.getString("nom");
		String cognom1 = rs.getString("cognom1"); 
		String cognom2 = rs.getString("cognom2"); 
		String password = rs.getString("password");
		String email = rs.getString("email");
		String telefon = rs.getString("telefon");
		Date dataCreacio = rs.getDate("dataCreacio");
		String rol = rs.getString("rol");
		
		Usuari usuari = new Usuari(id, nom, cognom1, cognom2, password, email, telefon, rol, dataCreacio);
		return usuari;
		
	}
	
	
	
}
