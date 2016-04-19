<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@ page import="java.sql.*,db.DB,java.util.*"%>
    <%@ page import="controller.*"%>
        <%@ page import="Model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Handling the pointer highlighting</title>

	<script src="../dhtmlxscheduler.js" type="text/javascript" charset="utf-8"></script>
	<link rel="stylesheet" href="../dhtmlxscheduler.css" type="text/css" media="screen" title="no title" charset="utf-8">
	<script src="../dhtmlxscheduler_limit.js" type="text/javascript" charset="utf-8"></script>

<style media="screen">
	html, body{
		margin:0px;
		padding:0px;
		height:100%;
		overflow:hidden;
	}

	.dhx_cal_event {
		z-index: 1;
		cursor: pointer;
	}
	.highlighted_timespan {
		background-color: #87cefa;
		opacity:0.5;
		filter:alpha(opacity=50);
		cursor: pointer;
		z-index: 0;
	}
</style>


<script charset="utf-8">
  
 
  /*   function f()
   {
	   var a=scheduler.addEvent({
			start_date: new Date(2016,1,10,16,30),
			end_date: new Date(2016,1,10,20,30),
			text: "Use single click to create and open details form of existing events" 
	})
	 
			var evs = scheduler.showEvent(a,'month');
	        window.alert(evs);
 
	  
	    

	  
   }
     */
   
   
   
	function init() {
		

    	 
		scheduler.config.multi_day = true;
		scheduler.config.xml_date="%Y-%m-%d %H:%i"
		scheduler.config.details_on_create = true;
		scheduler.config.drag_create = false;
		
	
		//scheduler.load("MySqlConnector.jsp");
		

		scheduler.attachEvent("onTemplatesReady", function() {
			var fix_date = function(date) {  // 17:48:56 -> 17:30:00
				date = new Date(date);
				if (date.getMinutes() > 30)
					date.setMinutes(30);
				else
					date.setMinutes(0);
				date.setSeconds(0);
				return date;
			};

			scheduler.attachEvent("onClick", function(id, e){
				scheduler.showLightbox(id);
			});

			var marked = null;
			var marked_date = null;
			var event_step = 120;
			scheduler.attachEvent("onEmptyClick", function(date, native_event){
				scheduler.unmarkTimespan(marked);
				marked = null;

				var fixed_date = fix_date(date);
				scheduler.addEventNow(fixed_date, scheduler.date.add(fixed_date, event_step, "minute"));
			});

			scheduler.attachEvent("onMouseMove", function(event_id, native_event) {
				var date = scheduler.getActionData(native_event).date;
				var fixed_date = fix_date(date);
				  
				if (+fixed_date != +marked_date) {
					scheduler.unmarkTimespan(marked);
					
					marked_date = fixed_date;
					marked = scheduler.markTimespan({
						start_date: fixed_date,
						end_date: scheduler.date.add(fixed_date, event_step, "minute"),
						css: "highlighted_timespan"
					});
				}
			});

		});
		
	// var s= scheduler.getEvent(e);
	
       
		var today = new Date();
		var dd = today.getDate();
		var mm = today.getMonth()+1; //January is 0!
		var yyyy = today.getFullYear();

		if(dd<10) {
		    dd='0'+dd
		} 

		if(mm<10) {
		    mm='0'+mm
		} 

		today = mm+'/'+dd+'/'+yyyy;

		scheduler.init('scheduler_here',new Date(today.toString()),"week");
		
		scheduler.load("./events.xml");
		
		
		<%-- 		var events = [
{id:3, text:"Meeting",   start_date:new Date(2016,1,10,16,30),end_date:new Date(2016,1,10,20,30)},
{id:4, text:"Conference",start_date:new Date(2016,2,12,16,30),end_date:new Date(2016,2,12,20,30)},

{id:"<%=Dao.s()%>", text:"<%=Dao.s3()%>", start_date:new Date(<%=Dao.s1()%>),end_date:new Date(<%=Dao.s2()%>)},
{id:7, text:"<%=Dao.s3()%>", start_date:new Date(<%=Dao.s1()%>),end_date:new Date(<%=Dao.s2()%>)},

{id:5, text:"Meeting With Abc",   start_date:new Date(2016,1,10,16,30),end_date:new Date(2016,1,10,20,30)},
{id:6, text:"Conference With Abc",start_date:new Date(2016,2,12,16,30),end_date:new Date(2016,2,12,20,30)}

	

];
		
		
 	/* 	var cars = new Array(4);
		cars[0]= "Hello";
		cars[1]="Hi";
		cars[2]="SSTL";
		cars[3]="Java";
		for(var i=0;i<=3;i++)
		{
		document.write(cars[i]);
		} 
		 */
		
		 for(var i=0;i<3;i++)
			{
			document.write(events[0]);
			} 

		
	 
scheduler.parse(events, "json");	 
	
 --%>

	}
     
    
</script>
</head>


	
<body onload="init(Event)">

	<div id="scheduler_here" class="dhx_cal_container" style='width:100%; height:100%;'>
		<div class="dhx_cal_navline">
			<div class="dhx_cal_prev_button">&nbsp;</div>
			<div class="dhx_cal_next_button">&nbsp;</div>
			<div class="dhx_cal_today_button"></div>
			<div class="dhx_cal_date"></div>
			<div class="dhx_cal_tab" name="day_tab" style="right:204px;"></div>
			<div class="dhx_cal_tab" name="week_tab" style="right:140px;"></div>
			<div class="dhx_cal_tab" name="month_tab" style="right:76px;"></div>
		</div>
		<div class="dhx_cal_header">
		</div>
		<div class="dhx_cal_data">
		</div>
	</div>
	
	    	 <%
    		int a[]=Dao3.s();
    		String b[] =Dao3.s3();
    		
    		for(int i=0;i<a.length;i++)
    		{
    			System.out.println("Dao value ID is"+a[i]);
    		}
    		
    		
    		for(int j=0;j<b.length;j++)
    		{
    			System.out.println("Dao value Text is " +b[j]);
    		}
    		%>
	</body>
	
</html>