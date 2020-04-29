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
import com.travelcloud.model.Valoracio;
import com.travelcloud.model.Viatge;
import com.travelcloud.repository.DAOValoracio;

@Repository
public class DAOValoracioImpl implements DAOValoracio{

	List<Valoracio> llistatValoracions;
	@Autowired
	private DataSource dataSource;

	@Override
	public void insertarValoracio(Valoracio valoracio) throws Exception{
		String sql = "INSERT INTO valoracio (idUsuari, idViatge, comentari, puntuacio, dataCreacio) "
				+ "values (?, ?, ?, ?, ?)";
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, valoracio.getIdUsuari());
			pStatement.setInt(2, valoracio.getIdViatge());
			pStatement.setString(3, valoracio.getComentari());
			pStatement.setInt(4, valoracio.getPuntuacio());
			pStatement.setDate(5, new Date(Calendar.getInstance().getTime().getTime()));
			
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
	public void modificarValoracio(Valoracio valoracio) throws Exception{
		String sql = "UPDATE valoracio SET comentari = ?, puntuacio = ?  WHERE idUsuari = ? AND idViatge = ?";
		
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setString(1, valoracio.getComentari());
			pStatement.setInt(2, valoracio.getPuntuacio());
			pStatement.setInt(3, valoracio.getIdUsuari());
			pStatement.setInt(4, valoracio.getIdViatge());
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
	public void eliminarValoracio(Valoracio valoracio) throws Exception{  
		String sql = "DELETE FROM valoracio  WHERE idUsuari = ? AND idViatge = ?";
		
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, valoracio.getIdUsuari());
			pStatement.setInt(2, valoracio.getIdViatge());
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
	public List<Valoracio> llistarValoracionsPerViatge(int idViatgeValoracio) throws Exception{
		String sql = "SELECT * FROM valoracio WHERE idViatge = ?";
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, idViatgeValoracio);
			ResultSet rs = pStatement.executeQuery();
			while(rs.next()) {
				Valoracio valoracio = makeValoracio(rs);
				if (idViatgeValoracio == valoracio.getIdViatge()) {
					llistatValoracions.add(valoracio);
				}
			}
			pStatement.close();
		} catch (Exception e) {
			throw e;
		} finally {
			if (connection != null) {
				connection.close();				
			}
		}
		return llistatValoracions;
	}
	
	private Valoracio makeValoracio(ResultSet rs) throws SQLException {
		int id = rs.getInt("id");
		int idUsuari = rs.getInt("idUsuari");
		int idViatge = rs.getInt("idViatge");
		String comentari = rs.getString("comentari");
		int puntuacio = rs.getInt("puntuacio");   
		Date dataCreacio = rs.getDate("dataCreacio");
		
		Valoracio valoracio = new Valoracio(id, idUsuari, idViatge, comentari, puntuacio, dataCreacio); 
		return valoracio; 
		
	}
	
	@Override
	public List<Valoracio> obtenirPuntuacions() throws Exception {
		String sql = "SELECT * FROM valoracio";
		Connection connection = null;
		List<Valoracio> valoracions = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			ResultSet rs = pStatement.executeQuery();
			valoracions = new ArrayList<Valoracio>();
			while (rs.next()) {
				Valoracio valoracio = new Valoracio();
				valoracio.setId(rs.getInt("id"));
				valoracio.setIdUsuari(rs.getInt("idUsuari"));
				valoracio.setIdViatge(rs.getInt("idViatge"));
				valoracio.setComentari(rs.getString("comentari"));
				valoracio.setPuntuacio(rs.getInt("puntuacio"));
				valoracio.setDataCreacio(rs.getDate("dataCreacio"));
				
				valoracions.add(valoracio);
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
		return valoracions;
	}
	
	@Override
	public int puntuacioTotalViatge(int idViatge) throws Exception {
		String sql = "SELECT puntuacio FROM valoracio WHERE idViatge = ?";
		Connection connection = null;
		int puntuacio;
		int puntuacioTotal = 0;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			ResultSet rs = pStatement.executeQuery();
			pStatement.setInt(1, idViatge);
			while(rs.next()) {
				puntuacio = rs.getInt("puntuacio");
				puntuacioTotal = puntuacioTotal + puntuacio;
			}
			pStatement.close();
		} catch (Exception e) {
			throw e;
		} finally {
			if (connection != null) {
				connection.close();				
			}
		}
		return puntuacioTotal;
	}
}
