package com.digitaladd.registration.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.digitaladd.common.DBConnectionHandler;
import com.digitaladd.registration.model.User;
import com.digitaladd.sql.SqlMappings;

public class RegistrationDao {
	//singleton implementation
	private RegistrationDao() {
		//super(DataSources.DEFAULT);
	}
	//singleton implementation
	 public static RegistrationDao getInstance() {
	    return RegistrationDaoHolder.INSTANCE;
	 }
	//singleton implementation
    private static class RegistrationDaoHolder {
       private static final RegistrationDao INSTANCE = new RegistrationDao();
    }
    
	
	public List<User> getCountreies(){
		Connection connection=null;
		ResultSet rs = null;
		PreparedStatement preparedStmt = null;
		List<User> list = new ArrayList<User>();
		try {			
			connection = DBConnectionHandler.getDBConnection();
			//Class.forName("com.mysql.jdbc.Driver");  
			//connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/digitaladd","root", "");
						
			preparedStmt = connection.prepareStatement(SqlMappings.get("digitalAdd.getAllCountries"));
			
			rs = preparedStmt.executeQuery();
						
			if (rs != null) {
				while (rs.next()) {
					User user = new User();
					
					user.setCountryCode(rs.getString("id"));
					user.setCountryName(rs.getString("name"));
					
					list.add(user);
				}
			} 
		}catch (SQLException sx) {
			System.out.println("RegistrationDao > getCountreies() > sqlexception >"+sx);
		}catch (Exception e) {
			System.out.println("RegistrationDao > getCountreies() > exception >"+e);
		}finally {
			DBConnectionHandler.closeJDBCResoucrs(connection, preparedStmt, rs);
		}
		return list;
	}
	
	public List<User> getAllStates(String countryCode){
		Connection connection=null;
		ResultSet rs = null;
		PreparedStatement preparedStmt = null;
		List<User> list = new ArrayList<User>();
		try {			
			connection = DBConnectionHandler.getDBConnection();						
			preparedStmt = connection.prepareStatement(SqlMappings.get("digitalAdd.getAllStates"));
			preparedStmt.setString(1, countryCode);
			
			rs = preparedStmt.executeQuery();
						
			if (rs != null) {
				while (rs.next()) {
					User user = new User();
					
					user.setStateCode(rs.getString("id"));
					user.setStateName(rs.getString("name"));
					
					list.add(user);
				}
			} 
		}catch (SQLException sx) {
			System.out.println("RegistrationDao > getAllStates() > sqlexception >"+sx);
		}catch (Exception e) {
			System.out.println("RegistrationDao > getAllStates() > exception >"+e);
		}finally {
			DBConnectionHandler.closeJDBCResoucrs(connection, preparedStmt, rs);
		}
		return list;
	}
	
	public List<User> getAllCities(String stateCode){
		Connection connection=null;
		ResultSet rs = null;
		PreparedStatement preparedStmt = null;
		List<User> list = new ArrayList<User>();
		try {			
			connection = DBConnectionHandler.getDBConnection();						
			preparedStmt = connection.prepareStatement(SqlMappings.get("digitalAdd.getAllCities"));
			preparedStmt.setString(1, stateCode);
			
			rs = preparedStmt.executeQuery();
						
			if (rs != null) {
				while (rs.next()) {
					User user = new User();
					
					user.setCityCode(rs.getString("id"));
					user.setCityName(rs.getString("name"));
					
					list.add(user);
				}
			} 
		}catch (SQLException sx) {
			System.out.println("RegistrationDao > getAllCities() > sqlexception >"+sx);
		}catch (Exception e) {
			System.out.println("RegistrationDao > getAllCities() > exception >"+e);
		}finally {
			DBConnectionHandler.closeJDBCResoucrs(connection, preparedStmt, rs);
		}
		return list;
	}
}
