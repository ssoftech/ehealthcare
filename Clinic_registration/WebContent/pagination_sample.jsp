<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.DB" import="java.util.*" import="java.text.*" import="java.sql.Connection"
import="java.sql.PreparedStatement" import="java.sql.ResultSet" import="java.text.SimpleDateFormat" import="java.io.IOException"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>New Medicine</title>

    <!-- Bootstrap Core CSS -->
    <link href="CSS1/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="CSS1/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="CSS1/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="CSS1/bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="CSS1/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="CSS1/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

 

        <!-- Navigation -->

        <div class="container"><!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            DataTables Advanced Tables
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Medicine Name</th>
                                            <th>Uses For</th>
                                            <th>Medicine Type</th>
                                            <th>Power</th>
                                            <th>Price</th>
                                            <th>Company Name</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                    DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
                                    Date date = new Date();
                                    System.out.println("Today date: "+dateFormat.format(date));
                                    Calendar c = Calendar.getInstance();
                                    c.setTime(new Date()); // Now use today date.
                                    c.add(Calendar.DATE, -5); // Adding 5 days
                                    String output = dateFormat.format(c.getTime());
                                    System.out.println("5days ago: "+output);
                                    
                                    
			String email=(String)session.getAttribute("email");
			String name = "";
			String filename="";
			HttpSession sees = request.getSession();
			try{
				Connection con = DB.dba();
				String sql = "Select * from retailer where Date between ? AND ?";
				PreparedStatement ps = con.prepareStatement(sql);
				//ps.setString(1, email);
				ps.setString(1, output);
				ps.setString(2, dateFormat.format(date));
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
					%>
								 <tr class="odd gradeX">
                                            <td><%=rs.getString("Medicinename") %></td>
                                            <td><%=rs.getString("Medicinetype") %></td>
                                            <td><%=rs.getString("Tagline") %></td>
                                           
                                            <td class="center"><%=rs.getString("Power") %></td>
                                            <td class="center"><%=rs.getString("Price") %></td>
                                            <td class="center"><%=rs.getString("Retailername") %></td>
                                        </tr>
					<%
				}
				}catch(Exception e){System.out.println(e);}
			
			                %>
                                       
                                       
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                            
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
           
           
        </div>
        <!-- /#page-wrapper -->

  

    <!-- jQuery -->
    <script src="CSS1/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="CSS1/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="CSS1/bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="CSS1/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
    <script src="CSS1/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="CSS1/dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                responsive: true
        });
    });
    </script>

</body>

</html>
