package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




import db.DB;


@WebServlet("/Delete_bill")
public class Delete_bill extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection con=DB.dbcon();
		String mobile=request.getParameter("mobile");
		int i=0;
		try {
		String sql="delete from bill where Mobile=?";
		
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, mobile);
			i=ps.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		if(i==1)
		{
			String val="Delete successfully";
			response.sendRedirect("Viewpath_Bill.jsp?msg="+val);
		}
		else
		{
			String val="Delete error";
			response.sendRedirect("Viewpath_Bill.jsp?error="+val);
		}
	}

}
