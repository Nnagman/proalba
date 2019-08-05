<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.3.1.slim.js" integrity="sha256-fNXJFIlca05BIO2Y5zh1xrShK3ME+/lYZ0j+ChxX2DA=" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="resources/css/onlineQnA.css?ver=2">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script type="text/javascript" src="resources/js/onlineQnA.js?ver=3"></script>
<title>프로알바</title>
<style>
.footer-logo{
	left:500px !important;
	width:80px !important;
	}
	
	footer{
         top:350px;
          position: relative;
      }
</style>
</head>
<body>
<%@ include file = "../include/header.jsp" %>
	<form action="" method="POST">
	<div class="contents">
		<div class="title"> <h1>온라인 문의 답변 </h1> </div> <br>
		<div class="god">
			<div class="box">
				<table border="1">
					<tr>
						<th class="tt"><span class="sp1">문의유형</span></th>
						<td>
							<select class="ff" id="type_of_inquiry" name="type_of_inquiry" onchange="categoryChange(this)">
								<option value="0">선택해주세요.</option>
								<option value="1">정보수정</option>
								<option value="2">이력서 작성</option>
								<option value="3">채용정보검색</option>
								<option value="4">결제문의</option>
								<option value="5">모바일 서비스</option>
								<option value="6">제안</option>
								<option value="7">기타</option>
							</select>
							<select class="ff" id="detail_of_inquiry" name="detail_of_inquiry">
								<option value="0">선택해주세요.</option>
							</select>
						</td>
					</tr>
					<tr>
						<th class="tt"><span class="sp1">제목</span></th>
						<td><input type="text" class="tex1" id="title" name="title" maxlength="50"></td>
					</tr>
					<tr>
						<th><span class="sp1" name="content">문의내용</span></th>
						<td>
							<textarea class="tex4" id="kkk" cols="84" rows="12" maxlength="1000" name="content"></textarea>
						</td>
					</tr>
					<tr>
						<th class="tf"><span class="sp1">첨부파일</span></th>
						<td>
							<input type="file" size="70" name="filename"><br>
						</td>
					</tr>
					<tr>
						<th class="tt"><span class="sp1">작성자</span></th>
						<td><input type="text" id="usernm" class="tex2" maxlength="20" name="name"></td>
					</tr>
					<tr>
						<th class="tt"><span class="sp1">이메일</span></th>
						<td>
							<input type="text" id="email1" class="tex1">
						</td>
					</tr>
					<tr class="noborder">
						<th class="tt"><span class="sp1">휴대폰 번호</span></th>
						<td class="noborder">
						<input class="tex2" id="tel2" type="text" />
					</tr>
				</table>
			</div>
			<button type="button" class="bt1" onclick="fnOnlineSubmit()">보내기</button>
		</div>
	</div>
	</form>
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