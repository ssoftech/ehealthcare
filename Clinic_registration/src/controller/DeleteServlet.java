package controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Model.DAO;
import bean.Add_Medicine_Bean;


@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    
    public DeleteServlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Medicinename= request.getParameter("medicinename");
		System.out.println(Medicinename);
		
		Add_Medicine_Bean ad =new Add_Medicine_Bean(Medicinename);
		 int i = DAO.Delete(Medicinename);
			if(i==1)
			 {
				 String msg="deleted successfully";
				 response.sendRedirect("Delete_Product.jsp?msg="+msg);
			 }
			 else
			 {
				 String error="delete error";
				 response.sendRedirect("Delete_Product.jsp?er="+error); 
			 }	
			
			}
			
	}


