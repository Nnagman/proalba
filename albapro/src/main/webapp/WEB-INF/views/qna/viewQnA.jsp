<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@ include file = "../include/header.jsp" %>
<link rel="stylesheet" type="text/css" href="${path}/resources/bootstrap-4.3.1-dist/css/bootstrap.min.css"  />
<link rel="stylesheet" type="text/css" href="${path}/resources/viewCss/blog-post.css"  />

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
<c:if test='${fn:substring(login.m_code,0,1) == "p"|| login.m_code == null}'>
<%@ include file = "../include/menu.jsp" %>
</c:if>

<c:if test='${fn:substring(login.m_code,0,1) == "c" && login.m_code != null}'>
<%@ include file = "../include/cmenu.jsp" %>
</c:if>
  <!-- Page Content -->
 
  <div class="container">

    <div class="row">

      <!-- Post Content Column -->
      <div class="col-lg-8">
 	<form name="form1" id="form1" method="post">
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
        ${viewQnA.content}
	</form>
	<button type="button" id="btnList">목록</button>

      </div>


    </div>
    <!-- /.row -->

  </div>
  <script>
  	$(document).ready(function(){
  		$("#btnList").click(function(){
			location.href="${path}/qnalist?m_code=${login.m_code}";
		});
  	});
  </script>
</body>
</html>