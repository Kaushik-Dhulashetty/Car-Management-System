package com.jsp.servlet.car_management_system;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SaveUpdatedCar")
public class SaveUpdatedCar  extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int CarId=Integer.parseInt(req.getParameter("CarId"));
		String CarModel=req.getParameter("CarModel");
		String CarBrand=req.getParameter("CarBrand");
		String CarColor=req.getParameter("CarColor");
		int CarPrice=Integer.parseInt(req.getParameter("CarPrice"));

		//JDBC Logic
		Connection conn=null; 
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_car_management_system?user=root&password=Karthik@99");

			PreparedStatement pst=conn.prepareStatement("UPDATE car SET carModel=?,carBrand=?,carColor=?,carPrice=? WHERE carId=?");
			pst.setString(1, CarModel);
			pst.setString(2, CarBrand);
			pst.setString(3, CarColor);
			pst.setInt(4, CarPrice);
			pst.setInt(5, CarId);

			pst.execute();
			resp.sendRedirect("displayAllCars");

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
