package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static Connection con;
	public static Connection getConnection(){
		
		
		try{
			if(con==null){
				Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/loginpage?useSSL=false", "root", "admin");
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return con;
	}
}
