package controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DB;



@WebServlet("/MedicinePic")
public class MedicinePic extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			Connection con=DB.dbcon();
			String Medicinename=request.getParameter("medicinename");
			System.out.println(Medicinename);
			String sql="select Image from retailer where Medicinename=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,Medicinename);
			System.out.println("medicine name is "+Medicinename);
			ResultSet rs=ps.executeQuery();
			
			byte b[]=null;
			if(rs.next())
			{
				System.out.println("11111111");
				Blob b1=rs.getBlob("Image");
				b=b1.getBytes(1,(int)b1.length());
				System.out.println(b);
			}
			
			ServletOutputStream s=response.getOutputStream();
			s.write(b);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
