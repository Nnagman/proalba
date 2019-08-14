<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<title>프로알바</title>
		
		<link rel="stylesheet" href="resources/css/recruinfo/job.css">
		<link rel="stylesheet" href="resources/css/recruinfo/jobgoods.css">
		<link rel="stylesheet" href="resources/css/recruinfo/sub.css">
		<link rel="stylesheet" href="resources/css/recruinfo/recruinfoCus.css">
		<link href="resources/css/resume.css" rel="stylesheet">
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
		<link href="resources/css/bootstrap.min.css" rel="stylesheet">
		<link href="resources/css/mdb.min.css" rel="stylesheet">
		<link href="resources/css/style.css" rel="stylesheet">
		<link href="resources/css/datatables.min.css" rel="stylesheet">
		
		<script type="text/javascript" src="http://www.google-analytics.com/plugins/ua/ecommerce.js"></script>
		<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

		<script type="text/javascript" src="resources/js/recruinfo/test7.js"></script>
		<script type="text/javascript" src="resources/js/recruinfo/test8.js"></script>
		<script type="text/javascript" src="resources/js/recruinfo/test9.js"></script>
		<script type="text/javascript" src="resources/js/recruinfo/test10.js"></script>
		<script type="text/javascript" src="resources/js/recruinfo/test11.js"></script>
		<script type="text/javascript" src="resources/js/recruinfo/test12.js"></script>
		<script type="text/javascript" src="resources/js/recruinfo/test13.js"></script>
		<script type="text/javascript" src="resources/js/recruinfo/test14.js"></script>
		<script type="text/javascript" src="resources/js/recruinfo/test15.js"></script>
		<script type="text/javascript" src="resources/js/recruinfo/test16.js"></script>
		<script type="text/javascript" src="resources/js/recruinfo/test17.js"></script>
		<script type="text/javascript" src="resources/js/recruinfo/test18.js"></script>
		<script type="text/javascript" src="resources/js/recruinfo/test19.js"></script>
		<script type="text/javascript" src="resources/js/recruinfo/test20.js"></script>
		<script type="text/javascript" src="resources/js/recruinfo/test21.js"></script>
		<script type="text/javascript" src="resources/js/recruinfo/test21.js"></script>
		<script type="text/javascript" src="resources/js/recruinfo/recruinfoCus.js"></script>
		
		<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
		<script type="text/javascript">
      		google.charts.load("current", {packages:["corechart"]});
      		google.charts.setOnLoadCallback(drawChart);
      		function drawChart() {
      			var late_status =${resume.late_status};
    			var c_late_status =${resume.c_late_status};
        		var data = google.visualization.arrayToDataTable([
            		['Task', 'Hours per Day'],
            		['정상 출근',   c_late_status],
            		['지각',  late_status]
        		]);

        		var options = {
          			title: '근태통계',
          			is3D: true,
       	 		};

        		var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        		chart.draw(data, options);
      		}
    	</script>
		<style>
			html, body, header, .carousel { height: 9vh !important; }
	
			.he-title { display: none !important; }
	
			.carousel-inner { display: none !important; }
	
			header { background-image: url("#") !important; background-color: #5D5D5D !important; height:80px !important; }
	
			.recruinfo-title { text-align: center; margin-top: 50px; }
		
			.recruinfo-title-p { font-weight: 800; }
	
			.p.count { margin-top: 0px !important; }
	
			p { margin-bottom: 0px !important; }
	
			#JobCount div p.count { margin: 0 0 0 0 !important; }
	
			.jobSearch dl .data .tabForm li a { height: 34px !important; padding-top: 5px !important; vertical-align: middle !important; margin: 0; }
	
			.jobSearch dl .content .value span { height: 23px !important; }
	
			.placho-line1{ margin: 0 !important; }
	
			.recruinfo-list{ width:100%; }
	
	
			.recruinfo-table{ position: relative; width: 100%; margin: 0; padding: 0; font-family: 'Malgun Gothic'; letter-spacing: -1px; border-top: 1px solid #aaa; }
	
			.recruinfo-table th{ text-align:left !important; font-weight: bold; text-align: -internal-center; display: table-cell; vertical-align: inherit; }
	
			thead { display: table-header-group; vertical-align: middle; border-color: inherit; }
			
			tr { display: table-row; vertical-align: inherit; border-color: inherit; }
	
			tbody { display: table-row-group; vertical-align: middle; border-color: inherit; }
	
			.recruinfo-list table tr th { padding: 9px 0 10px; padding: 11px 0 8px\0; padding-left: 15px; 
										line-height: 1; color: #666a5b; background-color: #f2f2f2;
										border: 0px solid !important; border-bottom: 1px solid #b5b5b5 !important; }
	
			.recruinfo-list table tr td { padding: 12px 0; line-height: 1; text-align: left; color: #474747;
	     								border: 0px solid !important; border-bottom: 1px solid #e4e4e4 !important; padding-left: 15px; }
	
			.recruinfo-list table tr td.local { width: 13rem; padding-left: 15px; }
	
			div.dataTables_filter label{ float: right; margin-right: 40px; }
	
			.jobcho-line1{ text-align: center; }
	
			.company{ display: block; height: auto; padding: 2px 0 6px !important; font-size: 13px; background: none !important; color: #0075ab; }
	
			.recruinfo-list .title a span { position: relative; overflow: hidden; font-family: tahoma; line-height: 12px;
	    									vertical-align: top; white-space: nowrap; cursor: pointer; text-align: left; }
			
			#Example_info{ display:none; }
	
			#Example_paginate{ float:left; }
	
			.navbar{ padding-right:0 !important; }
	
			footer{ top:400px; position: relative; }
		</style>
	</head>
	<body>
		<%@ include file="../include/header.jsp"%>
		<div class="container">
			<br><br>
			<div id="SubContents">
				<input type="hidden" id="WsSrchKeywordWord" name="WsSrchKeywordWord" value=""/>
				<input type="hidden" id="hidschContainText" name="hidschContainText" value="">
				<input type="hidden" id="hidWsearchInOut" name="hidWsearchInOut" value="">
				
				<!-- base hidden parameter -->
				<input type="hidden" id="hidSort" name="hidSort" value="">
				<input type="hidden" id="hidSortOrder" name="hidSortOrder" value="">
				<input type="hidden" id="hidSortDate" name="hidSortDate" value="">
				<input type="hidden" id="hidListView" name="hidListView" value="LIST">
				<input type="hidden" id="hidSortCnt" name="hidSortCnt" value="50">
				<input type="hidden" id="hidSortFilter" name="hidSortFilter" value="Y">
				<input type="hidden" id="hidJobKind" name="hidJobKind" value="">
				<input type="hidden" id="hidJobKindMulti" name="hidJobKindMulti" value="">
				<input type="hidden" id="page" name="page" value="1">
				<input type="hidden" id="hidSearchyn" name="hidSearchyn" value="N">
				<input type="hidden" id="strAreaMulti" name="strAreaMulti" value="">
				<input type="hidden" id="schtext" name="schtext" value="">
	
				<div class="jobSearch" id="JobSearch"></div>

				<form id="form" action="${path}/updateResume" method="post">
					<input type="hidden" name="r_code" value="${resume.r_code}"/>
					<div class="col-md-12" >
						<div id="RegistTitle" class="registArea" style="padding:0px 72px 20px;">
							<h1>${resume.title}</h1>
						</div>
						<div id="RegistBaseInfo" class="registArea">
							<div class="photoArea">
								<span class="photo" id="photo">
									<div id='inputed_img'>
										<input type='hidden' class='file' name='file_name' value='${resume.file_name}'>
										<img class='attImg' style='width:180px; height:235px;' src="<spring:url value='/resources${resume.file_name}' />" />
									</div>
								</span>
							</div>
							<div class="baseInfo">
								<table cellpadding="0" cellspacing="0" summary="개인정보인 휴대폰,유선전화,안심번호,이메일,주소,홈페이지 항목의 표입니다.">
									<tbody>
										<tr>
											<td class="item">휴대폰</td>
											<td class="infoContents hpNumber">
												<div class="contentsBox">
													<span class="number" id="idResumeHtel">${login.phone}</span>
													<input type="hidden" name="id" value="${login.id}"/>
												</div>
											</td>
										</tr>
										<tr>
											<td class="item">이메일</td>
											<td class="infoContents userEmail">
												<div class="contentsBox">
													${login.email}
												</div>
											</td>
										</tr>
										<tr>
											<td class="item">우편번호</td>
											<td class="infoContents address">
											<c:set var="address" value = "${fn:split(resume.address,'/')}"/>
												<div class="contentsBox">
													<span class="shortText">
														${address[0]}
													</span>
												</div>
											</td>
										</tr>
										<tr>
											<td class="item">주소</td>
											<td class="infoContents address">
												<div class="contentsBox">
													<span class="shortText">
														${address[1]}
													</span>
												</div>
											</td>
										</tr>
										<tr>
											<td class="item">상세주소</td>
											<td class="infoContents address">
												<div class="contentsBox">
													<span class="shortText">
														${address[2]}
													</span>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						
						<div id="RegistEducation" class="registArea" style="padding:250px 72px 20px;">
							<c:set var="education" value = "${fn:split(resume.education,'/')}"/>
							<c:set var="high_school" value = "${fn:split(education[0],'+')}"/>
							<c:set var="college" value = "${fn:split(education[1],'+')}"/>
							<c:set var="university" value = "${fn:split(education[2],'+')}"/>
							<c:set var="graduate_school" value = "${fn:split(education[3],'+')}"/>
							<h2>학력</h2>
							<table style="width:100%">
								<tbody>
									<tr>
										<td><p>    </p></td>
										<td><p>학교명</p></td>
										<td><p>졸업일</p></td>
										<td><p>전공</p></td>
										<td><p>졸업여부</p></td>
									</tr>
									<tr id="high_school">
										<td><p>고등학교</p></td>
										<td>${high_school[0]}</td>
										<td>${high_school[1]}</td>
										<td>${high_school[2]}</td>
										<td>${high_school[3]}</td>
									</tr>
									<tr id="college">
										<td><p>대 학(2,3년제)</p></td>
										<td>${college[0]}</td>
										<td>${college[1]}</td>
										<td>${college[2]}</td>
										<td>${college[3]}</td>
									</tr>
									<tr id="university">
										<td><p>대학교(4년제)</p></td>
										<td>${university[0]}</td>
										<td>${university[1]}</td>
										<td>${university[2]}</td>
										<td>${university[3]}</td>
									</tr>
									<tr id="graduate_school">
										<td><p>대학원</p></td>
										<td>${graduate_school[0]}</td>
										<td>${graduate_school[1]}</td>
										<td>${graduate_school[2]}</td>
										<td>${graduate_school[3]}</td>
									</tr>
								</tbody>
							</table>
						</div>
						
						<div id="RegistCareer" class="registArea" style="">
							<h2>경력 </h2>
							<table style="width:100%">
								<tbody>
									<tr>
										<td><p>근무지</p></td>
										<td><p>입사일</p></td>
										<td><p>퇴사일</p></td>
									</tr>
									<c:forEach var="row" items="${careers}" >
										<tr>
											<td>${row.work_place}</td>
											<td><fmt:formatDate value="${row.join_date}" pattern="yyyy-MM-dd"/></td>
											<td><fmt:formatDate value="${row.end_date}" pattern="yyyy-MM-dd"/></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
							
						<div id="RegistLicense" class="registArea" style="">
							<h2>자격증</h2>
							<c:set var="licenses" value = "${fn:split(resume.license,'+')}"/>
							<c:if test="${licenses[0] != ''}">
								<c:forEach var="row" items="${licenses}" >
									<c:set var="license_split" value = "${fn:split(row,'/')}"/>
									<c:set var="license_name" value = "${license_split[0]}"/>
									<c:set var="license_publisher" value = "${license_split[1]}"/>
									<c:set var="license_year" value = "${license_split[2]}"/>
									<div id="RegistLicenseResult" class="resultForm2">
										<div id="divLicense1">
											<div class="registResult">
												<table style="width:100%">
													<tbody>
														<tr>
															<td><p>자격증명</p></td>
															<td><p>발행처</p></td>
															<td><p>취득년도</p></td>
														</tr>
														<tr>
															<td>${license_name}</td>
															<td>${license_publisher}</td>
															<td>${license_year}년</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</c:forEach>
							</c:if>
						</div>
							
						<div id="RegistIntroduce" class="registArea">
							<h2><span class="necessary">필수</span>자기소개서</h2>
							<div class="registForm">
								<!-- 자유양식 -->
								<div id="FreeDoc" class="introduceWrap">
									<div class="resizable-textarea">
										<span>
											<textarea id="resumeContents" name="content" cols="30" rows="10" class="processed" readonly>${resume.content}</textarea>
										</span>
									</div>
								</div>
								<!-- //자유양식 -->
							</div>
						</div>
						${resume.late_status };
						<c:choose>
						<c:when test="${null ne resume.late_status }">
						<div id="RegistIntroduce" class="registArea">
							<h2>통계차트</h2>
							<!-- 차트 -->
							<div id="piechart_3d" class="registArea" style="width: 900px; height: 500px;"></div>
							<!-- 차트 -->
						</div>
						</c:when>
						<c:otherwise>
						</c:otherwise>
						</c:choose>
					</div>
				</form>
			</div>
		</div>
		
		<script type="text/javascript" src="resources/js/jquery-3.4.0.min.js"></script>
		<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
		
		<!-- MDB core JavaScript -->
		<script type="text/javascript" src="resources/js/popper.min.js"></script>
	  	<script type="text/javascript" src="resources/js/mdb.min.js"></script>
	  	<script type="text/javascript" src="resources/js/datatables.min.js"></script>
	   	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	   	<script type="text/javascript" src="resources/js/common.js"></script>

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
	       		© 2019 Copyright:<a href= "${path}"><img src="${path}/resources/images/weblogo.png" class="footer-logo"  /></a>
	       	</div>
	       	<!--/.Copyright-->
		</footer>
		
		<script type="text/javascript">
			google.charts.load("current", {packages:["corechart"]});
      		google.charts.setOnLoadCallback(drawChart);
      
      		function drawChart() {
    			var late_status =${resume.late_status};
    			var c_late_status =${resume.c_late_status};
        		var data = google.visualization.arrayToDataTable([
          			['Task', 'Hours per Day'],
         	 		['정상 출근',   c_late_status],
          			['지각',  late_status]
        		]);

        		var options = {
          			title: '근태통계',
          			is3D: true,
        		};

        		var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        			chart.draw(data, options);
      			}
   	 	</script>	 
	</body>
</html>









