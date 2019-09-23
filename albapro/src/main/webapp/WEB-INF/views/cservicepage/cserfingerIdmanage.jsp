<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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

table.table td {

    padding-right: 2.1rem;
}



.recruinfo-list table tr td.local {
    width: 13rem;
    padding-left: 15px;
    
}

div.dataTables_filter label{
float: right;
margin-right: 40px;
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
td{
	text-align: center;
}
</style>

<body>
	<%@ include file="../include/header.jsp"%>




	<div class="container">
		<div class="recruinfo-title">
			<h2 class="recruinfo-title-p">지문 관리</h2>
		</div>
		<br><br>
		<div id="SubContents">
<!-- 수정할곳 -->

								
									<div class="card-header card-header-primary">
										<h4 class="card-title ">지문 관리</h4>
										<p class="card-category">직원의 근태를 볼수 있습니다.</p>
									</div>
									
									<table id="example" class="table" >
											<thead class="thead-dark">
												<tr>
													<th class="th-sm" scope="col">직원</th>
													<th class="th-sm" scope="col">계약시작일</th>
													<th class="th-sm" scope="col">지문 아이디</th>
													<th class="th-sm" scope="col">추가</th>	
												</tr>
											</thead>
											<tbody id="tbody">
												<c:forEach var="row" items="${list}" varStatus="status">
													<tr id="${status.count}" class="${row.em_code}">
														<td>${row.name}</td>
														<td>${fn:substring(row.start_period,0,10)}</td>
														<c:if test='${row.finger_id == 0}'> <td> 등록된 지문이 없습니다. </td> </c:if>
														<c:if test='${row.finger_id != 0}'> <td> ${row.finger_id} </td> </c:if>
														<td> <i class="fas fa-pencil-alt Bupdate"></i> <i class="fas fa-trash-alt Bdelete"></i> </td>
													</tr>
												</c:forEach>
											</tbody>

										</table>

<!-- 수정할곳 -->
   



   </div>
   
   </div>

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

	
	
	
  </script>
	<script src="resources/js/servicepage2/popper.min.js"></script>
	<script src="resources/js/servicepage2/jquery.dataTables.min.js"></script>
	<script src="resources/js/servicepage2/demo.js"></script>
	<script src="resources/js/cserWorkmanagetableSC.js"></script>
  
<script>

    $(document).ready(function() {
      $().ready(function() {
        $sidebar = $('.sidebar');
        $sidebar_img_container = $sidebar.find('.sidebar-background');
        $full_page = $('.full-page');
        $sidebar_responsive = $('body > .navbar-collapse');
        window_width = $(window).width();
        fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();
        if (window_width > 767 && fixed_plugin_open == 'Dashboard') {
          if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
            $('.fixed-plugin .dropdown').addClass('open');
          }
        }
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
    
            var id;
            var class1;
            var tag;

            //수정하기 버튼
            $(document).on("click",".Bupdate",function(){
            	$('#'+id).html(tag);
          	  	id = $(this).parent().parent().attr('id');
          	  	class1 = $(this).parent().parent().attr('class');
          	  	tag = $(this).parent().parent().html();
          	  	console.log('tag : ' + tag  + '//' + 'id : ' + id);
                $(this).parent().prev().replaceWith('<td><input type="text" id="finger_id" value=""/></td>');
                $(this).replaceWith(' <i class="fas fa-check-square" id="recordupdate"></i>');
            });
            
            //업데이트 버튼
            $(document).on("click","#recordupdate",function(){
          	  var str = class1 + '/' + $('#finger_id').val();
          	  console.log(str);
          	  $.ajax({
      			async: false,
      			type: 'POST',
      			data: str,
      			dataType: 'json',
      			contentType: 'application/json; charset=UTF-8',
      			url: '${path}/cserfingerIdupdate',
      			success: function(data){
      				if(data == null || data == undefined){
      					alert(data.message); location.reload();
      				}
      				alert(data.message); location.reload();
      			},
      			error : function(error) {alert("error : " + error);}
          	  });
            });
            
            //삭제 버튼
            $(document).on("click",".Bdelete",function(){
          	  var str = $(this).parent().parent().attr('class');
          	  $.ajax({
      			async: false,
      			type: 'POST',
      			data: str,
      			dataType: 'json',
      			contentType: 'application/json; charset=UTF-8',
      			url: '${path}/cserfingerIdremove',
      			success: function(data){
      				if(data == null || data == undefined){
      					alert(data.message); location.reload();
      				}
      				alert(data.message); location.reload();
      			},
      			error : function(error) {alert("error : " + error);}
          	  });
            });
      });
  }); 
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









