<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script src="../CSS/dhtmlxscheduler.js" type="text/javascript" charset="utf-8"></script>

<script type="text/javascript">

function ff()
{
	alert("wddw");
	var eventId = scheduler.addEvent({
	    start_date: "16-05-2013 09:00",
	    end_date:   "16-05-2013 12:00",
	    text:   "Meeting"
	});

	var eventObj = scheduler.getEvent(286);
	alert("fff"+eventObj);
}
</script>
<body onload="ff(event)">

</body>
</html>