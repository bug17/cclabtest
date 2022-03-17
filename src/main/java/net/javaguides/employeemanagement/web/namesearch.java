package net.javaguides.employeemanagement.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class namesearch
 */
@WebServlet("/namesearch")
public class namesearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String username=(request.getParameter("username"));
		HttpSession session= request.getSession();
		session.setAttribute("username",username);
		//System.out.println("kk");
		response.sendRedirect("employeedetails.jsp");
		//System.out.println("jj");
		return;
		
	
	}
		
	
}
