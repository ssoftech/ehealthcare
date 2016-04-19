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


@WebServlet("/SpcilisationServlet")
public class SpcilisationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		String State=request.getParameter("state");
    		String Country=request.getParameter("country");
    		String City=request.getParameter("city");
    		String Specilization=request.getParameter("specialization");
    		/*System.out.println(State+ " " + Country +" "+ City+" "+Specilization+"");*/
    		
    		
    		 ArrayList<Doctorbean> ar=DAO.show1(Country,State,City,Specilization);
    		 request.setAttribute("ar",ar);
    		    RequestDispatcher rd=request.getRequestDispatcher("Specialization.jsp");
    		     rd.forward(request, response);
    		   
    	}

    }
