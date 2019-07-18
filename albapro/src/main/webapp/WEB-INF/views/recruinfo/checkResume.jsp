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

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">

<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/mdb.min.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/datatables.min.css" rel="stylesheet">




<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>

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
	height: 80px !important;
}

.p.count {
	margin-top: 0px !important;
}

p {
	margin-bottom: 0px !important;
}

.placho-line1 {
	margin: 0 !important;
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

div.dataTables_filter label {
	float: right;
	margin-right: 40px;
}

.jobcho-line1 {
	text-align: center;
}

.company {
	display: block;
	height: auto;
	padding: 2px 0 6px !important;
	font-size: 13px;
	background: none !important;
	color: #0075ab;
}


#Example_info {
	display: none;
}

#Example_paginate {
	float: left;
}

.navbar {
	padding-right: 0 !important;
}

table.table td{
vertical-align: middle;
padding: 0.5rem 0 0.5rem 1rem !important;
}

footer {
	top: 400px;
	position: relative;
}
</style>

<body>
	<%@ include file="../include/header.jsp"%>




	<div class="container">
		<div class="recruinfo-title">
			<h2 class="recruinfo-title-p" style="margin-top: 2.38rem;">채용 공고</h2>
		</div>
		<br>
		<br>
		<div id="SubContents">
			<!-- 수정할곳 -->
			<div class="card-header card-header-primary">
				<h4 class="card-title ">지원현황</h4>
			</div>
			<table id="example" class="table" >
				<thead class="thead-dark">
					<tr>
						<th class="th-sm" scope="col">제출일</th>
						<th class="th-sm" scope="col" style="width:200px">제목</th>
						<th class="th-sm" scope="col" style="width:420px padding-left:0;">경력</th>	
						<th class="th-sm" scope="col" colspan="2" >선택</th>
					</tr>
				</thead>
				<tbody id="tbody">
					<c:forEach var="row" items="${list}" varStatus="status">
						<c:set var="idx" value="${fn:indexOf(row.r_code, '/')}" />
						<c:set var="length" value="${fn:length(row.r_code)}" />
						<c:set var="r_date" value="${fn:substring(row.r_code, idx+1, length)}" />
								<tr>
									<td>${row.r_date}</td>
									<td class="card-title">${row.title}</td>
									<td class="card-title">
										<c:forEach var="row2" items="${careerList[status.index]}">
																(근무지 :${row2.work_place}
																<fmt:parseNumber var="join_date"
											value="${row2.join_date.time / (1000*60*60*24)}"
											integerOnly="true" />
																${join_date}
																<c:if test="${row2.end_date eq null}">
											<jsp:useBean id="now" class="java.util.Date" />
											<fmt:parseNumber var="end_date"
												value="${now.time / (1000*60*60*24)}" integerOnly="true" />
										</c:if>

										<c:if test="${row2.end_date != null}">
											<fmt:parseNumber var="end_date"
												value="${row2.end_date.time / (1000*60*60*24*1000)}"
												integerOnly="true" />
										</c:if>
										<c:set var="date" value="${end_date - join_date}" />

										<c:if test="${date > 365}">
											<c:set var="date_year" value="${join_date / 365}" />
											<fmt:parseNumber var="year" value="${date_year}"
												integerOnly="true" />

											<c:set var="date_month"
												value="${(join_date - year*365) / 30}" />
											<fmt:parseNumber var="month" value="${date_month}"
												integerOnly="true" />

																	근무연수 :${year}년 ${month}개월)
																</c:if>

										<c:if test="${date < 365 && date > 30}">
											<c:set var="date_month"
												value="${(join_date - year*365) / 30}" />
											<fmt:parseNumber var="month" value="${date_month}"
												integerOnly="true" />
																	
																	근무연수 :${month}개월)
																</c:if>

										<c:if test="${date < 30}">
											<c:set var="month" value="1" />
																	
																	근무연수 :${month}개월 미만)
																</c:if>
									</c:forEach>
								</td>
								<td style="text-align: right;-">
									<a href="viewApplyResume?r_code=${row.r_code}&&id=${fn:substring(row.r_code, 0, idx)}"
									target="_blank" class="btn btn-primary card-btn">이력서 보기</a>
								</td>
								<td>
									<a href="applyContractForm?r_code=${row.r_code}&&id=${fn:substring(row.r_code, 0, idx)}&&n_code=${row.n_code}"
									class="btn btn-primary card-btn">근로계약서 작성</a>
								</td>
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

	<script type="text/javascript" src="resources/js/jquery-3.4.0.min.js"></script>



	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->

	<script type="text/javascript" src="resources/js/popper.min.js"></script>
	<script type="text/javascript" src="resources/js/mdb.min.js"></script>
	<script type="text/javascript" src="resources/js/datatables.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#Example').DataTable({
				"paging" : true, // false to disable pagination (or any other option)
				"order" : [ [ 2, "desc" ] ]
			});
			$('.dataTables_length').addClass('bs-select');
		});

		$('#ulGugun').on('click', function() {
			console.log($('.value > span').text());
		});
	</script>




	<script>
		function plasearch() {

			var search = $('#plachoice').val();

			console.log(search);

			var table = $('#Example').dataTable();
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
			© 2019 Copyright:<a href="${path}"> <img
				src="${path}/resources/images/weblogo.png" class="footer-logo" />
			</a>

		</div>
		<!--/.Copyright-->

	</footer>





</body>


</html>









