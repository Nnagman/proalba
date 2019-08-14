<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>



<script type="text/javascript"
	src="http://www.google-analytics.com/plugins/ua/ecommerce.js"></script>

<head>
<title>프로알바</title>


<link rel="stylesheet" href="resources/css/recruinfo/job.css">
<link rel="stylesheet" href="resources/css/recruinfo/jobgoods.css">
<link rel="stylesheet" href="resources/css/recruinfo/sub.css">
<link rel="stylesheet" href="resources/css/recruinfo/recruinfoCus.css">
 
     <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
 
  <link href="resources/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/css/mdb.min.css" rel="stylesheet">
    <link href="resources/css/style.css" rel="stylesheet">
     <link href="resources/css/datatables.min.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- 수정중  -->
<link rel="stylesheet" href="resources/css/albamanage.css" />
<link rel="stylesheet" href="resources/css/albamanagecus.css" />
<link rel="stylesheet" href="resources/css/cal/albamanage.css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script src="resources/js/albamanage.js"></script>
<script src="resources/js/cal/albamanage.js"></script>
<script src="resources/js/cal/interaction.js"></script>
<script src="resources/js/bootstrap.js"></script>

<!--  -->

</head>
<%@ include file="../include/redirect_p.jsp"%>
<style>
html, body, header, .carousel {
	height: 9vh !important;
}

.he-title {
	display: none !important;
}

.carousel-inner {
	display: none !important;
}

header {
	background-image: url("#") !important;
	background-color: #5D5D5D !important;
}

.recruinfo-title {
	text-align: center;
	margin-top: 50px;
}

.recruinfo-title-p {
	font-weight: 800;
}

.p.count {
	margin-top: 0px !important;
}

p {
	margin-bottom: 0px !important;
}

#JobCount div p.count {
	margin: 0 0 0 0 !important;
}

.jobSearch dl .data .tabForm li a {
	height: 34px !important;
	padding-top: 5px !important;
	vertical-align: middle !important;
	margin: 0;
	
}

.jobSearch dl .content .value span {
	height: 23px !important;
}

.placho-line1{
	margin: 0 !important;	
}

.recruinfo-list{
width:100%;
}
header{
height:80px !important;
}

.recruinfo-table{

    position: relative;
    width: 100%;
    margin: 0;
    padding: 0;
    font-family: 'Malgun Gothic';
    letter-spacing: -1px;
    border-top: 1px solid #aaa;
}

.recruinfo-table th{

text-align:left !important;
    font-weight: bold;
    text-align: -internal-center;
    display: table-cell;
    vertical-align: inherit;
}

thead {
    display: table-header-group;
    vertical-align: middle;
    border-color: inherit;
}



tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}

tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}

.recruinfo-list table tr th {
    padding: 9px 0 10px;
    padding: 11px 0 8px\0;
      padding-left: 15px;
    line-height: 1;
    color: #666a5b;
    background-color: #f2f2f2;
    border: 0px solid !important;
    border-bottom: 1px solid #b5b5b5 !important;
}

.recruinfo-list table tr td {
    padding: 12px 0;
    line-height: 1;
    text-align: left;
    color: #474747;
     border: 0px solid !important;
    border-bottom: 1px solid #e4e4e4 !important;
        padding-left: 15px;
       
}

.recruinfo-list table tr td.local {
    width: 13rem;
    padding-left: 15px;
    
}

div.dataTables_filter label{
float: right;
margin-right: 40px;
}

.dataTables_filter{
display: block;
}
.jobcho-line1{
text-align: center;
}

.company{
    display: block;
    height: auto;
    padding: 2px 0 6px !important;
    font-size: 13px;

    background: none !important;
    color: #0075ab;
}

.recruinfo-list .title a span {
    position: relative;
    overflow: hidden;
  
    
 
    font-family: tahoma;
    line-height: 12px;
    vertical-align: top;
    white-space: nowrap;
    cursor: pointer;
    text-align: left;

}


#Example_info{
display:none;
}

#Example_paginate{
float:left;
}

.navbar{
padding-right:0 !important;
}

footer{
top:300px;
    position: relative;
}





/* 수정 */
.nav-itemsub li {
	list-style: none;
	color: white !important;
}

.nav-itemsub li a {
	color: white !important;
	padding: 8px 0 0 0 !important;
}

.nav-itemsub {
	position: relative;
	padding: 20px 0 20px 0;
	background-color: #2e3949;
	opacity: 0.8;
	color: white !important;
	top: -10px;
	z-index: -1;
	font-size: 0.8rem;
}

.card-btn {
	background-color: #2e3949 !important;
}


.addfingerid{
    width: 250px;
    padding:10px;
    position: relative;
    text-align: center;
    border: 1px solid;
    margin: 0 0 20px 70rem;

        border: 1px solid #999;
            box-shadow: 1px 1px 1px 1px #999;
    border-radius: 5px;
}

.container1{
max-width: 1700px !important;

}
.table > tbody > tr > td {
text-align: center;

}
.table > thead > tr > th {
white-space: nowrap;
}
</style>

<body>
	<%@ include file="../include/header.jsp"%>




	<div class="container container1">
		<div class="recruinfo-title">
			<h2 class="recruinfo-title-p">급여조회</h2>
		</div>
		<br><br>
		<div id="SubContents">
<!-- 수정할곳 -->

								
									<div class="card-header card-header-primary">
										<h4 class="card-title ">사원별 급여내역</h4>
										<p class="card-category">사원의 급여내역을 조회하여 한 눈에 확인할 수 있도록 제공되는 메뉴입니다. 조회기간 및 사원을 확인하세요!</p>
									</div>

									<table id="example" class="table">
										  <thead>
										  <tr style="color: white;">
										  <th scope="col" colspan="5"  bgcolor="343a40">월별 급여내역</th>
										  <th scope="col" colspan="3" bgcolor="444b52">4대보험</th>
										  <th scope="col" colspan="4" bgcolor="343a40">추가수당</th>
										  <th scope="col" colspan="2"  bgcolor="444b52">기타</th>
										  </tr>
										    <tr>
										      <th scope="col">지급일자</th>
										      <th scope="col">기본급</th>
										      <th scope="col">지급총액</th>
										      <th scope="col">공제총액</th>
										      <th scope="col">실지급액</th>
										  
										      <th scope="col">국민연금</th>
										      <th scope="col">건강보험</th>
										      <th scope="col">고용보험</th>
										      
										      <th scope="col">초과근로수당</th>
										      <th scope="col">야간수당</th>
										      <th scope="col">식비</th>
										      <th scope="col">교통비</th>
										      
										      <th scope="col">총 근로시간</th>
										      <th scope="col">이름</th>
										      
										      
										    </tr>
										    </thead>
										    <tbody>
											<c:forEach var="salary" items="${salarys}">
												
												<tr>
												<c:set var="sa_code"
															value="${fn:split(salary.sa_code, '/')}" />
														<td scope="col" id="sal_year_month">${sa_code[1]}</td>
												<td scope="col">${salary.basic_salary}</td>
												<td scope="col">${salary.basic_salary+salary.food_expenses+salary.transportation_fee+salary.additional_extended+salary.additional_night}</td>
												<td scope="col">${salary.total_deduction_amount}</td>
												<td scope="col">${salary.actual_salary}</td>
												
												<td scope="col">${salary.national_pension_cost}</td>
												<td scope="col">${salary.health_insurance_cost}</td>
												<td scope="col">${salary.employment_insurance_cost}</td>
												
												<td scope="col">${salary.additional_extended}</td>
												<td scope="col">${salary.additional_night}</td>
												<td scope="col">${salary.food_expenses}</td>
												<td scope="col">${salary.transportation_fee}</td>
												
												<td scope="col">${salary.work_hours }시간${salary.work_minute }분</td>
												<td scope="col">${salary.name}</td>
												
												</tr>
												
												</c:forEach>
												</tbody>
										</table>
												

								

<!-- 수정할곳 -->
   



   </div>
   
   </div>
   
   




<!-- 작동 x 
Modal 직종 
<div class="modal fade" id="basicExampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">직종선택</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       	<div class="jobcho1"></div>
					<div class="jobcho2"></div>
					<div class="jobcho3-title">선택된 직종</div>
					<div class="jobcho3"></div>
					<button class="btn-sejob" data-dismiss="modal">선택 완료</button>
					<button class="btn-remove">모두지우기</button>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary btn-sejob" data-dismiss="modal">선택완료</button>
        <button type="button" class="btn btn-primary btn-remove">모두지우기</button>
      </div>
    </div>
  </div>
</div>
 -->


<!-- Modal 지역 -->
<div class="modal fade" id="ExampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">직종선택</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       		<div class="placho1"></div>
		<div class="placho2"></div>		
			<div class="jobcho3-title">선택된 지역</div>
			<div class="placho3"></div>
		
					<!-- <button class="btn-sejob" data-dismiss="modal">선택 완료</button>
					<button class="btn-remove">모두지우기</button> -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary btn-plsejob" data-dismiss="modal" >선택완료</button>
        <button type="button" class="btn btn-primary btn-plremove">모두지우기</button>
      </div>
    </div>
  </div>
</div>

<!-- Modal 지역 -->

 <script type="text/javascript" src="resources/js/jquery-3.4.0.min.js"></script> 
   


    <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->

  <script type="text/javascript" src="resources/js/popper.min.js"></script>
  <script type="text/javascript" src="resources/js/mdb.min.js"></script>
  <script type="text/javascript" src="resources/js/datatables.min.js"></script>
  
   <script type="text/javascript">
 
	$(document).ready(function () {
		$('#Example').DataTable({
			"paging": true, // false to disable pagination (or any other option)
			"order": [[ 4, "desc" ]]
		});
		$('.dataTables_length').addClass('bs-select');
	});
	
	$('#ulGugun').on('click',function(){
		console.log($('.value > span').text());
	});
    $('#example').DataTable( {
        columnDefs: [
            {
                targets: [ 0, 1, 2 ],
                className: 'mdl-data-table__cell--non-numeric'
            }
        ]
    } );
    
    $('table.mdl-data-table tbody tr:odd').addClass('odd');
    $('table.mdl-data-table tbody tr:even').addClass('Even');

  </script>
  
  
  
  
<script>



 function plasearch() {
	
	var search =$('#plachoice').val();


	console.log(search); 

	var table =$('#Example').dataTable();
	table.fnFilter(search);
	

};  

</script>

  
			

 
    <footer class="page-footer text-center font-small mt-4 wow fadeIn">

    <!--Call to action-->
   
    <!--/.Call to action-->

    <hr class="my-4">

    <!-- Social icons -->
    <div class="pb-4">
   
     	<i class="fab fa-html5 footer-icon"></i>
     	<i class="fab fa-js-square footer-icon"></i>
        <i class="fab fa-css3-alt footer-icon"></i>
      <i class="fab fa-aws footer-icon"></i>
      <i class="fas fa-leaf footer-icon"></i>
        <i class="fab fa-android footer-icon"></i>
    </div>
    <!-- Social icons -->

    <!--Copyright-->
    <div class="footer-copyright py-3">
       © 2019 Copyright:<a href= "${path}"> <img src="${path}/resources/images/weblogo.png" class="footer-logo"  /> 
      </a>
     
    </div>
    <!--/.Copyright-->

  </footer>
</body>


</html>









