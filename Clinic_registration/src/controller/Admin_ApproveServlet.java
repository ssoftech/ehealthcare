package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO1;
import db.DB;


@WebServlet("/Admin_ApproveServlet")
public class Admin_ApproveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
   

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String Email=request.getParameter("Email");
		String user_id=request.getParameter("user_id");
		String user_type=request.getParameter("User_Type");
		
		System.out.println(",........"+user_type);
		if(user_type.equals("Retailer"))
		{	
		try {
			Connection con=DB.dbcon();
			

			if(con!=null)
			{
			String sql="update retailer_detail set Retailer_id=? where Email=?";
					
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, user_id);	
			ps.setString(2, Email);
			ps.executeUpdate();
			
			}
		}
			catch (SQLException e) {
			e.printStackTrace();
		}
	}
		
		else if(user_type.equals("Clinic"))
		{	
		try {
			Connection con=DB.dbcon();
			

			if(con!=null)
			{
			String sql="update clinic set userid=? where email=?";
					
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, user_id);	
			ps.setString(2, Email);
			ps.executeUpdate();
			
			}
		}
			catch (SQLException e) {
			e.printStackTrace();
		}
	}
		else if(user_type.equals("Doctor"))
		{	
		try {
			Connection con=DB.dbcon();
			

			if(con!=null)
			{
			String sql="update doctor_reg set id=? where email=?";
					
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, user_id);	
			ps.setString(2, Email);
			ps.executeUpdate();
			
			}
		}
			catch (SQLException e) {
			e.printStackTrace();
		}
	}
		else if(user_type.equals("Pathology"))
		{	
		try {
			Connection con=DB.dbcon();
			

			if(con!=null)
			{
			String sql="update pathalogy_registration set userid=? where email=?";
					
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, user_id);	
			ps.setString(2, Email);
			ps.executeUpdate();
			
			}
		}
			catch (SQLException e) {
			e.printStackTrace();
		}
	}

		
		
		RequestDispatcher rd= request.getRequestDispatcher("Admin.jsp");
		rd.forward(request,response);
		
	}
	

}
