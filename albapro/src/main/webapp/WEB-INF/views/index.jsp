<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>프로알바</title>
<link rel="stylesheet" href="resources/css/index.css" />
<link rel="stylesheet" type="text/css" href="semantic/dist/semantic.min.css">
<script src="semantic/dist/semantic.min.js"></script>
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
<%--       <c:forEach var="post" items="${공고글리스트 }" --%>
        <li><a href="#">맥도날드 라이더 모집 <%-- ${공고글.제목} --%></a></li>
<%--       </c:forEach> --%>
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
        <i class="plus square outline icon"></i>
      </div>
      <div class="mainbot1_con">
<%--       <c:forEach var="post" items="${커뮤니티리스트 }"> --%>
        <li><a href="#">알바 꿀팁 드림<%-- ${커뮤니티.제목} --%></a></li>
<%--       </c:forEach> --%>
      </div>
    </div>
        <div class="main mainbot2">
      <div class="title">
        <h2>2019 최저임금</h2>
      </div>
      <div class="mainbot2_con">
      	<span id="text1">시급</span>
      	<span id="text2">8,350원</span>	
      	<div id="text3">*주 5일 근무 기준</div>
      	<table>
      		<tbody>
      			<tr>
      				<th>일급</th>
      				<td>8시간</td>
      				<td>66,800원</td>
      			</tr>
      			
      			<tr>
      				<th>주급</th>
      				<td>40시간</td>
      				<td>334,000</td>
      			</tr>
      			
      			<tr>
      				<th>월급</th>
      				<td>209시간</td>
      				<td>1,745,150원</td>
      			</tr>
      		</tbody>
      	</table>
      </div>
    </div>
  </div>
</body>
</html>
