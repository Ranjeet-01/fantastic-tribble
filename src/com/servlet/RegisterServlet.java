package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.UserDAO;
import com.entities.User;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name= request.getParameter("username");
		//System.out.println(name);
		String email= request.getParameter("email");
		String password= request.getParameter("password");
		User usr = new User();
		usr.setName(name);
		usr.setEmail(email);
		usr.setPassword(password);
		
		UserDAO dao = new UserDAO(DBConnect.getConnection());
		boolean f = dao.userRegister(usr);
		if(f){
			HttpSession session = request.getSession();
			session.setAttribute("reg-msg", "Registration Successfully done..");
			response.sendRedirect("register.jsp");
			
		}
		else{
			HttpSession session = request.getSession();
			session.setAttribute("error-msg", "Something Went Wrong..");
			response.sendRedirect("register.jsp");
		}
	}

}
