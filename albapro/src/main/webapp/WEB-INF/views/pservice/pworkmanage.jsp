<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


 
<link rel="stylesheet" href="resources/css/workmanage.css" />
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
<link rel="stylesheet" href="resources/css/bootstrap.css" />
  <link href="resources/css/mdb.min.css" rel="stylesheet">
    <link href="resources/css/style.css" rel="stylesheet">
      <link href="resources/css/datatables.min.css" rel="stylesheet">
<link rel="stylesheet" href="resources/css/albamanage.css" />
<link rel="stylesheet" href="resources/css/albamanagecus.css" />
<link rel="stylesheet" href="resources/css/cal/albamanage.css" />

  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<<<<<<< HEAD
 <%@ include file = "../include/header.jsp" %> 
<%@ include file = "../include/menu.jsp" %>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <link rel="stylesheet" href="resources/Semantic-UI-CSS-master/semantic.min.css?ver=1" /> 

<script src="resources/Semantic-UI-CSS-master/semantic.min.js?ver=1"></script> 
<script src="resources/js/albamanage.js"></script>
<script src="resources/js/cal/albamanage.js"></script>
<script src="resources/js/cal/interaction.js"></script>


 
 
  




</head>


<body>



=======
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="resources/Semantic-UI-CSS-master/semantic.min.css?ver=1" />
<script src="resources/Semantic-UI-CSS-master/semantic.min.js?ver=1"></script>
<script src="resources/js/cal/albamanage.js"></script>
<script src="resources/js/albamanage.js"></script>
</head>
<body>
>>>>>>> branch 'master' of https://github.com/Nnagman/proalba.git
<div class="contents">

<h2 class="title"> 근태기록</h2>




  		<div class="iconline"> <i class="material-icons calicon" data-toggle="modal" data-target="#myModal">calendar_today</i></div>
  	 
  	
  	
    <div class="flex-center flex-column">
  
      <table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
    <thead>
      <tr>
        <th class="th-sm">날짜 </th>
        <th class="th-sm">출근시간</th>
        <th class="th-sm">퇴근 시간 </th>
   
      </tr>
    </thead>
  <tbody>
  <c:forEach var="row" items="${map.list }" >
	<tr>
		<td>${row.sa_date}</td><td>${row.sa_start}</td><td>${row.work_end_time }</td>
</tr>
</c:forEach>

  </tbody>
</table>


 
 
 
 

	
  	  	  	<!-- 부트스트랩 -->
  	<!-- 부트스트랩 modal -->
 <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
    	<script src="resources/js/bootstrap.js"></script>
      <!-- Modal content  -->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">출근 시간</h4>
        </div>
        <div class="modal-body">
          <%@ include file = "../cservice/calendar.jsp" %>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div> 
</div>
</div>


 <script type="text/javascript" src="resources/js/jquery-3.4.0.min.js"></script> 
  
  <script type="text/javascript">
 
  $(document).ready(function () {
    $('#dtBasicExample').DataTable({
      "paging": true // false to disable pagination (or any other option)
    });
    $('.dataTables_length').addClass('bs-select');
  });
  </script>
  
  
  
  
  <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="resources/js/popper.min.js"></script>
  <script type="text/javascript" src="resources/js/mdb.min.js"></script>
  <script type="text/javascript" src="resources/js/datatables.min.js"></script>
   
</body>
</html>