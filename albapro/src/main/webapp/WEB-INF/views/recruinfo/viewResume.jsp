<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>프로알바</title>
	
	<link href="resources/css/resume.css" rel="stylesheet">

	<!-- Custom fonts for this template-->
	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
 	
	<!-- Custom styles for this template-->
 	<!--  <link rel="stylesheet" href="resources/css/bootstrap.css" /> -->
	<link href="resources/css/servicepage/material-dashboard.css" rel="stylesheet">
	<link href="resources/css/servicepage/demo.css" rel="stylesheet">
    <link href="resources/css/servicepage/pservicepagecus.css" rel="stylesheet">
 

	<!-- 구글 차트 스크립트 -->
	<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script> 
  	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
 	<script src="resources/js/albamanage.js"></script>
	<script src="resources/js/cal/albamanage.js"></script>
	<script src="resources/js/cal/interaction.js"></script>
	 

	<style>
		.card{ width:100% !important; position:relative; margin-right:20px; }

  		.odd { background-color:#EAEAEA; }

		.Even { background-color : white; }
	</style>
	
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
</head>
<body>
	<div class="wrapper"><div class="div-sidebar">
	 <div class="sidebar" data-color="purple" data-background-color="white" data-image="../assets/img/sidebar-1.jpg">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
      <div class="logo">
        <a href="/" class="simple-text logo-normal">
        proalba
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">

<li class="nav-item  ">
            <a class="nav-link" href="cserAddJobopening_free_manage?id=${login.id}">
              <i class="material-icons">dashboard</i>
              채용공고 
            </a>
          </li>
		
		
		
		    <li class="nav-item">
            <a class="nav-link" href="cserWcontractForm?id=${login.id}&n_code=">
              <i class="material-icons">dashboard</i>
             전자근로 계약서 작성
            </a>
          </li>
		<li class="nav-item active">
            <a class="nav-link" href="ccontract?id=${login.id}">
              <i class="material-icons">dashboard</i>
             전자근로 계약서 목록
            </a>
          </li>
       
          <li class="nav-item">
            <a class="nav-link" href="cserEmpManage?id=${login.id}">
              <i class="material-icons">person</i>
              직원 관리
            </a>
          </li>
        <%--   <li class="nav-item">
            <a class="nav-link" href="pserSalary?id=${login.id}">
              <i class="material-icons">content_paste</i>
              급여 관리
            </a>
          </li> --%>
          <%-- <li class="nav-item ">
            <a class="nav-link" href="${path}/comm">
              <i class="material-icons">bubble_chart</i>
              커뮤니티
              </a>
          </li> --%>
        
        </ul>
      </div>
    </div>
<!-- End of Sidebar -->
	  </div>
		<div class="content">
			<div class="pser-con"><div class="container-fluid"><div class="row"><div class="col-md-12"><div class="card">
				<div class="card-header card-header-primary">
					<h4 class="card-title ">이력서</h4>
				</div>
				<div class="card-body">
					<div class="row">
						<form action="${path}/proalba/updateResume" id="form" method="post">
						<input type="hidden" name="r_code" value="${resume.r_code}"/>
							<div class="col-md-12">
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
															<span>
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
								
								<div id="RegistEducation" class="registArea"  style="padding:250px 72px 20px;">
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
								
							<div id="RegistIntroduce" class="registArea">
									<h2>통계차트</h2>
								
								<!-- 차트 -->
								<div id="piechart_3d" class="registArea" style="width: 900px; height: 500px;"></div>
								</div>
								<!-- 차트 -->
							</div>
						</form>
					</div>
				</div>
			</div></div></div></div></div>
		</div>
	</div>
  	<script type="text/javascript" src="resources/js/jquery-3.4.0.min.js"></script>
   	<script src="resources/js/servicepage2/popper.min.js"></script>
   	<script src="resources/js/servicepage2/jquery.dataTables.min.js"></script>
   	<script src="resources/js/servicepage2/demo.js"></script>
   	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
   	<script type="text/javascript" src="resources/js/common.js"></script>
</body>
</html>