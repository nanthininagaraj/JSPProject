package com.smi.logics;

import java.sql.*;

import com.smi.registry.UserRegistry;

public class DBOperations {
	
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	
	public DBOperations() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/mysample","root","root");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public boolean login(UserRegistry use) {
		boolean b=true;
		try {
			ps=con.prepareStatement("select * from mytest where name=? and password=?");
			ps.setString(1, use.getName());
			ps.setString(2, use.getPass());
			rs=ps.executeQuery();
			b=rs.next();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return b;
	}

}
