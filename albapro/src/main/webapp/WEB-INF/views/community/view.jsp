<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로알바</title>

<%@ include file = "../include/header.jsp" %>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

<link rel="stylesheet" type="text/css" href="${path}/resources/bootstrap-4.3.1-dist/css/bootstrap.min.css"  />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style>
	.attImg{
		width : 400px;
		heigh : 250px;
	}
	.viewImg {
		display : inline-block;
	}
	.form-control{
		resize: none;
	}
	.footer-logo{
		left:500px;
		width:80px;
	}
	.btnList{
		color: #333;
    	background-color: #fff;
    	border: 1px solid #a0a0a0;
    	float: right;
    	margin-bottom: 20px;
	}
	.btnList2{
		color: #333;
    	background-color: #fff;
    	border: 1px solid #a0a0a0;
	}
	.nov{
	float: right;
	}
	.lead{
	margin-bottom: 5px !important;
	}
	.reply_delete{
	float: right;
	}
</style>
<script>
	$(function(){
		listReply("1");
		$("#btnReply").click(function(){
			reply();
		});	
		
		$("#btnList").click(function(){
			location.href="${path}/comm";
		});
		
		$("#btnUpdate").click(function(){
			document.form1.action = "${path}/commupdate";
			document.form1.submit();
		});
		
		$("#btnDelete").click(function(){
			if(confirm("삭제하시겠습니까?")){
				document.form1.action = "${path}/commdelete.do";
				document.form1.submit();
			}
		});
	});
	
	function reply(){
		var r_content = $("#r_content").val();
		var p_code=$("#p_code").val();
		var id = $("#reId").val();
		var param = {"r_content": r_content, "p_code" : p_code, "id":id };
		$.ajax({
			type: "post",
			url: "${path}/reply/insert.do",
			data: param,
			success : function(){
				listReply(1);
			}
		});
	}
	
	function listReply(num) {
		$.ajax({
			type: "post",
			url: "${path}/reply/list.do?p_code=${vo.p_code}&curPage="+num,
			success: function(result){
				console.log(result);
				$("#listReply").html(result);
			}
		});
	}
	
	function reply_delete(r_code){
		var param = {"r_code" : r_code};
		$.ajax({
			type: "post",
			url: "${path}/reply/reply_delete.do",
			data: param,
			success: function(result){
				listReply(1);
			}
		});
	}
</script>
</head>
<body>
  <!-- Page Content -->
 
  <div class="container">

    <div class="row">

      <!-- Post Content Column -->
      <div class="col-lg-12">
 	<form name="form1" id="form1" method="post">
        <!-- Title -->
        <h1 class="mt-4">${vo.title}</h1>

        <!-- Author -->
        <p class="lead">
          by ${vo.id}
        </p>

        

        <!-- Date/Time -->
        <span style="margin: 0; color: #212529; font-size: 14px;"><fmt:formatDate value="${vo.p_date}" pattern="yyyy-MM-dd a HH:mm:ss"/></span>
		<span class="nov" style="color: #212529; font-size: 14px;">조회수 ${vo.viewcnt} </span>
        

        <!-- Preview Image -->
        
			<c:forEach var="att" items="${attvo}" > 
			<span class="viewImg">
	                <img class="attImg img-fluid rounded" src="<spring:url value='/resources${att.fullname}' />" />		
	                <input type="hidden" name="fullname" value="${att.fullname}">			
			</span>
	        </c:forEach>
        <hr style="border: 1px solid #ebeef1; margin-bottom: 40px;">
        
        <!-- Post Content -->
        ${vo.p_content}
        
        <input type="hidden" name="p_code" value="${vo.p_code}">
	</form>
	
        <hr>
        <div style="width:100%;">
					<!-- 게시물번호를 hidden으로 처리 -->
				<!-- 본인이 쓴 게시물만 수정, 삭제가 가능하도록 처리 -->
				<c:if test="${login.id == vo.id || login.id == 'admin'}">
					<button type="button" id="btnUpdate" class="btnList2">수정</button>
					<button type="button" id="btnDelete" class="btnList2">삭제</button>
				</c:if>
					<!-- 상세보기 화면에서 게시글 목록화면으로 이동 -->
					<button type="button" id="btnList" class="btnList">목록</button>
         </div>
         
	<!-- 로그인 한 회원에게만 댓글 작성폼이 보이게 처리 -->
	<c:if test="${login.id != null}">
        <!-- Comments Form -->
        <div class="card my-4" style="width: 100%; height: 230px; margin-bottom: 50px !important; margin-top: 0 !important;">
          <h5 class="card-header">댓글</h5>
          <div class="card-body">
            <form>
              <div class="form-group">
                <textarea class="form-control" id="r_content" rows="3"></textarea>
              </div>
              <input type="hidden" id="reId" value="${login.id}">
              <input type="hidden" id="p_code" value="${vo.p_code}">      
              <button type="button" id="btnReply" class="btn btn-primary" style="float: right; width: 70px;">게시</button>
            </form>
          </div>
        </div>
     </c:if>
			<!-- 댓글 목록 영역 -->
	<div id="listReply"></div>

      </div>


    </div>
    <!-- /.row -->

  </div>
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