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

import com.travelcloud.model.Usuari;
import com.travelcloud.model.Viatge;
import com.travelcloud.repository.DAOViatge;

@Repository
public class DAOViatgeImpl implements DAOViatge{
	
	List<Viatge> llistatViatges;

	@Autowired
	private DataSource dataSource;
	
	@Override
	public void insertarViatge(Viatge viatge) throws Exception{  
		String sql = "INSERT INTO viatge (IdViatge, Comunitat, Provincia, Localitat, Entorn, Durada, TipusViatger, Descripcio, idUsuari, Data) "
				+ "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, viatge.getIdVIATGE());
			pStatement.setString(2, viatge.getComunitat());
			pStatement.setString(3, viatge.getProvincia());
			pStatement.setString(4, viatge.getLocalitat());
			pStatement.setString(5, viatge.getEntorn());
			pStatement.setString(6, viatge.getDurada());
			pStatement.setString(7, viatge.getTipusViatger());
			pStatement.setString(8, viatge.getDescripcio());
			pStatement.setInt(9, viatge.getIdUSUARI());  //sale fallo porque devuelve un objeto usuari y nose como hacerlo xd
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
		String sql = "UPDATE viatge SET Comunitat = ?, Provincia = ?, Localitat = ?, Entorn = ?, Durada = ?, TipusViatger = ?, Descripcio = ? WHERE idVIATGE = ?";
		
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setString(1, viatge.getComunitat());
			pStatement.setString(2, viatge.getProvincia());
			pStatement.setString(3, viatge.getLocalitat());
			pStatement.setString(4, viatge.getEntorn());
			pStatement.setString(5, viatge.getDurada());
			pStatement.setString(6, viatge.getTipusViatger());
			pStatement.setString(7, viatge.getDescripcio());
			pStatement.setInt(8, viatge.getIdVIATGE());
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
	
	@Override
	public List<Viatge> llistarViatges() throws Exception{
		String sql = "SELECT * FROM viatge";
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			ResultSet rs = pStatement.executeQuery();
			while(rs.next()) {
				Viatge viatge = makeUser(rs);
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
	
	
	private Usuari makeUser(ResultSet rs) throws SQLException {
		int IdViatge = rs.getInt("IdViatge");
		String Comunitat = rs.getString("Comunitat");
		String Provincia = rs.getString("Provincia");   
		String Localitat = rs.getString("Localitat");
		String Entorn = rs.getString("Entorn");
		String Durada = rs.getString("Durada");
		String TipusViatger = rs.getString("TipusViatger");
		String Descripcio = rs.getString("Descripcio");
		int IdUsuari = rs.getInt("IdUsuari");
		Date data = rs.getDate("Data");
		
		Viatge viatge = new Viatge(IdViatge, Comunitat, Provincia, Localitat, Entorn, Durada, TipusViatger, Descripcio, IdUsuari, data);   //porque idusuari esta como usauri
		return viatge; 
		
	}
	
}
