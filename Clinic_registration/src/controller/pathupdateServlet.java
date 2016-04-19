package controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Model.DAO;
import bean.Pathalogy;



@WebServlet("/pathupdateServlet")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)
public class pathupdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR="images";
	   private String extractFileName(Part part) {
	        String contentDisp = part.getHeader("content-disposition");
	        String[] items = contentDisp.split(";");
	        for (String s : items) {
	            if (s.trim().startsWith("filename")) {
	                return s.substring(s.indexOf("=") + 2, s.length()-1);
	            }
	        }
	        return "";
	    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		File fileSaveDir = new File(request.getServletContext().getRealPath("/")+"images\\");
		if(!fileSaveDir.exists()){
            fileSaveDir.mkdir();
        }
		
		String Address=request.getParameter("address");
		String Mobile=request.getParameter("mobile");
		String email=request.getParameter("Email");
		
		System.out.println("Email from Servlet : " +email);
		Part part=request.getPart("file");
        String fileName=extractFileName(part);
        int j=0;
        if(!fileName.equals(""))
        {
        	part.write(fileSaveDir +"\\"+ fileName);
        Pathalogy Pn1=new Pathalogy(email,fileName);
         j=DAO.update1(Pn1);
        }
        
        Pathalogy Pn=new Pathalogy(email,Address, Mobile);
      
        int i=DAO.update(Pn);
      
		if(i==1 || j==1)
		{
			String msg="insert successfully";
			response.sendRedirect("path_index.jsp?msg="+msg);
		}
		else
		{
			String Error="insert Error";
			response.sendRedirect("path_update_info.jsp?Error="+Error);
		}
	}
}
