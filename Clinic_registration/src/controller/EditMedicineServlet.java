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
import bean.clinicbean;


@WebServlet("/EditMedicineServlet")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)
public class EditMedicineServlet extends HttpServlet {
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
        String savePath = "D:\\D_batch\\project\\Clinic_registration\\WebContent" + File.separator + SAVE_DIR;
            File fileSaveDir=new File(savePath);
            if(!fileSaveDir.exists()){
                fileSaveDir.mkdir();
            }
		String Medicinename= request.getParameter("medicinename");
		System.out.println("Dao medi: "+Medicinename);
		String Medicinetype=request.getParameter("medicinetype");
		System.out.println(Medicinetype);
		String Tagline=request.getParameter("tagline");
		System.out.println(Tagline);
		String price1=request.getParameter("price");
		Double Price=Double.parseDouble(price1);
		System.out.println(Price);
		int Quantity=Integer.parseInt(request.getParameter("quantity"));
		System.out.println(Quantity);
		int power=Integer.parseInt(request.getParameter("power"));
		System.out.println(power);
		int TotalQuantity=Integer.parseInt(request.getParameter("totalquantity"));
		Double Vat=Double.parseDouble(request.getParameter("vat"));
		System.out.println(Vat);
		Double Mrp=Double.parseDouble(request.getParameter("mrp"));
		String Discountrange =request.getParameter("discountrange");
		Double Discount=Double.parseDouble(request.getParameter("discount"));
		String Location= request.getParameter("location");
		System.out.println(Location);
		String Landmark= request.getParameter("landmark");
		System.out.println(Landmark);
		Part part=request.getPart("file");
        String fileName=extractFileName(part);
        int j=0;
        if(!fileName.equals(""))
        {
        part.write(savePath + File.separator + fileName);
        Add_Medicine_Bean ad1=new Add_Medicine_Bean( Medicinename,fileName);
         j=DAO.update1(ad1);
        }
		
		
		Add_Medicine_Bean ad =new Add_Medicine_Bean(Medicinename, Medicinetype, Tagline, Price, Quantity, power,TotalQuantity,Vat,Mrp,Discountrange,Discount, Location, Landmark);
		 int i = DAO.update(ad);
			if(i==1 || j==1)
			 {
				 String msg="Edit successfully";
				 response.sendRedirect("Retailer_dashboard.jsp?msg="+msg);
			 }
			 else
			 {
				 String error="Edit error";
				 response.sendRedirect("Edit_Medicine.jsp?er="+error); 
			 }	
			
			}
			
	}
