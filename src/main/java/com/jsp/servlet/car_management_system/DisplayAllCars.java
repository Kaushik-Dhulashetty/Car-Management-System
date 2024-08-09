 package com.jsp.servlet.car_management_system;

import java.io.IOException;
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

@WebServlet("/displayAllCars")
public class DisplayAllCars extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//JDBC Logic
		Connection conn=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_car_management_system?user=root&password=Karthik@99");

			PreparedStatement pst=conn.prepareStatement("SELECT *  FROM car");


			ResultSet rs=pst.executeQuery();
			
			req.setAttribute("resultset", rs);
			RequestDispatcher rd=req.getRequestDispatcher("DisplayAllCars.jsp");
			rd.forward(req, resp);
			

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		finally {
			if(conn!=null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}


}
