<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file = "../include/header.jsp" %>	
<script src="resources/js/signUp.js?ver=1"></script>
<style type="text/css">
	.card{
		margin-left: auto;
		margin-right: auto;
		width: 500px;
   		height: 300px;
   		margin-top: 50px;
   		letter-spacing: 2px;
	}
	
	.card-header{
		font-size: 24px;
		font-weight: bold;
		text-align: center;
	}
	
	span{
		font-size:20px;
		font-weight: bold;
	}
</style>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
<div class="card border-dark mb-3">
  <div class="card-header">내 정보 조회</div>
  <div class="card-body text-dark">
    <h6 class="card-title"><span>${login.name}</span>님의 정보</h6>
    <hr />
    <p class="card-text">아이디 : ${login.id}</p>
    <hr />
    <p class="card-text">전화번호 : ${login.phone}</p>
    <hr />
    <p class="card-text">이메일 : ${login.email}</p>
  </div>
</div>
</body>
</html>