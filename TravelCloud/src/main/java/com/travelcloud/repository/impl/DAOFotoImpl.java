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
	public void insertarFotoUsuari(Foto foto) throws Exception {
		String sql = "INSERT INTO foto (idUsuari, src, dataCreacio) "
				+ "values (?, ?, ?)";
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, foto.getIdUsuari());
			pStatement.setString(2, foto.getSrc());
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
	public void insertarFotoViatge(Foto foto) throws Exception {
		String sql = "INSERT INTO foto (idViatge, src, dataCreacio) "
				+ "values (?, ?, ?)";
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, foto.getIdViatge());
			pStatement.setString(2, foto.getSrc());
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
	public void modificarFoto(Foto foto) throws Exception {
		String sql = "UPDATE foto SET src = ? WHERE id = ? ";
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setString(1, foto.getSrc());
			pStatement.setInt(2, foto.getId());	
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
		String sql = "DELETE FROM foto  WHERE id = ?";
		
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, foto.getId());
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
		String sql = "SELECT * FROM foto WHERE idUsuari = ?";
		Connection connection = null;
		
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, idUsuari);
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
		int id = rs.getInt("id");
		int idUsuari = rs.getInt("idUsuari");
		int idViatge = rs.getInt("idViatge");
		String source = rs.getString("src");
		Date dataCreacio = rs.getDate("dataCreacio");
		
		Foto foto = new Foto(id, idUsuari, idViatge, source, dataCreacio); 
		return foto; 
		
	}

	@Override
	public String obtenirFotoPerViatge(int idViatge) throws Exception {
		String sql = "SELECT * FROM foto WHERE idViatge = ?";
		Connection connection = null;
		
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, idViatge);
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
		return foto.getSrc();
		
	}
	
	
	
}
