<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width">
<title>프로알바</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/sel_register.css">
</head>

<body>
	<div id="wrap">
		
		<div class="header">
			<a href="/proalba"><img src="resources/images/biglogo.png" alt="logo" width="200px" height="150px" /></a>
			<h1>회원가입</h1>
		</div>
    <div id="container">
      <div id="content_head">
        <span>회원가입</span>을 환영합니다!
      </div>
      <div class="contents">
        <div class="indi_member">
          <i class="fas fa-user"></i><br/>
          <a href="pregister"><input type="button" class="reg_btn" id="indi_reg_btn" name="indi_reg" value="개인회원가입"></a>
      </div>
        <div class="corp_member">
          <i class="fas fa-user-tie"></i><br/>
          <a href="cregister"><input type="button" class="reg_btn" id="corp_reg_btn" name="indi_reg" value="기업회원가입"></a>
        </div>
      </div>

  </div>
</div>
