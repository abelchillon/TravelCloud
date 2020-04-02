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

	List<Valoracio> llistatValoracions; //x idViatge
	@Autowired
	private DataSource dataSource;

	@Override
	public void insertarValoracio(Valoracio valoracio) throws Exception{
		String sql = "INSERT INTO valoracio (idUSUARI, idVIATGE, Comentari, Puntuacio, Data) "
				+ "values (?, ?, ?, ?, ?)";
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, valoracio.getIdUSUARI());
			pStatement.setInt(2, valoracio.getIdVIATGE());
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
		String sql = "UPDATE valoracio SET Comentari = ?, Puntuacio = ?  WHERE idUSUARI = ? AND idVIATGE = ?";
		
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setString(1, valoracio.getComentari());
			pStatement.setInt(2, valoracio.getPuntuacio());
			pStatement.setInt(3, valoracio.getIdUSUARI());
			pStatement.setInt(4, valoracio.getIdVIATGE());
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
	public void eliminarValoracio(Valoracio valoracio) throws Exception{  // se tendra que cambiar cuando haya id de valoracion...
		String sql = "DELETE FROM valoracio  WHERE idUSUARI = ? AND idVIATGE = ?";
		
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, valoracio.getIdUSUARI());
			pStatement.setInt(2, valoracio.getIdVIATGE());
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
		
		String sql = "SELECT * FROM valoracio";
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			ResultSet rs = pStatement.executeQuery();
			while(rs.next()) {
				Valoracio valoracio = makeValoracio(rs);
				if (idViatgeValoracio == valoracio.getIdVIATGE()) {
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
		int IdUsuari = rs.getInt("IdUSUARI");
		int IdViatge = rs.getInt("IdVIATGE");
		String Comentari = rs.getString("Comentari");
		int Puntuacio = rs.getInt("Puntuacio");   
		Date data = rs.getDate("Data");
		
		Valoracio valoracio = new Valoracio(IdUsuari, IdViatge, Comentari, Puntuacio, data); //porque idusuari esta como usauri
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
				valoracio.setIdUSUARI(rs.getInt("idUSUARI"));
				valoracio.setIdVIATGE(rs.getInt("idVIATGE"));
				valoracio.setComentari(rs.getString("Comentari"));
				valoracio.setPuntuacio(rs.getInt("Puntuacio"));
				valoracio.setData(rs.getDate("Data"));
				
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
}
