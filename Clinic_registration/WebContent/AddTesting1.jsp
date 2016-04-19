<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
$(function () {
    $("#btnAdd").bind("click", function () {
        var div = $("<div />");
        div.html(GetDynamicTextBox(""));
        $("#TextBoxContainer").append(div);
    });
    $("#btnGet").bind("click", function () {
        var values = "";
        $("input[name=DynamicTextBox]").each(function () {
            values += $(this).val() + "\n";
        });
        alert(values);
    });
    $("body").on("click", ".add", function () {
        var div = $("<div />");
        div.html(GetDynamicTextBox(""));
        $("#TextBoxContainer").append(div);
    });
    $("body").on("click", ".remove", function () {
        $(this).closest("div").remove();
        
    });
});
function GetDynamicTextBox(value) {
    return '<input name = "DynamicTextBox" type="text" value = "' + value + '" />&nbsp;' +
    '<input type="button" value="Add" class="add" />'+
    		'<input type="button" value="Remove" class="remove"/>'
}
</script>

</head>
<body>
<input id="btnAdd" type="button" value="Add" />
<br />
<br />
<div id="TextBoxContainer">
    <!--Textboxes will be added here -->
</div>
<br />
<input id="btnGet" type="button" value="Get Values" />


<input type="text" name="abc" id="txt1" />
<input type="button" value="Click" onclick="alert(document.getElementById('txt1').value);"/> 

</body>
</html>
