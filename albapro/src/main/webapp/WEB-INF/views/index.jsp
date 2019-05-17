<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>프로알바</title>
<link rel="stylesheet" href="resources/css/index.css?ver=2" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:700&display=swap&subset=korean" rel="stylesheet">
<%@ include file = "include/header.jsp" %>	
<<<<<<< HEAD
</head>
<body>




    <div class="container">

      <!--Section: Main info-->
      <section class="mt-5 wow fadeIn">

        <!--Grid row-->
        <div class="row">

          <!--Grid column-->
          <div class="col-md-6 mb-4">

            <img src="${path}/resources/images/전자서명test.jpg" class="img-fluid z-depth-1-half"
              alt="">

          </div>
          <!--Grid column-->

          <!--Grid column-->
          <div class="col-md-6 mb-4 content-div">

            <!-- Main heading -->
            <h3 class="h3 mb-3 content-p">간단하게 해결되는</h3>
            <h3 class="h3 mb-3 content-p"> 근로계약서 작성</h3>
           
            <!-- Main heading -->

            <hr>
				<p><img src="${path}/resources/images/서명 흐름도.png" class="conprocess"></p>
            <p class="content-p">사장님이 간단하게 작성하고 알바생은 확인후 싸인만 하면 작성 끝</p>
             <p class="content-p">간단하게 계약 후 블록체인 네트워크에 저장 합니다.  </p>
             <p class="content-p">전자계약에 블록체인 네트워크 기반 암호기술을 적용한 SmartEContract 서비스로
			제3자의 개입이 없는 완벽하고 안전한 계약을 약속드립니다.</p>
             <p class="content-p">버튼을 통해 지금바로 알바생과의 계약을 시도 해보세요.</p>

            <!-- CTA -->
          
            <a href="${path}/wcontract" class="btn peach-gradient btn-md">
              	계약서 작성하기
              <i class="far fa-image ml-1"></i>
            </a>

          </div>
          <!--Grid column-->

        </div>
        <!--Grid row-->

      </section>
     </div>

=======
>>>>>>> branch 'master' of https://github.com/Nnagman/proalba.git

 <%--  <div class="contents">
    <div class="main maintop1">
      <div class="title">
        <h2>이 달의 알바</h2>
      </div>
      <div class="maintop1_con">

			<ul>	
        <li><a href="#">맥도날드 라이더 모집 ${공고글.제목}</a></li></ul>

      </div>
    </div>
    <div class="main maintop2">
      <div class="title">
        <h2>로그인</h2>
      </div>
      <form name="signUpForm" method="post" action="${path}/login/loginPost">
      <c:if test='${login.id == "" || login.id == null}'>
      <div class="login">
        <input type="text" id="userid" name="id" class="i_text" placeholder="ID" required>
        <br>
        <input type="password" id="passwd" name="password"  class="i_text" placeholder="PASSWORD" required>
        <br>
        <button type="submit" class="login_btn" id="login_btn" alt="로그인" name="login_btn">로그인</button>
        <div class="login_bot">
      		<a href="register">회원가입</a>
      	</div>
      </div>
      </c:if>
      <c:if test='${login.id != null}'>
      	<div class="ui vertical menu">
      		<div class="link item">
    			<a href="${path}/MyinfoModify" class="item">
    				회원정보 수정
  				</a>
  			</div>
		</div>
		<br/>
		<div class="ui vertical menu">
  			<div class="link item">
    			<a href="${path}/logout" class="item">
    				로그아웃
  				</a>
  			</div>
		</div>
      </c:if>
      </form>
    </div>
    <br>
    <div class="main mainbot1">
      <div class="title">
        <h2>알바 커뮤니티</h2>
        <i class="plus square outline icon"></i>
      </div>
      <div class="mainbot1_con">
      <c:forEach var="post" items="${커뮤니티리스트 }">
       <ul> <li><a href="#">알바 꿀팁 드림${커뮤니티.제목}</a></li></ul>
      </c:forEach>
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
      				<td>334,000원</td>
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
   
  </div> --%>
  
  
</body>
</html>
