package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;
import bean.Doctorbean;


@WebServlet("/LocationServlet")
public class LocationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Country=request.getParameter("country");
		String State=request.getParameter("state");
		String City=request.getParameter("city");
		
		/*System.out.println("state"+State+ "country " + Country +"city "+ City);*/
    
     
     ArrayList<Doctorbean> ar=DAO.show(Country , State, City);
     request.setAttribute("ar",ar);
    RequestDispatcher rd=request.getRequestDispatcher("Location.jsp");
     rd.forward(request, response);
   
	
	 
	} 

}
