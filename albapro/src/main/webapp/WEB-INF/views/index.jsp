<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>프로알바</title>
<link rel="stylesheet" href="resources/css/index.css" />
<%@ include file = "include/header.jsp" %>	
</head>
<body>
<%@ include file = "include/menu.jsp" %>
  <div class="contents">
    <div class="main maintop1">
      <div class="title">
        <h2>이 달의 알바</h2>
      </div>
      <div class="maintop1_con">
        <li><a href="#">맥도날드 라이더 모집</a></li>
      </div>
    </div>
    <div class="main maintop2">
      <div class="title">
        <h2>로그인</h2>
      </div>
      <div class="login">
        <input type="text" id="userid" name="userid" class="i_text" placeholder="ID" required>
        <br>
        <input type="password" id="passwd" name="passwd"  class="i_text" placeholder="PASSWORD" required>
        <br>
        <button type="submit" class="login_btn" id="login_btn" alt="로그인" name="login_btn">로그인</button>
      </div>
      <div class="login_bot">
      	<a href="#">회원가입</a>
      </div>
    </div>
    <br>
    <div class="main mainbot1">
      <div class="title">
        <h2>알바 커뮤니티</h2>
      </div>
      <div class="mainbot1_con">
        <li><a href="#">알바 꿀팁 드림</a> </li>
      </div>
    </div>
        <div class="main mainbot2">
      <div class="title">
        <h2>최저시급</h2>
      </div>
      <div class="mainbot2_con">
      	<span>시급</span><span>8,350원</span>	
      </div>
    </div>
  </div>
</body>
</html>
