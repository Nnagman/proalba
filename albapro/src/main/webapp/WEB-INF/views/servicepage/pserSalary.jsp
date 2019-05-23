<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no"> 
<meta name="description" content="">
<meta name="author" content="">

<title>Swefwefgw sdfrf sdd</title>
p
<!-- Custom fonts for this template-->

<link rel="stylesheet" type="text/css"
   href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">

<!-- Custom styles for this template-->
<!--  <link rel="stylesheet" href="resources/css/bootstrap.css" /> -->
<link href="resources/css/servicepage/material-dashboard.css" rel="stylesheet">
<link href="resources/css/servicepage/demo.css" rel="stylesheet">
<link href="resources/css/servicepage/pserworkmanage.css" rel="stylesheet">
<c:set var="path" value = "${pageContext.request.contextPath}"></c:set>

<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>


<link rel="stylesheet" href="resources/css/albamanage.css" />
<link rel="stylesheet" href="resources/css/albamanagecus.css" />
<link rel="stylesheet" href="resources/css/cal/albamanage.css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
   rel="stylesheet">
<script src="resources/js/albamanage.js"></script>
<script src="resources/js/cal/albamanage.js"></script>
<script src="resources/js/cal/interaction.js"></script>



</head>


<body>

   <div class="wrapper">
  
      <div class="div-sidebar">
         <div class="sidebar" data-color="purple"
            data-background-color="white"
            data-image="../assets/img/sidebar-1.jpg">
            <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
				<div class="logo">
					<a href="http://www.creative-tim.com"
						class="simple-text logo-normal"> Creative Tim</a>
				</div>
				<div class="sidebar-wrapper">
					<ul class="nav">
						<li class="nav-item  "><a class="nav-link" href=""> <i
								class="material-icons">dashboard</i> 알바목록
						</a></li>
						<li class="nav-item  "><a class="nav-link"
							href="pworkmanage?id=${login.id}"> <i class="material-icons">person</i>
								근태 관리
						</a></li>
						<li class="nav-item active"><a class="nav-link"
							href="pserSalary?id=${login.id}"> <i class="material-icons">content_paste</i>
								급여 관리
						</a></li>
						<li class="nav-item "><a class="nav-link"
							href="./typography.html"> <i class="material-icons">library_books</i>
								경력 관리
						</a></li>
						<li class="nav-item "><a class="nav-link" href="./icons.html">  
								<i class="material-icons">bubble_chart</i> Icons
						</a></li>
               </ul>
            </div>
         </div>
         <!-- End of Sidebar -->
      </div>
      <div class="content">
         <div class="pser-header"><%@ include file="pserNavHeader.jsp"%>
         </div>
         <div class="pser-con">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-md-12">
                     <div class="card">
                        <div class="card-header card-header-primary">
                           <h4 class="card-title ">근태 관리</h4>
                           <p class="card-category">
                              ${login.id} 님의 근태를 볼수 있습니다. <i class="colicon">달력보기</i> <i
                                 class="material-icons calicon" data-toggle="modal"
                                 data-target="#myModal">calendar_today</i>

                           </p>
                        </div>
                        <div class="card-body">
                           <div class="table-responsive">
                              <table id="example" class="mdl-data-table" style="width: 100%">
                                 <thead>
                                    <tr>
                                       <th>이름</th>
                                       <th>보낸이</th>
                                       <th>지급총액</th>
                                       <th>공제총액</th>
                                       <th>실지급액</th>
                                       <th>지급일자</th>
                                       <th>상세보기</th>
                                       <th>${salary.basic_salary}</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                 
                                 <c:forEach var="salary" items="${salarys}" varStatus="status"> 
                                 <tr>
                                       <td id="sal_name">${salary.name}</td>
                                       <td id="sal_work_place_name">${salary.work_place_name}</td>
                                       <td id="sal_basic_salary">${salary.basic_salary}</td>
                                       <td id="sal_total_deduction_amount">${salary.total_deduction_amount}</td>
                                       <td id="sal_actual_salary">${salary.actual_salary}</td>
                                       <td id="sal_year_month">${salary.year_month}</td>
                                     <td>
                                     	<input type="hidden" value="${status.index}"/>
                                        <i class="material-icons searchIcon" data-toggle="modal"
                                 data-target="#myModal" id="${salary.sa_code}">search</i> 
                                 </td> 
                                 </tr>
   
                              </c:forEach>
                                 
                                    
                                 </tbody>
                              </table>
                           </div>
                        </div>
                     </div>
                  </div>

               </div>
            </div>
         </div>


<!-- <button  onclick = "document.getElementById ( 'id01'). style.display = 'block'"    class = "w3-button w3-black"id="btn-open-dialog">상세보기</button> -->


         <div class="pser-footer"><%@ include file="pserfooter.jsp"%></div>


      </div>
   </div>



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
               
               <c:forEach var="salary" items="${salarys}" begin="${searchVal}" end="${searchVal}"> 
               
               <%@ include file = "../pservice/psalarydetail.jsp" %>
               
               </c:forEach>
               
               

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div> 






   <script type="text/javascript" src="resources/js/jquery-3.4.0.min.js"></script>

   <script src="resources/js/servicepage2/popper.min.js"></script>
   <!-- <script src="resources/js/servicepage2/bootstrap-material-design.min.js"></script>
      <script src="resources/js/servicepage2/perfect-scrollbar.jquery.min.js"></script>
        <script src="resources/js/servicepage2/moment.min.js"></script>
          <script src="resources/js/servicepage2/sweetalert2.js"></script>
            <script src="resources/js/servicepage2/jquery.validate.min.js"></script>
              <script src="resources/js/servicepage2/jquery.bootstrap-wizard.js"></script>
                <script src="resources/js/servicepage2/bootstrap-selectpicker.js"></script>
                  <script src="resources/js/servicepage2/bootstrap-datetimepicker.min.js"></script> -->
   <script src="resources/js/servicepage2/jquery.dataTables.min.js"></script>
   <!--          <script src="resources/js/servicepage2/bootstrap-tagsinput.js"></script>
                        <script src="resources/js/servicepage2/jasny-bootstrap.min.js"></script> -->
   <!--   <script src="resources/js/servicepage2/fullcalendar.min.js"></script> -->
   <!--      <script src="resources/js/servicepage2/jquery-jvectormap.js"></script>
                              <script src="resources/js/servicepage2/nouislider.min.js"></script>
                                 <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
                                   <script src="resources/js/servicepage2/arrive.min.js"></script>
                                      <script src="resources/js/servicepage2/chartist.min.js"></script>
                                       <script src="resources/js/servicepage2/bootstrap-notify.js"></script>
                                           <script src="resources/js/servicepage2/material-dashboard.js"></script> -->
   <script src="resources/js/servicepage2/demo.js"></script>





   <script>
	$(document).ready( function() {

		
		$('.material-icons').click(function(e){
			var sa_code = e.currentTarget.id;
			console.log(sa_code);
		});
	});

	</script>
	
	<script>
	$(document).ready(function(){
		$(".searchIcon").click(function(){
			var searchVal = $(this).prev().val();
			console.log(searchVal);
			
			$.ajax({
				async: "false",
				type: "POST",
				url: "/proalba/pserSalaryTest",
				data: {
					"searchVal" : searchVal
				},
				success: function(result){
					alert(result);
				},
				error:function(request,status,error){
			        alert("error");
			    }
			});
		});
	})
	</script>

</body>
</html>