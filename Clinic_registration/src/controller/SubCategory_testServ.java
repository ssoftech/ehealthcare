package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;
import bean.subcategory_testbean;


@WebServlet("/SubCategory_testServ")
public class SubCategory_testServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int TEST_ID=Integer.parseInt(request.getParameter("test_category"));
		String TEST_SUBCATEGORY_NAME=request.getParameter("TEST_SUBCATEGORY_NAME");
		String name_of_test=request.getParameter("name_of_Test");
		System.out.println(name_of_test);
		String path_name=request.getParameter("path_name");
		String path_adress=request.getParameter("path_adress");
		String path_email=request.getParameter("path_email");
		String DETAILS=request.getParameter("DETAILS");
		String SPECIMEN=request.getParameter("SPECIMEN");
		String METHOD=request.getParameter("METHOD");
		Double PRICE=Double.parseDouble(request.getParameter("PRICE"));
		String RULES=request.getParameter("RULES");
		String AVAILABILITY=request.getParameter("AVAILABILITY");
		String DISTANCE=request.getParameter("DISTANCE");
		String SUBCAT_TEST_DATE=request.getParameter("SUBCAT_TEST_DATE");
		subcategory_testbean ob= new subcategory_testbean(TEST_ID,TEST_SUBCATEGORY_NAME,path_name,path_adress,path_email,DETAILS,SPECIMEN,METHOD,PRICE,RULES,AVAILABILITY,DISTANCE,SUBCAT_TEST_DATE);
		int i=DAO.insert9(ob);
		subcategory_testbean ob1= new subcategory_testbean(TEST_ID,TEST_SUBCATEGORY_NAME,name_of_test);
		int s=DAO.insert11(ob1);
		if(i==1 && s==1){
			response.sendRedirect("add-subcategory.jsp");}
		else
		{
			String error="Insertion error";
			response.sendRedirect("add-subcategory.jsp?error="+error);
		}
	}

	}