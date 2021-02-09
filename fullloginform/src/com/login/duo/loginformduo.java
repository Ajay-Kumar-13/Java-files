package com.login.duo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class loginformduo {
	
	String url = "jdbc:mysql://localhost:3306/telusko";
	String username ="root";
	String password="Ajaykumar13";
	String query ="select * from credentials where uname =? and pass =?";
	String query1 ="insert into credentials values(?,?)";
	
	public boolean check(String uname,String pass) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, uname);
			st.setString(2, pass);
			ResultSet rs = st.executeQuery();
			if (rs.next()) {
				return true;
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
		
	}
	public boolean akhil(String username1 , String password1) {
	
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url,username,password);
			PreparedStatement st1 = conn.prepareStatement(query1);
			st1.setString(1, username1);
			st1.setString(2,password1);
			int count = st1.executeUpdate();
			
			if(count == 1) {
				return true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
		
	}
	
}
