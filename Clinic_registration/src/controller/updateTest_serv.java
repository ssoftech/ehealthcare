package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;
import bean.updateTest_bean;

@WebServlet("/updateTest_serv")
public class updateTest_serv extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String TEST_SUBCATEGORY_NAME=request.getParameter("TEST_SUBCATEGORY_NAME");
			System.out.println("Its is in updateTest_serv"+TEST_SUBCATEGORY_NAME);
			String DETAILS=request.getParameter("DETAILS");
			String SPECIMEN=request.getParameter("SPECIMEN");
			String METHOD=request.getParameter("METHOD");
			double PRICE=Double.parseDouble(request.getParameter("PRICE"));
			String RULES=request.getParameter("RULES");
			
			String AVAILABILITY=request.getParameter("AVAILABILITY");
			String DISTANCE=request.getParameter("DISTANCE");

			
			updateTest_bean ob=new updateTest_bean(TEST_SUBCATEGORY_NAME,DETAILS,SPECIMEN,METHOD,PRICE,RULES,AVAILABILITY,DISTANCE);
			
			 int i=DAO.update3(ob);
			 if(i==1)
			 {
				 String msg="insert successfully";
					response.sendRedirect("view_tests.jsp?msg="+msg);
			 }
			 else
			 {
				 String error="";
				 response.sendRedirect("edit1.jsp?error="+error);
			 }
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		
	}
