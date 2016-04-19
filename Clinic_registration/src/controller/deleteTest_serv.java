package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;
import bean.deleteTest_bean;


@WebServlet("/deleteTest_serv")
public class deleteTest_serv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String TEST_SUBCATEGORY_NAME=request.getParameter("tid");
			
			
			deleteTest_bean ob=new deleteTest_bean(TEST_SUBCATEGORY_NAME);
			
			int i=DAO.delete3(ob);
			if(i>0)
				
				response.sendRedirect("show_product.jsp");
			else
			{
				String error="Insertion error";
				response.sendRedirect("show_product.jsp?error="+error);
			}
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
