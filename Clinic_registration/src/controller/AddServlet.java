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
import bean.Add_Medicine_Bean;

@WebServlet("/AddServlet")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)
public class AddServlet extends HttpServlet {
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
		
		String Retailername= request.getParameter("retailername");
		String Retailerid = request.getParameter("retailerid");
		String Medicinename= request.getParameter("medicinename");
		String Medicinetype= request.getParameter("medicinetype");
		String Tagline= request.getParameter("tagline");
		/*String price=request.getParameter("Double.parseDouble(price)");
		System.out.println("Price is"+price);*/
		Double price=Double.parseDouble(request.getParameter("price"));
		System.out.println("Price1 is"+price);
		int Quantity=Integer.parseInt(request.getParameter("quantity"));
		System.out.println("Quantity is"+Quantity);
	    int power=Integer.parseInt(request.getParameter("power"));
		int TotalQuantity=Integer.parseInt(request.getParameter("totalquantity"));
		Double Vat=Double.parseDouble(request.getParameter("vat"));
		Double Mrp=Double.parseDouble(request.getParameter("mrp"));
		String Discountrange =request.getParameter("Range");
		System.out.println("From Servlet: "+Discountrange);
		Double Discount=Double.parseDouble(request.getParameter("discount"));
		String Manufacturedate =request.getParameter("manufacturedate");
		String Expirydate =request.getParameter("expirydate");
		String Manufacturername =request.getParameter("manufacturername");
		String Location= request.getParameter("location");
		String Landmark= request.getParameter("landmark");
		PrintWriter out = response.getWriter();
		Part part=request.getPart("image");
		String fileName = extractFileName(part);
		String savePath="";
	if(!fileName.isEmpty())
	{
		File fileSaveDir = new File(request.getServletContext().getRealPath("/")+"images\\");
            
            fileSaveDir.getParentFile().mkdirs();
            if(!fileSaveDir.exists()){
                //fileSaveDir.mkdir();
            fileSaveDir.createNewFile();    
            }
        	part.write(fileSaveDir +"\\"+ fileName);
	}
	else
	{
		fileName="default.png";
	}
		
		
		
		 Add_Medicine_Bean ad=new Add_Medicine_Bean(Medicinename, Medicinetype, Tagline, price, Quantity, power, TotalQuantity,Vat,Mrp,Discountrange,Discount,Manufacturedate,Expirydate,Manufacturername, Location, Landmark, Retailername, fileName, Retailerid);
		 int i = DAO.insert(ad);
			if(i==1)
			 {
				 String msg="insert successfully";
				 response.sendRedirect("Add_Product.jsp?msg="+msg);
			 }
			 else
			 {
				 String error="insert error";
				 response.sendRedirect("Add_Product.jsp?er="+error); 
			 }	
			
			}

	}
	


