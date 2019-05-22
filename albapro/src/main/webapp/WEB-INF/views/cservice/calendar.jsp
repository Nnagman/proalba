<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html>


   
      <script type="text/javascript">
     
      
      document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

 
    
    var calendar = new FullCalendar.Calendar(calendarEl, {
    	 schedulerLicenseKey: 'GPL-My-Project-Is-Open-Source',
      plugins: [ 'interaction', 'dayGrid'],
         locale: 'ko',
    
      defaultView: 'dayGridMonth' ,
      header: {
        left: 'prev,next today',
        center: 'title',
        right:''
     
      },
    
      events: [
     
   
        <c:forEach var="row" items="${map.list }" >
        	{
        	color:'skyblue',
        	
    		title: '출근시간 :'+'  '+'${row.sa_start}',
    		start: '20'+'${row.sa_date}'
        	},
    	</c:forEach>
        
        
      ]
    }); 
     
calendar.render(); 
    
  });
      
      
   </script>

<div id='calendar'></div>

</html>