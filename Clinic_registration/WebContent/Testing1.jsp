<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
                pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<link rel="stylesheet" href="CSS/style1.css">

<link rel="stylesheet" type="text/css" href="CSS/style2.css" />
<link rel="stylesheet" type="text/css" href="CSS/style3.css" /> 

 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script> 
<!--   <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script> -->
  <script type="text/javascript" src="js/jquery.smart_autocomplete.js"></script>
  <script src="js/jquery.autocomplete.js"></script>
<script>
jQuery(function(){
	
$("#country").autocomplete("list.jsp");
});
jQuery(function(){
	
	$("#country1").autocomplete("list.jsp");
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


<title>Insert title here</title>

</head>

<body>
<form >
<table>
<tr>
<td>
<input type="text" id="country" name="medi1"/>
</td>
</tr>
<tr>
<td>
<input type="text" id="country1" name="medi2"/>
</td>
</tr>
</table>
<textarea  rows="5" cols="12" autocomplete="off" name="P_Test" id="textarea_autocomplete_field"></textarea>
</form>



</body>

</html>