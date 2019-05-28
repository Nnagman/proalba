<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<script src="resources/js/cal/googlecal.js"></script> 
<html>

<style>

.fc-content{
margin-bottom:2px;
}

.fc-title{
font-size:11px !important; 


}

.fc-sat  { 
   color:#0000FF !important; 
  text-align:left;
}     
 
 .fc-sun {
color:#FF0000 !important; 
 text-align:left;
}   

.fc-day-number{
float:left !important;
font-size:13px;
}



.fc-bg table tbody .fc-sat{
	background-color:#D9E5FF !important;
	height:50px !important;
}

.fc-bg table tbody .fc-sun {
background-color:#FAE0D4 !important;
}

.fc-row {
height:100%;
}

.fc-widget-header{
height:25px !important;
}

.fc-toolbar h2{
margin-right:100px
}

</style>
   
      <script type="text/javascript">
     
      
      document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

 
    
    var calendar = new FullCalendar.Calendar(calendarEl, {
    	/*   schedulerLicenseKey: 'GPL-My-Project-Is-Open-Source', */ 
    	 googleCalendarApiKey: 'AIzaSyCzJFutLvuuvxvjdyYHNAIa472PhEmXEhc',
      plugins: [ 'interaction', 'dayGrid','googleCalendar'],
         locale: 'ko',
    
      defaultView: 'dayGridMonth' ,
      header: {
        left: 'prev,next today',
        center: 'title',
        right:''
     
      },
      
      
  
      
  	  eventSources: [
       	
  	{
  	     googleCalendarId: 'ko.south_korea#holiday@group.v.calendar.google.com',
  	  	color:'#00ff0000',
          textColor: 'red', 
          
  		
  	},
  	
  	{
	  	color:'#00ff0000',
  		textColor:'black',
  		events:[
  			
 			 <c:forEach var="row" items="${map.list }" >
 			 {
 			title:'출근시간 :'+ '${row.sa_start}' , 
 			
 				start: '20'+'${row.sa_date}'
 				
 			 },
 			</c:forEach>  
 			 
 			 
 			 <c:forEach var="row" items="${map.list }" >
 			 {
 			title:'퇴근시간 :'+ '${row.sa_end}' , 
 			
 				start: '20'+'${row.sa_date}'
 				
 			 },
 			</c:forEach> 
 			 
 		
 			
 		],
  		
  	}

           
        ]
      
    
    }); 
     
calendar.render(); 
    
  });
      
      
   </script>

<div id='calendar'></div>

</html>