<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html>
<head>
<link rel='stylesheet' type='text/css' href='http://www.blueb.co.kr/data/201010/IJ12872423858253/fullcalendar.css' />
<script type='text/javascript' src='http://www.blueb.co.kr/data/201010/IJ12872423858253/jquery.js'></script>
<script type='text/javascript' src='http://www.blueb.co.kr/data/201010/IJ12872423858253/jquery-ui-custom.js'></script>
 
        
          <link href='resources/css/albamanagecus.css' rel='stylesheet' />
        <link href='resources/css/cal/albamanage.css' rel='stylesheet' />
          <link href='resources/css/calbootcss.css' rel='stylesheet' />

        <script src='resources/js/albamanage.js'></script>
        
        <script src='resources/js/cal/albamanage.js'> </script>
        <script src="resources/js/cal/interaction.js"></script>
         <script src="resources/js/cal/calbootjs.js"></script>

   
      <script type="text/javascript">
     
      
      document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

 
    
    var calendar = new FullCalendar.Calendar(calendarEl, {
    	 schedulerLicenseKey: 'GPL-My-Project-Is-Open-Source',
      plugins: [ 'interaction', 'dayGrid','bootstrap' ],
         locale: 'ko',
         themeSystem: 'bootstrap',
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
</head>
<body>
<div id='calendar'></div>
</body>
</html>