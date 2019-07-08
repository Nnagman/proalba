<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>프로알바</title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/pdata.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:700&display=swap&subset=korean" rel="stylesheet">
<script type="text/javascript" src="resources/js/jquery-3.4.0.min.js"></script>
<script>
    $(document).ready(function() {
      $('.container').on( 'keyup', 'textarea', function (e){
        $(this).css('height', 'auto' );
        $(this).height( this.scrollHeight );
      });
      $('.container').find( 'textarea' ).keyup();
    });
  </script>
</head>
<body>
<div class="header">
	 <a href= "/"><img src="resources/images/weblogo.png" class="logo1" /></a>
	<span class="sp1">개인정보처리방침</span>
	<a href="onlineQnA"><button type="button" id="qna" class="qna">온라인 문의</button></a>
</div>
<div class="container">
<div class="chart">
<span class="sp2">관련 문서</span><br>
<ul>
<li>
<a href="articles" class="ar">프로알바 이용약관</a><br>
</li>
<li>
<a href="pdata" class="ar">개인정보처리방침</a>
</li>
</ul>
</div>
	<h2>개인정보처리방침</h2>
	<textarea rows=auto cols="90" readonly>
	${pdata}
</textarea>
</div>
<div class="footer">
       © 2019 Copyright:<a href= "/"><img src="resources/images/weblogo.png" class="footer-logo"  /> 
      </a>
      </div>
</body>
</html>