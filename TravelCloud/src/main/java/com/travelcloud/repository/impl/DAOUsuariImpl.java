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
		String sql = "INSERT INTO usuari (idUSUARI, NomUsuari, Contrasenya, email, Telefon, DataRegistre, Rol) "
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
			pStatement.setDate(6, new Date(Calendar.getInstance().getTime().getTime()));
			pStatement.setString(7, usuari.getRol());

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
		String sql = "UPDATE usuari SET NomUsuari = ?, Contrasenya = ?, Telefon = ?, Descripcio = ? WHERE idUSUARI = ?";
		
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setString(1, usuari.getNomUsuari());
			pStatement.setString(2, usuari.getContrasenya());
			pStatement.setString(3, usuari.getTelefon());
			pStatement.setInt(5, usuari.getIdUSUARI());
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
		String sql = "DELETE FROM usuari  WHERE idUsuari = ?";
		
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, usuari.getIdUSUARI());
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
		int idUsuari = rs.getInt("idUsuari");
		String nomUsuari = rs.getString("NomUsuari");
		String cognomUsuari = rs.getString("CognomUsuari");   //pensaba que lo guardabamos por separado, sino quitar
		String contrasenyaUsuari = rs.getString("contrasenya");
		String emailUsuari = rs.getString("email");
		String telefonUsuari = rs.getString("telefon");
		Date dataRegistre = rs.getDate("DataRegistre");
		String rol = rs.getString("Rol");
		
		Usuari usuari = new Usuari(idUsuari, nomUsuari, contrasenyaUsuari, emailUsuari, telefonUsuari, rol, dataRegistre);
		return usuari;
		
	}
	
	
	
}
