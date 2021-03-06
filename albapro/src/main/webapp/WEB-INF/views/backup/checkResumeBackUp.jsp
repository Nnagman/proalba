<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
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
 

<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script> 

 
 <link rel="stylesheet" href="resources/css/albamanage.css" />
<link rel="stylesheet" href="resources/css/albamanagecus.css" />
<link rel="stylesheet" href="resources/css/cal/albamanage.css" /> 
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
 <script src="resources/js/albamanage.js"></script>
<script src="resources/js/cal/albamanage.js"></script>
<script src="resources/js/cal/interaction.js"></script> 



</head>
<style>
 .odd { background-color:#EAEAEA; }

        .Even { background-color : white; }
</style>

<body>
	<div class="wrapper">
	<div class="div-sidebar">
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

<li class="nav-item active ">
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
		<li class="nav-item ">
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
			<div class="pser-con">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header card-header-primary">
									<h4 class="card-title ">지원현황</h4>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<c:forEach var="row" items="${list}" varStatus="status">
											<c:set var = "idx" value = "${fn:indexOf(row.r_code, '/')}" />
											<c:set var = "length" value = "${fn:length(row.r_code)}" />
											<c:set var = "r_date" value = "${fn:substring(row.r_code, idx+1, length)}" />
											<div class="card">
												<div class="card-body">
													<h5 class="card-title">
														작성일: ${row.r_date}
													</h5>
													<br>
													<h5 class="card-title">
														이력서 제목: ${row.title}
													</h5>
													<h5 class="card-title">
														경력:<c:forEach var="row2" items="${careerList[status.index]}">
																(근무지 :${row2.work_place}
																<fmt:parseNumber var="join_date" value="${row2.join_date.time / (1000*60*60*24)}" integerOnly="true"/>
																${join_date}
																<c:if test="${row2.end_date eq null}">
																	<jsp:useBean id="now" class="java.util.Date" />
																	<fmt:parseNumber var="end_date" value="${now.time / (1000*60*60*24)}" integerOnly="true"/>
																</c:if>
																
																<c:if test="${row2.end_date != null}">
																	<fmt:parseNumber var="end_date" value="${row2.end_date.time / (1000*60*60*24*1000)}" integerOnly="true"/>
																</c:if>
																<c:set var="date" value="${end_date - join_date}"/>
																
																<c:if test="${date > 365}">
																	<c:set var="date_year" value="${join_date / 365}"/>
																	<fmt:parseNumber var="year" value="${date_year}" integerOnly="true"/>
																	
																	<c:set var="date_month" value="${(join_date - year*365) / 30}"/>
																	<fmt:parseNumber var="month" value="${date_month}" integerOnly="true"/>

																	근무연수 :${year}년 ${month}개월)
																</c:if>
																
																<c:if test="${date < 365 && date > 30}">
																	<c:set var="date_month" value="${(join_date - year*365) / 30}"/>
																	<fmt:parseNumber var="month" value="${date_month}" integerOnly="true"/>
																	
																	근무연수 :${month}개월)
																</c:if>
																
																<c:if test="${date < 30}">
																	<c:set var="month" value="1"/>
																	
																	근무연수 :${month}개월 미만)
																</c:if>
															</c:forEach>
													</h5>
													<br>
													<a href="viewApplyResume?r_code=${row.r_code}&&id=${fn:substring(row.r_code, 0, idx)}" target="_blank" class="btn btn-primary card-btn">이력서 보기</a>
													<a href="applyContractForm?r_code=${row.r_code}&&id=${fn:substring(row.r_code, 0, idx)}&&n_code=${row.n_code}" class="btn btn-primary card-btn">근로계약서 작성</a>
												</div>
											</div>
										</c:forEach>							
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> 
	<script type="text/javascript" src="resources/js/jquery-3.4.0.min.js"></script> 
	<script src="resources/js/servicepage2/popper.min.js"></script>
	<script src="resources/js/servicepage2/jquery.dataTables.min.js"></script>
	<script src="resources/js/servicepage2/demo.js"></script>
</body>
</html>