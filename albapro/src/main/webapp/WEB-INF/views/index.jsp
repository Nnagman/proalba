<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>프로알바</title>
<link rel="stylesheet" href="resources/css/index.css?ver=2" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:700&display=swap&subset=korean" rel="stylesheet">
<%@ include file = "include/header.jsp" %>	

</head>
<body>

  


    <div class="container">

      <!--Section: Main info-->
      <section class="mt-5 wow fadeIn">

        <!--Grid row-->
        <div class="row">

          <!--Grid column-->
          <div class="col-md-6 mb-4">
 
            <%-- <img src="${path}/resources/images/전자서명test.jpg" class="img-fluid z-depth-1-half"
              alt="">  --%>
              
                 <video width="400" controls class="img-fluid z-depth-1-half video1" autoplay>
  <source src="${path}/resources/images/contractimg/서명테스트.mp4" type="video/mp4">

</video>
            



  <div class="carousel-inner">
  

    <div class="carousel-item active">
 
   
  
    
  </div>
   <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

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
      
        <hr class="my-5">

      <!--Section: Main features & Quick Start-->
      <section>

        <h3 class="h3 text-center mb-5">다양하게 제공되는 서비스</h3>

  <div class="row">
    <div class="col con2-div-p">
      <i class="fas fa-file-contract con2-icon"></i><br><Br>
  	간단한 근로 계약
    </div>
    <div class="col con2-div-p">
    <i class="fas fa-user-clock con2-icon"></i><br><Br>
    근로시간에 따른 급여 계산
    </div>
    <div class="col con2-div-p">
     <i class="fas fa-cubes con2-icon"></i><Br><Br>
     블록체인으로 저장되는 경력
    </div>
  </div>
  <div class="row">
    <div class="col con2-div-p">
     <i class="fas fa-fingerprint con2-icon"></i><br><Br>
    	지문인식을 통한 출석 체크
    </div>
    <div class="col con2-div-p">

  	  <i class="far fa-handshake con2-icon"></i><br><Br>
       확실한 급여 계산
    </div>
    <div class="col con2-div-p">
     <i class="far fa-calendar-alt con2-icon"></i><br><br>
    	알바생의 근태 관리
    </div>
  </div>
 </section>
 
   <hr class="mb-5">

      <!--Section: More-->
         <section class="mt-5 wow fadeIn">

        <!--Grid row-->
        <div class="row">

          <!--Grid column-->
          <div class="col-md-6 mb-4">

            <img src="${path}/resources/images/그림1.png" 
              alt="" style="width:500px;">

          </div>
          <!--Grid column-->

          <!--Grid column-->
          <div class="col-md-6 mb-4 content-div">

            <!-- Main heading -->
            <h3 class="h3 mb-3 content-p3">믿어셔도 됩니다 .</h3>
         
           
            <!-- Main heading -->

            <hr>
			
            <p class="content-p">사장님과 알바생의 근로계약서와 알바생의 경력 사항이 블록체인 네트워크에</p>
             <p class="content-p">저장되어 근로계약의 신빙성있는 증거 자료 사장님도 의심없이 믿을 수 있는</p>
             <p class="content-p">알바생의 경력 사항입니다.</p>
             <p class="content-p">서로 의심없는 근로 계약 하세요!</p>

            <!-- CTA -->

          </div>
          <!--Grid column-->

        </div>
        <!--Grid row-->

      </section>
 
 
  
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
