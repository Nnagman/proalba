<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">

<title>프로알바</title>
</head>
<link rel="stylesheet"  href="resources/css/myInfoModify.css" />
<%@ include file = "../include/header.jsp" %>

<body>
<div class="contents">
	<div class="pwChk">
		<h3>비밀번호 확인</h3>
			<div class="pwChkInput">
				<form action="${path}/MyinfoModify" method="post">
					<label for="password">Password</label>
					<input type="hidden" id="id" name="id" value='${login.id}'/>
   					<input type="password" id="password" name="password" required="required"/>
    				<button type="submit">확인</button>
				</form>
			</div>
	</div>
</div>
</body>
</html>