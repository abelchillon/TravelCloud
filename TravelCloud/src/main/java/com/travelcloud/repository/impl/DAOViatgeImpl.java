package com.travelcloud.repository.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.travelcloud.model.Usuari;
import com.travelcloud.model.Viatge;
import com.travelcloud.repository.DAOViatge;

@Repository
public class DAOViatgeImpl implements DAOViatge{
	
	List<Viatge> llistatViatges;
	List<Viatge> llistatViatgesUsuari;

	@Autowired
	private DataSource dataSource;
	
	@Override
	public void insertarViatge(Viatge viatge) throws Exception{  
		String sql = "INSERT INTO viatge (comunitat, provincia, localitat, entorn, durada, tipus, descripcio, titol, idUsuari, dataCreacio) "
				+ "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setString(2, viatge.getComunitat());
			pStatement.setString(3, viatge.getProvincia());
			pStatement.setString(4, viatge.getLocalitat());
			pStatement.setString(5, viatge.getEntorn());
			pStatement.setString(6, viatge.getDurada());
			pStatement.setString(7, viatge.getTipus());
			pStatement.setString(8, viatge.getDescripcio());
			pStatement.setString(9, viatge.getTitol());
			pStatement.setInt(10, viatge.getIdUsuari());
			pStatement.setDate(10, new Date(Calendar.getInstance().getTime().getTime()));
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
	public void modificarViatge(Viatge viatge) throws Exception{
		String sql = "UPDATE viatge SET comunitat = ?, provincia = ?, localitat = ?, entorn = ?, durada = ?, tipus = ?, descripcio = ? WHERE id = ?";
		
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setString(1, viatge.getComunitat());
			pStatement.setString(2, viatge.getProvincia());
			pStatement.setString(3, viatge.getLocalitat());
			pStatement.setString(4, viatge.getEntorn());
			pStatement.setString(5, viatge.getDurada());
			pStatement.setString(6, viatge.getTipus());
			pStatement.setString(7, viatge.getDescripcio());
			pStatement.setInt(8, viatge.getId());
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
	public void eliminarViatge(Viatge viatge) throws Exception{
		
	}
	
	//LISTAR TODOS LOS VIAJES
	@Override
	public List<Viatge> llistarViatges() throws Exception{
		String sql = "SELECT * FROM viatge";
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			ResultSet rs = pStatement.executeQuery();
			while(rs.next()) {
				Viatge viatge = makeViatge(rs);
				llistatViatges.add(viatge);
			}
			pStatement.close();
		} catch (Exception e) {
			throw e;
		} finally {
			if (connection != null) {
				connection.close();				
			}
		}
		
		return llistatViatges;
	}
	
	//LISTAR VIAJES POR ID USUARI
	@Override
	public List<Viatge> llistarViatgesUsuari(int idUsuari) throws Exception{
		String sql = "SELECT * FROM viatge WHERE idUsuari = ?";
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, idUsuari);
			ResultSet rs = pStatement.executeQuery();
			while(rs.next()) {
				Viatge viatge = makeViatge(rs);
				llistatViatgesUsuari.add(viatge);
			}
			pStatement.close();
		} catch (Exception e) {
			throw e;
		} finally {
			if (connection != null) {
				connection.close();				
			}
		}
		
		return llistatViatgesUsuari;
	}
	
	private Viatge makeViatge(ResultSet rs) throws SQLException {
		int id = rs.getInt("id");
		String comunitat = rs.getString("comunitat");
		String provincia = rs.getString("provincia");   
		String localitat = rs.getString("localitat");
		String entorn = rs.getString("entorn");
		String durada = rs.getString("durada");
		String tipus = rs.getString("tipus");
		String descripcio = rs.getString("descripcio");
		String titol = rs.getString("titol");
		int idUsuari = rs.getInt("idUsuari");
		Date dataCreacio = rs.getDate("dataCreacio");
		
		Viatge viatge = new Viatge(id, comunitat, provincia, localitat, entorn, durada, tipus, descripcio, titol, idUsuari, dataCreacio); 
		return viatge; 
		
	}
	
	
	@Override
	public List<Viatge> obtenirViatges() throws Exception {
		String sql = "SELECT DISTINCT id, comunitat, provincia, localitat, entorn, durada, tipus, descripcio, titol, idUsuari, dataCreacio FROM viatge";
		Connection connection = null;
		List<Viatge> viatges = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			ResultSet rs = pStatement.executeQuery();
			viatges = new ArrayList<Viatge>();
			while (rs.next()) {
				Viatge viatge = new Viatge();
				viatge.setId(rs.getInt("id"));
				viatge.setComunitat(rs.getString("comunitat"));
				viatge.setProvincia(rs.getString("provincia"));
				viatge.setLocalitat(rs.getString("localitat"));
				viatge.setEntorn(rs.getString("entorn"));
				viatge.setDurada(rs.getString("durada"));
				viatge.setTipus(rs.getString("tipus"));
				viatge.setDescripcio(rs.getString("descripcio"));
				viatge.setTitol(rs.getString("titol"));
				viatge.setIdUsuari(rs.getInt("idUsuari"));
				viatge.setLocalitat(rs.getString("localitat"));
				viatge.setDataCreacio(rs.getDate("dataCreacio"));
				
				viatges.add(viatge);
			}
			rs.close();
			pStatement.close();
		} catch (Exception e) {
			throw e;
		} finally {
			if (connection != null) {
				connection.close();
			}
		}
		
		return viatges;
	}
}

	
