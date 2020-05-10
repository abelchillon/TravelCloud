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
		String sql = "DELETE FROM viatge  WHERE id = ?";
		
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, viatge.getId());
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
		String sql = "SELECT DISTINCT vi.id, vi.comunitat, vi.provincia, vi.localitat, vi.entorn, vi.durada, vi.tipus, vi.descripcio, vi.titol, vi.idUsuari, vi.dataCreacio, va.puntuacio FROM viatge vi JOIN valoracio va ON va.idViatge = vi.id";
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
				viatge.setPuntuacio(rs.getInt("puntuacio"));

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
		List<String> comunitats = new ArrayList<String>();
		List<Viatge> viatgesEsborrar = new ArrayList<Viatge>();
		for (Viatge viatge : viatges) {
			for (String comunitat : comunitats) {
				if (viatge.getComunitat()!=null 
						&& viatge.getComunitat().equals(comunitat)) {
					viatgesEsborrar.add(viatge);
				}
			}
			comunitats.add(viatge.getComunitat());
		}
		
		for (Viatge viatge : viatgesEsborrar) {
			viatges.remove(viatge);
		}
		return viatges;
	}

	@Override
	public List<Viatge> obtenirViatgesSegonComunitat(int id) throws Exception {
		String sql = "SELECT * FROM viatge where comunitat = (select comunitat from viatge where id = ?)";
		Connection connection = null;
		List<Viatge> viatges = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, id);
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
		
		List<String> provincies = new ArrayList<String>();
		for (Viatge viatge : viatges) {
			for (String provincia : provincies) {
				if (viatge.getProvincia()!=null 
						&& viatge.getProvincia().equals(provincia)) {
					viatge.setProvincia(null);
				}
			}
			provincies.add(viatge.getProvincia());
		}
			
		return viatges;
	}
	
	@Override
	public List<Viatge> obtenirViatgesSegonLocalitat(int id) throws Exception {
		String sql = "SELECT vi.*, va.puntuacio FROM viatge vi JOIN valoracio va ON va.idViatge = vi.id where vi.localitat = (select localitat from viatge where id = ?)";
		
		Connection connection = null;
		List<Viatge> viatges = null;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setInt(1, id);
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
				viatge.setPuntuacio(rs.getInt("puntuacio"));
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

	@Override
	public List<Viatge> obtenirViatgesPerFiltre(Viatge viatge) throws Exception {
		String sql = "";
		Connection connection = null;
		connection = dataSource.getConnection();
		PreparedStatement pStatement = null;
		ResultSet rs = null;	
		boolean hasPuntuacio = false;
		if (viatge.getPuntuacio()!=0) {
			hasPuntuacio = true;
			if (viatge.getComunitat()!=null && !viatge.getComunitat().equals("") && viatge.getProvincia()!=null && !viatge.getProvincia().equals("")
					&& viatge.getLocalitat() != null && !viatge.getLocalitat().equals("") && viatge.getEntorn() != null && !viatge.getEntorn().equals("")
					&& viatge.getDurada()!=null && !viatge.getDurada().equals("") && viatge.getTipus()!=null && !viatge.getTipus().equals("")) {
				sql = "SELECT vi.*, va.puntuacio, f.src FROM viatge vi JOIN valoracio va ON va.idViatge = vi.id "
						+ "JOIN foto f ON f.idViatge = vi.id "
						+ "where vi.comunitat = (select comunitat from viatge where id = ?) "
						+ "and vi.provincia = (select provincia from viatge where id = ?) "
						+ "and vi.localitat = (select localitat from viatge where id = ?) "
						+ "and vi.entorn = (select entorn from viatge where id = ?) "
						+ "and vi.durada = (select durada from viatge where id = ?) "
						+ "and vi.tipus = (select tipus from viatge where id = ?) "
						+ "and va.puntuacio = ? ";

				pStatement = connection.prepareStatement(sql);
				pStatement.setInt(1, Integer.parseInt(viatge.getComunitat()));
				pStatement.setInt(2, Integer.parseInt(viatge.getProvincia()));
				pStatement.setInt(3, Integer.parseInt(viatge.getLocalitat()));
				pStatement.setInt(4, Integer.parseInt(viatge.getEntorn()));
				pStatement.setInt(5, Integer.parseInt(viatge.getDurada()));
				pStatement.setInt(6, Integer.parseInt(viatge.getTipus()));
				pStatement.setInt(7, viatge.getPuntuacio());			
				rs = pStatement.executeQuery();
			} else if (viatge.getComunitat()!=null && !viatge.getComunitat().equals("") && viatge.getProvincia()!=null && !viatge.getProvincia().equals("")
					&& viatge.getLocalitat() != null && !viatge.getLocalitat().equals("") && viatge.getEntorn() != null && !viatge.getEntorn().equals("")
					&& viatge.getDurada()!=null && !viatge.getDurada().equals("")) {
				sql = "SELECT vi.*, va.puntuacio, f.src FROM viatge vi JOIN valoracio va ON va.idViatge = vi.id "
						+ "JOIN foto f ON f.idViatge = vi.id "
						+ "where vi.comunitat = (select comunitat from viatge where id = ?) "
						+ "and vi.provincia = (select provincia from viatge where id = ?) "
						+ "and vi.localitat = (select localitat from viatge where id = ?) "
						+ "and vi.entorn = (select entorn from viatge where id = ?) "
						+ "and vi.durada = (select durada from viatge where id = ?) "
						+ "and va.puntuacio = ?";
				
				pStatement = connection.prepareStatement(sql);
				pStatement.setInt(1, Integer.parseInt(viatge.getComunitat()));
				pStatement.setInt(2, Integer.parseInt(viatge.getProvincia()));
				pStatement.setInt(3, Integer.parseInt(viatge.getLocalitat()));
				pStatement.setInt(4, Integer.parseInt(viatge.getEntorn()));
				pStatement.setInt(5, Integer.parseInt(viatge.getDurada()));
				pStatement.setInt(6, viatge.getPuntuacio());
				rs = pStatement.executeQuery();
			} else if (viatge.getComunitat()!=null && !viatge.getComunitat().equals("") && viatge.getProvincia()!=null && !viatge.getProvincia().equals("")
					&& viatge.getLocalitat() != null && !viatge.getLocalitat().equals("") && viatge.getEntorn() != null && !viatge.getEntorn().equals("")) {
				sql = "SELECT vi.*, va.puntuacio, f.src FROM viatge vi JOIN valoracio va ON va.idViatge = vi.id "
						+ "JOIN foto f ON f.idViatge = vi.id "
						+ "where vi.comunitat = (select comunitat from viatge where id = ?) "
						+ "and vi.provincia = (select provincia from viatge where id = ?) "
						+ "and vi.localitat = (select localitat from viatge where id = ?) "
						+ "and vi.entorn = (select entorn from viatge where id = ?) "
						+ "and va.puntuacio = ?";

				pStatement = connection.prepareStatement(sql);
				pStatement.setInt(1, Integer.parseInt(viatge.getComunitat()));
				pStatement.setInt(2, Integer.parseInt(viatge.getProvincia()));
				pStatement.setInt(3, Integer.parseInt(viatge.getLocalitat()));
				pStatement.setInt(4, Integer.parseInt(viatge.getEntorn()));
				pStatement.setInt(5, viatge.getPuntuacio());
				rs = pStatement.executeQuery();
			} else if (viatge.getComunitat()!=null && !viatge.getComunitat().equals("") && viatge.getProvincia()!=null && !viatge.getProvincia().equals("")
					&& viatge.getLocalitat() != null && !viatge.getLocalitat().equals("")) {
				sql = "SELECT vi.*, va.puntuacio, f.src FROM viatge vi JOIN valoracio va ON va.idViatge = vi.id "
						+ "JOIN foto f ON f.idViatge = vi.id "
						+ "where vi.comunitat = (select comunitat from viatge where id = ?) "
						+ "and vi.provincia = (select provincia from viatge where id = ?) "
						+ "and vi.localitat = (select localitat from viatge where id = ?) "
						+ "and va.puntuacio = ?";
				
				pStatement = connection.prepareStatement(sql);
				pStatement.setInt(1, Integer.parseInt(viatge.getComunitat()));
				pStatement.setInt(2, Integer.parseInt(viatge.getProvincia()));
				pStatement.setInt(3, Integer.parseInt(viatge.getLocalitat()));
				pStatement.setInt(4, viatge.getPuntuacio());
				rs = pStatement.executeQuery();
			} else if (viatge.getComunitat()!=null && !viatge.getComunitat().equals("") && viatge.getProvincia()!=null && !viatge.getProvincia().equals("")) {
				sql = "SELECT vi.*, va.puntuacio, f.src FROM viatge vi JOIN valoracio va ON va.idViatge = vi.id "
						+ "JOIN foto f ON f.idViatge = vi.id "
						+ "where vi.comunitat = (select comunitat from viatge where id = ?) "
						+ "and vi.provincia = (select provincia from viatge where id = ?) "
						+ "and va.puntuacio = ?";

				pStatement = connection.prepareStatement(sql);
				pStatement.setInt(1, Integer.parseInt(viatge.getComunitat()));
				pStatement.setInt(2, Integer.parseInt(viatge.getProvincia()));
				pStatement.setInt(3, viatge.getPuntuacio());	
				rs = pStatement.executeQuery();
			} else if (viatge.getComunitat()!=null && !viatge.getComunitat().equals("")) {
				sql = "SELECT vi.*, va.puntuacio, f.src FROM viatge vi JOIN valoracio va ON va.idViatge = vi.id "
						+ "JOIN foto f ON f.idViatge = vi.id "
						+ "where vi.comunitat = (select comunitat from viatge where id = ?) "
						+ "and va.puntuacio = ?";

				pStatement = connection.prepareStatement(sql);
				pStatement.setInt(1, Integer.parseInt(viatge.getComunitat()));
				pStatement.setInt(2, viatge.getPuntuacio());
				rs = pStatement.executeQuery();
			} else {
				sql = "SELECT vi.*, va.puntuacio, f.src FROM viatge vi JOIN valoracio va ON va.idViatge in (select va.idViatge from valoracio where va.puntuacio = ?) "
						+ "JOIN foto f ON f.idViatge = vi.id ";
				pStatement = connection.prepareStatement(sql);
				pStatement.setInt(1, viatge.getPuntuacio());
				rs = pStatement.executeQuery();
			}
			
		} else {
			if (viatge.getComunitat()!=null && !viatge.getComunitat().equals("") && viatge.getProvincia()!=null && !viatge.getProvincia().equals("")
					&& viatge.getLocalitat() != null && !viatge.getLocalitat().equals("") && viatge.getEntorn() != null && !viatge.getEntorn().equals("")
					&& viatge.getDurada()!=null && !viatge.getDurada().equals("") && viatge.getTipus()!=null && !viatge.getTipus().equals("")) {
				sql = "SELECT vi.*, f.src, va.puntuacio FROM viatge vi JOIN foto f ON f.idViatge = vi.id "
						+ "JOIN valoracio va ON va.idViatge = vi.id "
						+ "where vi.comunitat = (select comunitat from viatge where id = ?) "
						+ "and vi.provincia = (select provincia from viatge where id = ?) "
						+ "and vi.localitat = (select localitat from viatge where id = ?) "
						+ "and vi.entorn = (select entorn from viatge where id = ?) "
						+ "and vi.durada = (select durada from viatge where id = ?) "
						+ "and vi.tipus = (select tipus from viatge where id = ?)";
				
				pStatement = connection.prepareStatement(sql);
				pStatement.setInt(1, Integer.parseInt(viatge.getComunitat()));
				pStatement.setInt(2, Integer.parseInt(viatge.getProvincia()));
				pStatement.setInt(3, Integer.parseInt(viatge.getLocalitat()));
				pStatement.setInt(4, Integer.parseInt(viatge.getEntorn()));
				pStatement.setInt(5, Integer.parseInt(viatge.getDurada()));
				pStatement.setInt(6, Integer.parseInt(viatge.getTipus()));
				rs = pStatement.executeQuery();
			} else if (viatge.getComunitat()!=null && !viatge.getComunitat().equals("") && viatge.getProvincia()!=null && !viatge.getProvincia().equals("")
					&& viatge.getLocalitat() != null && !viatge.getLocalitat().equals("") && viatge.getEntorn() != null && !viatge.getEntorn().equals("")
					&& viatge.getDurada()!=null && !viatge.getDurada().equals("")) {
				sql = "SELECT vi.*, f.src, va.puntuacio FROM viatge vi JOIN foto f ON f.idViatge = vi.id "
						+ "JOIN valoracio va ON va.idViatge = vi.id "
						+ "where vi.comunitat = (select comunitat from viatge where id = ?) "
						+ "and vi.provincia = (select provincia from viatge where id = ?) "
						+ "and vi.localitat = (select localitat from viatge where id = ?) "
						+ "and vi.entorn = (select entorn from viatge where id = ?) "
						+ "and vi.durada = (select durada from viatge where id = ?) ";
				
				pStatement = connection.prepareStatement(sql);
				pStatement.setInt(1, Integer.parseInt(viatge.getComunitat()));
				pStatement.setInt(2, Integer.parseInt(viatge.getProvincia()));
				pStatement.setInt(3, Integer.parseInt(viatge.getLocalitat()));
				pStatement.setInt(4, Integer.parseInt(viatge.getEntorn()));
				pStatement.setInt(5, Integer.parseInt(viatge.getDurada()));
				rs = pStatement.executeQuery();
			} else if (viatge.getComunitat()!=null && !viatge.getComunitat().equals("") && viatge.getProvincia()!=null && !viatge.getProvincia().equals("")
					&& viatge.getLocalitat() != null && !viatge.getLocalitat().equals("") && viatge.getEntorn() != null && !viatge.getEntorn().equals("")) {
				sql = "SELECT vi.*, f.src, va.puntuacio FROM viatge vi JOIN foto f ON f.idViatge = vi.id "
						+ "JOIN valoracio va ON va.idViatge = vi.id "
						+ "where vi.comunitat = (select comunitat from viatge where id = ?) "
						+ "and vi.provincia = (select provincia from viatge where id = ?) "
						+ "and vi.localitat = (select localitat from viatge where id = ?) "
						+ "and vi.entorn = (select entorn from viatge where id = ?)";
				
				pStatement = connection.prepareStatement(sql);
				pStatement.setInt(1, Integer.parseInt(viatge.getComunitat()));
				pStatement.setInt(2, Integer.parseInt(viatge.getProvincia()));
				pStatement.setInt(3, Integer.parseInt(viatge.getLocalitat()));
				pStatement.setInt(4, Integer.parseInt(viatge.getEntorn()));
				rs = pStatement.executeQuery();
			} else if (viatge.getComunitat()!=null && !viatge.getComunitat().equals("") && viatge.getProvincia()!=null && !viatge.getProvincia().equals("")
					&& viatge.getLocalitat() != null && !viatge.getLocalitat().equals("")) {
				sql = "SELECT vi.*, f.src, va.puntuacio FROM viatge vi JOIN foto f ON f.idViatge = vi.id "
						+ "JOIN valoracio va ON va.idViatge = vi.id "
						+ "where vi.comunitat = (select comunitat from viatge where id = ?) "
						+ "and vi.provincia = (select provincia from viatge where id = ?) "
				 		+ "and vi.localitat = (select localitat from viatge where id = ?) ";
				
				pStatement = connection.prepareStatement(sql);
				pStatement.setInt(1, Integer.parseInt(viatge.getComunitat()));
				pStatement.setInt(2, Integer.parseInt(viatge.getProvincia()));
				pStatement.setInt(3, Integer.parseInt(viatge.getLocalitat()));
				rs = pStatement.executeQuery();
			} else if (viatge.getComunitat()!=null && !viatge.getComunitat().equals("") && viatge.getProvincia()!=null && !viatge.getProvincia().equals("")) {
				sql = "SELECT vi.*, f.src, va.puntuacio FROM viatge vi JOIN foto f ON f.idViatge = vi.id "
						+ "JOIN valoracio va ON va.idViatge = vi.id "
						+ "where vi.comunitat = (select comunitat from viatge where id = ?) "
						+ "and vi.provincia = (select provincia from viatge where id = ?)";
				
				pStatement = connection.prepareStatement(sql);
				pStatement.setInt(1, Integer.parseInt(viatge.getComunitat()));
				pStatement.setInt(2, Integer.parseInt(viatge.getProvincia()));
				rs = pStatement.executeQuery();
			} 	else if (viatge.getComunitat()!=null && !viatge.getComunitat().equals("")) {
				sql = "SELECT vi.*, f.src, va.puntuacio FROM viatge vi JOIN foto f ON f.idViatge = vi.id "
						+ "JOIN valoracio va ON va.idViatge = vi.id "
						+ "where vi.comunitat = (select comunitat from viatge where id = ?)";
				
				pStatement = connection.prepareStatement(sql);
				pStatement.setInt(1, Integer.parseInt(viatge.getComunitat()));
				rs = pStatement.executeQuery();
			} else if (viatge.getProvincia()!=null && !viatge.getProvincia().equals("")) {
				sql = "SELECT vi.*, f.src, va.puntuacio FROM viatge vi JOIN foto f ON f.idViatge = vi.id "
						+ "JOIN valoracio va ON va.idViatge = vi.id "
						+ "where vi.provincia = (select provincia from viatge where id = ?)";
				
				pStatement = connection.prepareStatement(sql);
				pStatement.setInt(1, Integer.parseInt(viatge.getProvincia()));
				rs = pStatement.executeQuery();
			} else if (viatge.getLocalitat() != null && !viatge.getLocalitat().equals("")) {
				sql = "SELECT vi.*, f.src, va.puntuacio FROM viatge vi JOIN foto f ON f.idViatge = vi.id "
						+ "JOIN valoracio va ON va.idViatge = vi.id "
						+ "where vi.localitat = (select localitat from viatge where id = ?)";
				
				pStatement = connection.prepareStatement(sql);
				pStatement.setInt(1, Integer.parseInt(viatge.getLocalitat()));
				rs = pStatement.executeQuery();
			} else if (viatge.getTipus()!=null && !viatge.getTipus().equals("")) {
				sql = "SELECT vi.*, f.src, va.puntuacio FROM viatge vi JOIN foto f ON f.idViatge = vi.id "
						+ "JOIN valoracio va ON va.idViatge = vi.id "
						+ "where vi.tipus = (select tipus from viatge where id = ?)";
				
				pStatement = connection.prepareStatement(sql);
				pStatement.setInt(1, Integer.parseInt(viatge.getTipus()));
				rs = pStatement.executeQuery();
			} else if (viatge.getEntorn() != null && !viatge.getEntorn().equals("")) {
				sql = "SELECT vi.*, f.src, va.puntuacio FROM viatge vi JOIN foto f ON f.idViatge = vi.id "
						+ "JOIN valoracio va ON va.idViatge = vi.id "
						+ "where vi.entorn = (select entorn from viatge where id = ?)";
				
				pStatement = connection.prepareStatement(sql);
				pStatement.setInt(1, Integer.parseInt(viatge.getEntorn()));
				rs = pStatement.executeQuery();
			} else if (viatge.getDurada()!=null && !viatge.getDurada().equals("")) {
				sql = "SELECT vi.*, f.src, va.puntuacio FROM viatge vi JOIN foto f ON f.idViatge = vi.id "
						+ "JOIN valoracio va ON va.idViatge = vi.id "
						+ "where vi.durada = (select durada from viatge where id = ?)";
				
				pStatement = connection.prepareStatement(sql);
				pStatement.setInt(1, Integer.parseInt(viatge.getDurada()));
				rs = pStatement.executeQuery();
			}
		}
		List<Viatge> viatges = null;
		try {
			viatges = new ArrayList<Viatge>();
			while (rs.next()) {
				Viatge viatgeResult = new Viatge();
				viatgeResult.setId(rs.getInt("id"));
				viatgeResult.setComunitat(rs.getString("comunitat"));
				viatgeResult.setProvincia(rs.getString("provincia"));
				viatgeResult.setLocalitat(rs.getString("localitat"));
				viatgeResult.setEntorn(rs.getString("entorn"));
				viatgeResult.setDurada(rs.getString("durada"));
				viatgeResult.setTipus(rs.getString("tipus"));
				viatgeResult.setDescripcio(rs.getString("descripcio"));
				viatgeResult.setTitol(rs.getString("titol"));
				viatgeResult.setIdUsuari(rs.getInt("idUsuari"));
				viatgeResult.setLocalitat(rs.getString("localitat"));
				viatgeResult.setDataCreacio(rs.getDate("dataCreacio"));	
				if (rs.getString("src")!=null) {
					viatgeResult.setFotoPortada(rs.getString("src"));
				}
				if (rs.getString("puntuacio")!=null
						|| hasPuntuacio) {
					viatgeResult.setPuntuacio(rs.getInt("puntuacio"));					
				}
				viatges.add(viatgeResult);
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
	
	@Override
	public int totalViatgesUsuari(int idUsuari) throws Exception {
		String sql = "SELECT idViatge FROM viatges WHERE idUsuari = ?";
		Connection connection = null;
		int totalViatges = 0;
		try {
			connection = dataSource.getConnection();
			PreparedStatement pStatement = connection.prepareStatement(sql);
			ResultSet rs = pStatement.executeQuery();
			pStatement.setInt(1, idUsuari);
			while(rs.next()) {
				totalViatges++;
			}
			pStatement.close();
		} catch (Exception e) {
			throw e;
		} finally {
			if (connection != null) {
				connection.close();				
			}
		}
		return totalViatges;
	}
}

	
