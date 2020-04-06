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
import com.travelcloud.model.Foto;
import com.travelcloud.model.Valoracio;
import com.travelcloud.repository.DAOFoto;

@Repository
public class DAOFotoImpl implements DAOFoto{

	@Autowired
	private DataSource dataSource;
	List<Foto> llistatFotos;
	Foto foto;

	@Override
	public void insertarFoto(Foto foto) throws Exception {
		String sql = "INSERT INTO foto (idFoto, idUsuari, idViatge, tipus, source, data) "
				+ "values (?, ?, ?, ?, ?, ?)";
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, foto.getIdFOTO());
			pStatement.setInt(2, foto.getIdUSUARI().getIdUSUARI());
			pStatement.setInt(3, foto.getIdVIATGE().getIdVIATGE());
			pStatement.setInt(4, foto.getTipus());
			pStatement.setString(5, foto.getSource());
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
	public void eliminarFoto(Foto foto) throws Exception{
		String sql = "DELETE FROM foto  WHERE idFoto = ?";
		
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, foto.getIdFOTO());
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
	public List<Foto> llistarFotosViatge(int idViatge) throws Exception{
		String sql = "SELECT * FROM foto WHERE idViatge = ?";
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, idViatge);
			ResultSet rs = pStatement.executeQuery();
			while(rs.next()) {
				Foto foto = makeFoto(rs);
				llistatFotos.add(foto);
			}
			pStatement.close();
		} catch (Exception e) {
			throw e;
		} finally {
			if (connection != null) {
				connection.close();				
			}
		}
		return llistatFotos;
	}
	
	@Override
	public Foto llistarFotoUsuari(int idUsuari, int tipus) throws Exception{
		String sql = "SELECT * FROM foto WHERE idUsuari = ? AND tipus = ?";
		Connection connection = null;
		
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, idUsuari);
			pStatement.setInt(2, tipus);
			ResultSet rs = pStatement.executeQuery();
			while(rs.next()) {
				foto = makeFoto(rs);
			}
			pStatement.close();
		} catch (Exception e) {
			throw e;
		} finally {
			if (connection != null) {
				connection.close();				
			}
		}
		return foto;
		
	}
	

	private Foto makeFoto(ResultSet rs) throws SQLException {
		int idFoto = rs.getInt("idFoto");
		int idUsuari = rs.getInt("idUsuari");
		int idViatge = rs.getInt("idViatge");
		int tipus = rs.getInt("tipus");
		String source = rs.getString("source");
		Date data = rs.getDate("Data");
		
		Foto foto = new Foto(idFoto, idUsuari, idViatge, tipus, source, data); //YSM - porque idusuari esta como usauri i idviaje esta como viaje
		return foto; 
		
	}
	
	
	
}
