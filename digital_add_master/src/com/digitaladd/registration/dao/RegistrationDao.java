package com.digitaladd.registration.dao;

import java.sql.Connection;
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
			System.out.println("test");
			
			connection = DBConnectionHandler.getDBConnection();
			
			System.out.println("connection-"+connection);
			
			preparedStmt = connection.prepareStatement(SqlMappings.get("digitalAdd.getAllCountries"));
			
			System.out.println("preparedStmt-"+preparedStmt);

			rs = preparedStmt.executeQuery();
			
			System.out.println("rs-"+rs);
			
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
}
