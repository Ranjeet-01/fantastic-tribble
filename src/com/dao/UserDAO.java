package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entities.User;

public class UserDAO {
	
	private Connection con;

	public UserDAO(Connection con) {
		super();
		this.con = con;
	}
	
	public boolean userRegister(User usr){
		boolean flag=false;
		
		try{
			String query = "insert into user(name,email,password) values(?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);
		/*	String name = usr.getName();
			System.out.println(name);
		*/	ps.setString(1, usr.getName());
			ps.setString(2, usr.getEmail());
			ps.setString(3, usr.getPassword());
			
			ps.executeUpdate();
			flag=true;
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return flag;
	}
	
	public User getLogin(String email,String password){
		User us = null;
		try {
			String q = "select * from User where email=? and password=?";
			PreparedStatement ps = con.prepareStatement(q);
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				us = new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return us;
	}
	
	

}
