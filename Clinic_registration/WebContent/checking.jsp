<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<link rel="stylesheet" type="text/css" href="CSS/style2.css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script src="js/jquery.autocomplete.js"></script>
<title>Add/Remove dynamic rows</title>
<script>


</script>
<SCRIPT lang="javascript">
        function addRow(tableID) 
        {
                var table = document.getElementById(tableID);

                var rowCount = table.rows.length;
                var row = table.insertRow(rowCount);
                var counts = rowCount - 1;
				
                var cell1 = row.insertCell(0);
                var houseNo = document.createElement("input");
                
                houseNo.type = "text";
                houseNo.id="country"+counts;
             
                alert(houseNo.id);
                houseNo.name = "addresses[" + counts + "].houseNo";
                
                
                cell1.appendChild(houseNo);

                var cell2 = row.insertCell(1);
                var street = document.createElement("input");
                street.type = "text";
                street.name = "addresses[" + counts + "].street";
                cell2.appendChild(street);

                var cell3 = row.insertCell(2);
                var city = document.createElement("input");
                city.type = "text";
                city.name = "addresses[" + counts + "].city";
                cell3.appendChild(city);

                var cell4 = row.insertCell(3);
                var country = document.createElement("input");
                country.type = "text";
                country.name = "addresses[" + counts + "].country";
                cell4.appendChild(country);
            

        }
       
</SCRIPT>
<script>
jQuery(function(){
$("#country0").autocomplete("list.jsp");
});
jQuery(function(){
	$("#country1").autocomplete("list.jsp");
	});
jQuery(function(){
	$("#country2").autocomplete("list.jsp");
	});

</script>
</HEAD>
<BODY>

<form action="submit" method="post">
<table>
<tr>
<td>
Reg No  
</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</td>
<td><INPUT type="text" name="regNo" /></td>
</tr>
<tr>
<td>Name</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</td>
<td><INPUT type="text" name="name" /></td>
</tr>
<tr><td><br/><b>Addresses</b></td>
</tr>

</table> 
 

<TABLE id="addressesTable">
        <TR>
                <TD>House No</TD>
                <TD>Street</TD>
                <TD>City</TD>
                <TD>Country</TD>
        </TR>
        <TR>
                <TD><INPUT type="text" id="country0" name="addresses[0].houseNo" autocomplete="on" /></TD>
                <TD><INPUT type="text" name="addresses[0].street" /></TD>
                <TD><INPUT type="text" name="addresses[0].city" /></TD>
                <TD><INPUT type="text" name="addresses[0].country" /></TD>
        </TR>
</TABLE>

<INPUT type="button" value="Add More" onclick="addRow('addressesTable')" /> 
<input type="submit" value="SUBMIT" />
</form>
</BODY>
</HTML>