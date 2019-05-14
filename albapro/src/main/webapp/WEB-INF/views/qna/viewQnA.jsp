<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="${path}/resources/bootstrap-4.3.1-dist/css/bootstrap.min.css"  />
<link rel="stylesheet" type="text/css" href="${path}/resources/viewCss/blog-post.css"  />
<%@ include file = "../include/header.jsp" %>


<style>
	.attImg{
		width : 400px;
		heigh : 250px;
	}
	.viewImg {
		display : inline-block;
	}

</style>
</head>

<body>
  <!-- Page Content -->
 
  <div class="container">

    <div class="row">

      <!-- Post Content Column -->
      <div class="col-lg-8">
 	<form name="form1" id="form1" method="post" action="${path}/responseQnA">
        <!-- Title -->
        <h1 class="mt-4">${viewQnA.title}</h1>

        <!-- Author -->
        <p class="lead">
        	문의유형 ${viewQnA.service_type}
        </p>

        <hr>

        <!-- Date/Time -->
        <p>Posted on ${fn:substring(viewQnA.cs_code,4,20)}</p>

        <!-- Preview Image
        <hr>
        
			<c:forEach var="att" items="${attvo }" > 
			<span class="viewImg">
	                <img class="attImg img-fluid rounded" src="<spring:url value='/resources${att.fullname}' />" />		
	                <input type="hidden" name="fullname" value="${att.fullname}">			
			</span>
	        </c:forEach>
        <hr>
         -->
        
        <!-- Post Content -->
        ${viewQnA.content}<br><hr>
	<c:if test='${fn:substring(login.m_code,0,1) == "c" || fn:substring(login.m_code,0,1) == "p"}'>
		<c:if test='${viewQnA.whether_response == "1"}'>
		${viewQnA.response_content}<br>
		</c:if>
		<button type="button" id="btnList">목록</button>
	</c:if>
	<c:if test='${fn:substring(login.m_code,0,1) == "a" && viewQnA.whether_response == "0"}'>
		<input type="hidden" value="${viewQnA.cs_code}" name="cs_code"/>
		<textarea class="tex4" id="kkk" cols="84" rows="12" maxlength="1000" name="content"></textarea><br>
		<button type="button" id="btnList2">목록</button>
		<input type="submit" value="답변하기"/>
	</c:if>
	<c:if test='${fn:substring(login.m_code,0,1) == "a" && viewQnA.whether_response == "1"}'>
		<input type="hidden" value="${viewQnA.cs_code}" name="cs_code"/>
		${viewQnA.response_content}<br>
		<button type="button" id="btnList2">목록</button>
	</c:if>
	</form>
      </div>


    </div>
    <!-- /.row -->

  </div>
  <script>
  	$(document).ready(function(){
  		$("#btnList").click(function(){
			location.href="${path}/qnalist?m_code=${login.m_code}";
		});
  		
  		$("#btnList2").click(function(){
			location.href="${path}/adminQnalist";
		});
  	});
  </script>
</body>
</html>