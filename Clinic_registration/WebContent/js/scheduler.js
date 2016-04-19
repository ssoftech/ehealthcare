function i()
{
var i= document.getElementById('datetimepicker1').value;
document.write(i);

var timer = 24; 

var d1 = new Date(); 
var d2 = new Date();






d1.setHours(d2.getHours()+(timer/12) ); 
d1.setMinutes(new Date().getMinutes()); 
//document.write(d1.toTimeString("hh:mm"));
document.write(d1.getHours()+":"+d1.getMinutes());
}


$.datetimepicker.setLocale('en');


	$('#datetimepicker_format').datetimepicker({value:'2015/04/15 05:03', format: $("#datetimepicker_format_value").val()});

	$("#datetimepicker_format_change").on("click", function(e){
	$("#datetimepicker_format").data('xdsoft_datetimepicker').setOptions({format: $("#datetimepicker_format_value").val()});
});

	$("#datetimepicker_format_locale").on("change", function(e){
	$.datetimepicker.setLocale($(e.currentTarget).val());
});

$('#datetimepicker').datetimepicker({
dayOfWeekStart : 1,

	lang:'en',
disabledDates:['1986/01/08','1986/01/09','1986/01/10'],
startDate:	'1986/01/05'
});
$('#datetimepicker').datetimepicker({value:'2015/04/15 05:03',step:10});

$('.some_class').datetimepicker();

	
$('#default_datetimepicker').datetimepicker({
	formatTime:'H:i',
	formatDate:'d.m.Y',
	//defaultDate:'8.12.1986', // it's my birthday
	defaultDate:'+03.01.1970', // it's my birthday
	defaultTime:'10:00',

	timepickerScrollbar:false
});


	var logic = function( currentDateTime ){
	if (currentDateTime && currentDateTime.getDay() == 6){
		this.setOptions({
			minTime:'11:00'
		});
	}else
		this.setOptions({
			minTime:'8:00'

	});
};

$('#datetimepicker2').datetimepicker({
	yearOffset:222,
	lang:'ch',
	timepicker:false,
	format:'d/m/Y',
	formatDate:'Y/m/d',

	minDate:'-1970/01/02', // yesterday is minimum date
	maxDate:'+1970/01/02' // and tommorow is maximum date calendar
});
	$('#datetimepicker1').
	datetimepicker({
	datepicker:false,
	format:'H:i',
	step:30
});

	
	$('#datetimepicker3').
	datetimepicker({
	datepicker:false,
	format:'H:i',
	step:30
});

	
		$('#datetimepicker9').datetimepicker({
		/* onGenerate:function( ct ){
			$(this).find('.xdsoft_date.xdsoft_weekend')
			
		.addClass('xdsoft_disabled');
		}, */
		timepicker:false,
		format:'d/m/Y',
		formatDate:'Y/m/d',
		weekends:['01.01.2014','02.01.2014','03.01.2014','04.01.2014','05.01.2014','06.01.2014']
	
	});
		$('#datetimepicker10').datetimepicker({
			/* onGenerate:function( ct ){
				$(this).find('.xdsoft_date.xdsoft_weekend')
				
			.addClass('xdsoft_disabled');
			}, */
			timepicker:false,
			format:'d/m/Y',
			formatDate:'Y/m/d',
			weekends:['01.01.2014','02.01.2014','03.01.2014','04.01.2014','05.01.2014','06.01.2014']
		
		});
			

	