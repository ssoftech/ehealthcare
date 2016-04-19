<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.DB" import="java.sql.Connection"
import="java.sql.PreparedStatement" import="java.sql.ResultSet" import="java.io.IOException"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>



<style>
.textboxclass {
height: 10px;
width: 80px;
}
</style>

<!-- 
<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css"> -->


<!--  <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>  -->

 
 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="js/jquery.autocomplete.js"></script>
 <script type="text/javascript" src="js/jquery.smart_autocomplete.js"></script>
<link rel="stylesheet" href="CSS1/style1.css">

<link rel="stylesheet" type="text/css" href="CSS1/style2.css" />
<link rel="stylesheet" type="text/css" href="CSS1/style3.css" /> 



<script>
jQuery(function(){
$("#country").autocomplete("Doc_list.jsp");
});
jQuery(function(){
	$("#country1").autocomplete("Doc_list.jsp");
	});
jQuery(function(){
	$("#country2").autocomplete("Doc_list.jsp");
	});
jQuery(function(){
	$("#country3").autocomplete("Doc_list.jsp");
	});
jQuery(function(){
	$("#country4").autocomplete("Doc_list.jsp");
	});
jQuery(function(){
	$("#country5").autocomplete("Doc_list.jsp");
	});
jQuery(function(){
	$("#country6").autocomplete("Doc_list.jsp");
	});
jQuery(function(){
	$("#country7").autocomplete("Doc_list.jsp");
	});
jQuery(function(){
	$("#country8").autocomplete("Doc_list.jsp");
	});
jQuery(function(){
	$("#country9").autocomplete("Doc_list.jsp");
	});
jQuery(function(){
	$("#country10").autocomplete("Doc_list.jsp");
	});
jQuery(function(){
	$("#country11").autocomplete("Doc_list.jsp");
	});
jQuery(function(){
	$("#country12").autocomplete("Doc_list.jsp");
	});

jQuery(function(){
	$("#serial1").autocomplete("Doc_list1.jsp");
	});
jQuery(function(){
	$("#serial2").autocomplete("Doc_list1.jsp");
	});
jQuery(function(){
	$("#serial3").autocomplete("Doc_list1.jsp");
	});
jQuery(function(){
	$("#serial4").autocomplete("Doc_list1.jsp");
	});
jQuery(function(){
	$("#serial5").autocomplete("Doc_list1.jsp");
	});
jQuery(function(){
	$("#serial6").autocomplete("Doc_list1.jsp");
	});
jQuery(function(){
	$("#serial7").autocomplete("Doc_list1.jsp");
	});
jQuery(function(){
	$("#serial8").autocomplete("Doc_list1.jsp");
	});
jQuery(function(){
	$("#serial9").autocomplete("Doc_list1.jsp");
	});
jQuery(function(){
	$("#serial10").autocomplete("Doc_list1.jsp");
	});
jQuery(function(){
	$("#serial11").autocomplete("Doc_list1.jsp");
	});
jQuery(function(){
	$("#serial12").autocomplete("Doc_list1.jsp");
	});
	

jQuery(function(){
	$("#direction1").autocomplete("Doc_list3.jsp");
	});
jQuery(function(){
	$("#direction2").autocomplete("Doc_list3.jsp");
	});
jQuery(function(){
	$("#direction3").autocomplete("Doc_list3.jsp");
	});
jQuery(function(){
	$("#direction4").autocomplete("Doc_list3.jsp");
	});
jQuery(function(){
	$("#direction5").autocomplete("Doc_list3.jsp");
	});
jQuery(function(){
	$("#direction6").autocomplete("Doc_list3.jsp");
	});
jQuery(function(){
	$("#direction7").autocomplete("Doc_list3.jsp");
	});
jQuery(function(){
	$("#direction8").autocomplete("Doc_list3.jsp");
	});
jQuery(function(){
	$("#direction9").autocomplete("Doc_list3.jsp");
	});
jQuery(function(){
	$("#direction10").autocomplete("Doc_list3.jsp");
	});
jQuery(function(){
	$("#direction11").autocomplete("Doc_list3.jsp");
	});
jQuery(function(){
	$("#direction12").autocomplete("Doc_list3.jsp");
	});

</script>


<script type="text/javascript">
$(function(){
    

    //example 6
    $("#textarea_autocomplete_field").smartAutoComplete({source: "searchtest.json", maxResults: 5, delay: 100 } );
    $("#textarea_autocomplete_field").bind({

       keyIn: function(ev){
         var tag_list = ev.smartAutocompleteData.query.split(","); 
         //pass the modified query to default event
         ev.smartAutocompleteData.query = $.trim(tag_list[tag_list.length - 1]);
       },

       itemSelect: function(ev, selected_item){ 
        var options = $(this).smartAutoComplete();

        //get the text from selected item
        var selected_value = $(selected_item).text();
        var cur_list = $(this).val().split(","); 
        cur_list[cur_list.length - 1] = selected_value;
        $(this).val(cur_list.join(",") + ","); 

        //set item selected property
        options.setItemSelected(true);

        //hide results container
        $(this).trigger('lostFocus');
          
        //prevent default event handler from executing
        ev.preventDefault();
      },

    });



});
</script>


 

<script type="text/javascript">
var cnt=1;
var delcnt =1;
function show()
{
	cnt=cnt+1;
	 var s2= document.getElementById("tr2");
	 var s3= document.getElementById("tr3");
	 var s4= document.getElementById("tr4");
	 var s5= document.getElementById("tr5");
	 var s6= document.getElementById("tr6");
	 var s7= document.getElementById("tr7");
	 var s8= document.getElementById("tr8");
	 var s9= document.getElementById("tr9");
	 var s10= document.getElementById("tr10");
	 var s11= document.getElementById("tr11");
	 var s12= document.getElementById("tr12");
	 if(cnt==1)
		 {
	 s2.style.visibility = 'visible';
		}
	 if(cnt==2)
	 {
 s2.style.visibility = 'visible';
	}
	 if(cnt==3)
	 {
 s3.style.visibility = 'visible';
	}
	 if(cnt==4)
	 {
 s4.style.visibility = 'visible';
	}
	 if(cnt==5)
	 {
 s5.style.visibility = 'visible';
	}
	 if(cnt==6)
	 {
 s6.style.visibility = 'visible';
	}
	 if(cnt==7)
	 {
 s7.style.visibility = 'visible';
	}
	 if(cnt==8)
	 {
 s8.style.visibility = 'visible';
	}
	 if(cnt==9)
	 {
 s9.style.visibility = 'visible';
	}
	 if(cnt==10)
	 {
 s10.style.visibility = 'visible';
	}
	 if(cnt==11)
	 {
 s11.style.visibility = 'visible';
	}
	 if(cnt==12)
	 {
 s12.style.visibility = 'visible';
	}
}



function validateDec(key) {
    //getting key code of pressed key
    var keycode = (key.which) ? key.which : key.keyCode;
    //comparing pressed keycodes
    if (!(keycode == 8 || keycode == 46) && (keycode < 48 || keycode > 57)) {
        return false;
    }
    else {
var parts = key.srcElement.value.split('.');
        if (parts.length > 1 && keycode == 46)
            return false;
        return true;
    }
}

function addSlashes(input) {
    var v = input.value;
    if (v.match(/^\d{3}$/) !== null)  {
        input.value = v + '/';
    } 
}


</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>





<style type="text/css">
#apDiv1 {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 150px;
	z-index: 1;
	
}
#apDiv2 {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 40%;
	height: 130px;
	z-index: 2;
}


#apDiv3 {
	position: absolute;
	right:10px;
	top: 10px;
	width: 150px;
	height: 130px;
	z-index: 3;
}
#apDiv4 {
	position: absolute;
	left: 33%;
	top: 27%;
	width: 40%;
	height: 130px;
}
#apDiv5 {
	position: absolute;
	left: 0px;
	top: 842px;
	width: 100%;
	height: 60px;
	z-index: 5;
	
}
#apDiv6 {
	position: absolute;
	left: 180px;
	top: 250px;
	width: 2px;
	height: 70%;
	z-index: 6;
	
}
#apDiv7 {
	position: absolute;
	left: 10px;
	top: 280px;
	width: 130px;
	height: 70%;
	z-index: 7;
}
#apDiv8 {
	position: absolute;
	left: 10px;
	top: 860px;
	width: 390px;
	height: 40px;
	z-index: 8;
}
#apDiv9 {
	position: absolute;
	right: 40px;
	top: 860px;
	width: 100px;
	height: 40px;
	z-index: 9;
	
}
#apDiv10 {
	position: absolute;
	left: 450px;
	top: 30px;
	width: 40%;
	height: 130px;
	z-index: 10;
}
#apDiv11 {
	position: absolute;
	left: 420px;
	top: 320px;
	width: 40%;
	height: 130px;
	
}
#apDiv12 {
	position: absolute;
	left: 320px;
	top: 700px;
	width: 40%;
	height: 130px;

}
#apDiv13 {
	position: absolute;
	left: 320px;
	top: 280px;
	width: 40%;
	height: 130px;
	z-index: 10;
	}
#apDiv14 {
	position: absolute;
	left: 375px;
	top: 170px;
	width: 100%;
	height: 80px;
	z-index: 4;
}
#apDiv15 {
	position: absolute;
	left: 10px;
	top: 380px;
	width: 130px;
	height: 70%;
	z-index: 7;
}
</style>

</head>

<body>
<%
String PName=request.getParameter("Pnm");
String PAge=request.getParameter("page");
String PSex=request.getParameter("psex");
String Pdses=request.getParameter("pdses");
String Peml=request.getParameter("peml");
String Pmobile=request.getParameter("pmobile");
String Pmobile1=request.getParameter("pmobile1");
System.out.println("From Prescription page mobile: "+Pmobile);
String Pmob1=request.getParameter("phno");
String P_BP=request.getParameter("P_BP");
String P_Pls=request.getParameter("P_Pls");
String nm1=request.getParameter("nm1");
String nm2=request.getParameter("nm2");

String nm3=request.getParameter("nm3");

String nm4=request.getParameter("nm4");

String nm5=request.getParameter("nm5");

String nm6=request.getParameter("nm6");

String nm7=request.getParameter("nm7");

String nm8=request.getParameter("nm8");

String nm9=request.getParameter("nm9");

String nm10=request.getParameter("nm10");

String nm11=request.getParameter("nm11");

String nm12=request.getParameter("nm12");

String medi1=request.getParameter("medi1");
String medi2=request.getParameter("medi2");

String medi3=request.getParameter("medi3");

String medi4=request.getParameter("medi4");

String medi5=request.getParameter("medi5");

String medi6=request.getParameter("medi6");

String medi7=request.getParameter("medi7");

String medi8=request.getParameter("medi8");

String medi9=request.getParameter("medi9");

String medi10=request.getParameter("medi10");

String medi11=request.getParameter("medi11");

String medi12=request.getParameter("medi12");
String sl1=request.getParameter("sl1");
String sl2=request.getParameter("sl2");
String sl3=request.getParameter("sl3");
String sl4=request.getParameter("sl4");
String sl5=request.getParameter("sl5");
String sl6=request.getParameter("sl6");
String sl7=request.getParameter("sl7");
String sl8=request.getParameter("sl8");
String sl9=request.getParameter("sl9");
String sl10=request.getParameter("sl10");
String sl11=request.getParameter("sl11");
String sl12=request.getParameter("sl12");
String P_Test=request.getParameter("P_Test");

String email=(String)session.getAttribute("email");
String name = "";
String name1 = "";
String fullname = "";
String rid = "";
String deg="";
 String ADDRESS="";
 String CName="";
 String CPh="";
HttpSession sees = request.getSession();
try{
	Connection con = DB.dba();
	String sql = "Select * from doctor_reg where email=?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, email);
	ResultSet rs = ps.executeQuery();
	if (rs.next()) {
		name = rs.getString("fname");
		name1 = rs.getString("lname");
		deg=rs.getString("degree");
		fullname= name+ " "+ name1 +" ("+deg+")";
		rid = rs.getString("Reg_ID");
		
	}
	String sql1 = "Select * from clinic where email=?";
	PreparedStatement ps1 = con.prepareStatement(sql1);
	ps1.setString(1, Peml);
	ResultSet rs1 = ps1.executeQuery();
	while(rs1.next()) {
		ADDRESS = rs1.getString("Address");
		CName = rs1.getString("clinicname");
		CPh = rs1.getString("mobile");
	}	
	
	
	}catch(Exception e){System.out.println(e);}

int i=10;
%>

<div id="apDiv1"><img src="images/Untitled-1 copy.jpg" width="100%" height="150px" /></div>
<div id="apDiv2" style="padding-top:20px; padding-left:10px; font-family:'Palatino Linotype', 'Book Antiqua', Palatino, serif;"><b>Doctor's Name-</b><%=fullname %> <br></br> <b>Address-</b> <%= ADDRESS%>    <br></br> <b>Registration ID- </b><%= rid %> <div id="apDiv10" align="center"> <h1><b><%=CName %> </b></h1></div>  </div>
<div id="apDiv3"> <img src="images/physician-symbol-hi.png" width="150px" height="130px"/></div>
<form action="PreviewPrescription.jsp">
<div id="apDiv4">

<table align="center" cellpadding="10px">


<tr>
<td>NAME:</td><td> <input type="text" readonly="readonly" name="P_Name" style="width: 170px;" value="<%=PName%>" ></input></td>
<td></td>
<td>AGE:</td>
<td><input type="text" name="P_Age" readonly="readonly" style="width: 50px;" value="<%=PAge%>"></input></td> 
<td>SEX:</td><td><input type="text" name="P_Sex" readonly="readonly" style="width: 50px;" value="<%=PSex%>"></input></td>
</tr>

<tr>
<td>Disease:</td><td><textarea type="text" name="P_Dses" style="width: 170px; height: 50px;" ><%=Pdses%></textarea></td>

</tr>
<input type="hidden" value="<%=Peml%>" name="phno"/>
<input type="hidden" value="<%=Pmobile%>" name="pmobile1">
</table>
</div>

</div>

<div id="apDiv11">
<table style="width: 150%; " >

<tr>
<td></td>
<td>Medicine Name</td>
<td>Doses</td>
<td>Direction</td>
</tr>
<tr>
<td>1:</td>
<td>
<font face="verdana" size="2">

<input type="text" id="country" name="medi1"/>
 
</font>

</td>
<td>

<input type="text" id="serial1" name="nm1" value="" />
        


</td>
<td>
<input type="text" id="direction1" name="sl1" value="" />

</td>
<td>
<input id="btnAdd" type="button" value="Add" onclick="show()" />
</td>
</tr>
</tr>
<tr id="tr2" style="visibility: hidden;">
<td>2:</td>
<td>
<font face="verdana" size="2">

<input type="text" id="country1" name="medi2"/>
 
</font>

</td>

<td>
<input type="text" id="serial2" name="nm2" value="" />
</td>
<td>
<input type="text" id="direction2" name="sl2" value="" />
</td>
<td>
<input id="btnAdd" type="button" value="Add" onclick="show()" />
</td>

</tr>
<tr  id="tr3" style="visibility: hidden;">
<td>3:</td>
<td>
<font face="verdana" size="2">

<input type="text" id="country2" name="medi3"/>
 
</font>

</td>

<td>
<input type="text" id="serial3" name="nm3" value="" />
</td>
<td>
<input type="text" id="direction3" name="sl3" value="" />
</td>
<td>
<input id="btnAdd" type="button" value="Add" onclick="show()" />
</td>
</tr>
<tr  id="tr4" style="visibility: hidden;">
<td>4:</td>
<td>
<font face="verdana" size="2">

<input type="text" id="country3" name="medi4"/>
 
</font>

</td>

<td>
<input type="text" id="serial4" name="nm4" value="" />
</td>
<td>
<input type="text" id="direction4" name="sl4" value="" />
</td>
<td>
<input id="btnAdd" type="button" value="Add" onclick="show()" />
</td>
</tr>
<tr  id="tr5" style="visibility: hidden;">
<td>5:</td>
<td>
<font face="verdana" size="2">

<input type="text" id="country4" name="medi5"/>
 
</font>

</td>

<td>
<input type="text" id="serial5" name="nm5" value="" />
</td>
<td>
<input type="text" id="direction5" name="sl5" value="" />
</td>
<td>
<input id="btnAdd" type="button" value="Add" onclick="show()" />
</td>
</tr>
<tr  id="tr6" style="visibility: hidden;">
<td>6:</td>
<td>
<font face="verdana" size="2">

<input type="text" id="country5" name="medi6"/>
 
</font>

</td>

<td>
<input type="text" id="serial6" name="nm6" value="" />
</td>
<td>
<input type="text" id="direction6" name="sl6" value="" />
</td>
<td>
<input id="btnAdd" type="button" value="Add" onclick="show()" />
</td>
</tr>
<tr  id="tr7" style="visibility: hidden;">
<td>7:</td>
<td>
<font face="verdana" size="2">

<input type="text" id="country6" name="medi7"/>
 
</font>

</td>

<td>
<input type="text" id="serial7" name="nm7" value="" />
</td>
<td>
<input type="text" id="direction7" name="sl7" value="" />
</td>
<td>
<input id="btnAdd" type="button" value="Add" onclick="show()" />
</td>
</tr>
<tr  id="tr8" style="visibility: hidden;">
<td>8:</td>
<td>
<font face="verdana" size="2">

<input type="text" id="country7" name="medi8"/>
 
</font>

</td>

<td>
<input type="text" id="serial8" name="nm8" value="" />
</td>
<td>
<input type="text" id="direction8" name="sl8" value="" />
</td>
<td>
<input id="btnAdd" type="button" value="Add" onclick="show()" />
</td>
</tr>
<tr  id="tr9" style="visibility: hidden;">
<td>9:</td>
<td>
<font face="verdana" size="2">

<input type="text" id="country8" name="medi9"/>
 
</font>

</td>

<td>
<input type="text" id="serial9" name="nm9" value="" />
</td>
<td>
<input type="text" id="direction9" name="sl9" value="" />
</td>
<td>
<input id="btnAdd" type="button" value="Add" onclick="show()" />
</td>
</tr>
<tr  id="tr10" style="visibility: hidden;">
<td>10:</td>
<td>
<font face="verdana" size="2">

<input type="text" id="country9" name="medi10"/>
 
</font>

</td>

<td>
<input type="text" id="serial10" name="nm10" value="" />
</td>
<td>
<input type="text" id="direction10" name="sl10" value="" />
</td>
<td>
<input id="btnAdd" type="button" value="Add" onclick="show()" />
</td>
</tr>
<tr  id="tr11" style="visibility: hidden;">
<td>11:</td>
<td>
<font face="verdana" size="2">

<input type="text" id="country10" name="medi11"/>
 
</font>

</td>

<td>
<input type="text" id="serial11" name="nm11" value="" />
</td>
<td>
<input type="text" id="direction11" name="sl11" value="" />
</td>
<td>
<input id="btnAdd" type="button" value="Add" onclick="show()" />
</td>
</tr>
<tr  id="tr12" style="visibility: hidden;">
<td>12:</td>
<td>
<font face="verdana" size="2">

<input type="text" id="country11" name="medi12"/>
 
</font>

</td>

<td>
<input type="text" id="serial12" name="nm12" value="" />
</td>
<td>
<input type="text" id="direction12" name="sl12" value="" />
</td>

</tr>

</table>

</div>






<div id="apDiv5" style="padding-left:10px;"><img src="images/Untitled-1 copy.jpg" width="100%" height="60px"/> </div>
<div id="apDiv6"><img src="images/Untitled-1 copy.jpg" width="2px" height="70%"/></div>
<div id="apDiv7"><table>
<tr><td>B.p:</td> <td><input type="text" name="P_BP" style="width: 50px;" onkeypress="return validateDec(event)" onkeyup="addSlashes(this)"></td><td> mm&nbspHg</td> </tr>
<tr><td>&nbsp;</td></tr>
<tr><td>Pulse:</td><td><input type="text" name="P_Pls" style="width: 50px;" onkeypress="return validateDec(event)"></td><td> BPM</td></tr></table></div>
<div id="apDiv15">
<table>

<tr><td>Test:</td> <td>  <textarea  rows="5" cols="12" autocomplete="off" name="P_Test" id="textarea_autocomplete_field"></textarea> <!-- <input type="text" name="P_Test" id="textarea_autocomplete_field" style="width: 120px;height: 50px;" > --> </td></tr>
</table>
</div>
<div id="apDiv8">CLINIC NAME: <%=CName %><br> PHONE NUMBER: <%=CPh %></div>
<div id="apDiv9" style="color:#FFF;"><input type="submit" value="Prescription Preview"  onclick="location.href='PreviewPrescription.jsp?P_ph=<%=Pmobile%>&PName=<%=PName%>&PAge=<%=PAge %>&PSex=<%=PSex %>&Pdses=<%=Pdses %>&Pmob=<%=Pmob1 %>&medi1=<%=medi1 %>&medi2=<%=medi2 %>&medi3=<%=medi3 %>&medi4=<%=medi4 %>&medi5=<%=medi5 %>&medi6=<%=medi6 %>&medi7=<%=medi7 %>&medi8=<%=medi8 %>&medi9=<%=medi9 %>&medi11=<%=medi10 %>&medi11=<%=medi11 %>&medi12=<%=medi12 %>&P_BP=<%=P_BP %>&P_Pls=<%=P_Pls %>&nm1=<%=nm1 %>&nm2=<%=nm2 %>&nm3=<%=nm3 %>&nm4=<%=nm4 %>&nm5=<%=nm5 %>&nm6=<%=nm6 %>&nm7=<%=nm7 %>&nm8=<%=nm8 %>&nm9=<%=nm9 %>&nm10=<%=nm10 %>&nm11=<%=nm11 %>&nm12=<%=nm12 %>&sl1=<%=sl1 %>&sl2=<%=sl2 %>&sl3=<%=sl3 %>&sl4=<%=sl4 %>&sl5=<%=sl5 %>&sl6=<%=sl6 %>&sl7=<%=sl7 %>&sl8=<%=sl8 %>&sl9=<%=sl9 %>&sl10=<%=sl10 %>&sl11=<%=sl11 %>&sl12=<%=sl12 %>&P_Test=<%=P_Test %>'" />

</div>
</form>
</body>
</html>
