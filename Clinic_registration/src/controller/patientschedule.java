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

import bean.Patient;


@WebServlet("/patientschedule")
public class patientschedule extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Date=request.getParameter("Date");
		String Doctorname=request.getParameter("doctorname");
		String Registrationid=request.getParameter("registrationid");
		ArrayList<Patient> ar=DAO.show4(Date,Doctorname,Registrationid);
		request.setAttribute("ar",ar);
	    RequestDispatcher rd=request.getRequestDispatcher("showPatient.jsp");
	     rd.forward(request, response);
		}

	}

