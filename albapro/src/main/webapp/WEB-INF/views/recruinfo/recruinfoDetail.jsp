<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>
html, body, header, .carousel {
	height: 9vh !important;
}

.he-title {
	display: none !important;
}

.carousel-inner {
	display: none !important;
}

header {
	background-image: url("#") !important;
	background-color: yellow !important;
}

.recruinfo-title {
	text-align: center;
	margin-top: 50px;
}

.recruinfo-title-p {
	font-weight: 800;
}

.p.count {
	margin-top: 0px !important;
}

p {
	margin-bottom: 0px !important;
}

#JobCount div p.count {
	margin: 0 0 0 0 !important;
}

.jobSearch dl .data .tabForm li a {
	height: 34px !important;
}

.jobSearch dl .content .value span {
	height: 23px !important;
}

.recDetail-title{

width:200px !important;
}
.rec-update, .recDetail-title{

display: inline-block !important;
}


.title-line{
margin:100px 0 0 0 !important;
border-bottom:2px solid black !important;
height:40px !important;
}

.res-title{
margin: 20px 0 0 0;
text-align:center;
border-bottom:1px solid #D8D8D8 !important;
}

.com-line{
border-bottom:2px solid black !important;
padding: 0 0 10px 0;
}

.infotop-rogo{
width:300px;
height:200px;
display:inline-block;
position: absolute;
margin: 5px 0 0 20px;


}

.infotop{
width:70%;
height:200px;   
display:inline-block !important;
margin: 0 0 0 450px;
}

.infotop-ul{
list-style:none;
padding-inline-start: 0px !important;
margin: 20px 0 0 0;
}

.infotop h5{
margin: 25px 0 0 0 !important;
 
}

.subDe{
color:gray;
    margin: 30px 0 0 0;  
}

.infoQualify{
width:300px !important;

}
.infoContent{
width:600px !important;

}

.infoSub{
padding: 30px 60px 30px!important;

border-bottom:1px solid #D8D8D8 !important;
}

.infoQualify,.infoContent{
display:inline-block;
}

 .infoSub-div{
 padding:
 }
   
 
 .item{
 color : #999;
 }


.footer-logo{
width:100px;
}

.card-columns { @include media-breakpoint-only(lg) { column-count:4;
	
}



  




</style>
<body>
	<%@ include file="../include/header.jsp"%>
	<div class="container">
	<div class="title-line">
	<h4 class="recDetail-title">채용정보 상세보기</h4>
		<div class="rec-update">등록된: 
	
			<em>날짜</em>
		</div>	

	</div>
	
	<div class="res-title">
			<h1>공고 제목</h1>
		</div>
		
		<div class="com-line">
			<div class="infotop-rogo">
			   <img src="http://placehold.it/300x200"/>
			
			</div>
			<div class="infotop">
				<h5>기업명</h5>
				
				<ul class="infotop-ul">
					<li class="user">담당자</li>
					<li class="tel">TEL:번호</li>
					<li class="emailr">Email: 이매일</li>
					<li class="subDe">구직이 아닌 공고 등의 목적으로 연락처를 이용할 경우 법적 처벌을 받습니다.</li>
				</ul>
			</div> 
		</div>
		
		
		
		<div class="infoSub-div">
		<div class="infoSub infoJob">
			<div class="infoQualify">
			<h5>지원자격</h5>
				<ul class="infotop-ul">
					<li class="user"><span class="item">경력</span> 경력db</li>
					<li class="tel"><span class="item">연령</span> 연령db</li>
					<li class="emailr"><span class="item">학력</span>학력db</li>
				
				</ul>
			</div>
			<div class="infoContent divide">
			<h5>모집내용</h5>
			<ul class="infotop-ul">
					<li class="user"><span class="item">모집직종</span> 직종db</li>
					<li class="tel"><span class="item">고용형태</span> 고용db</li>
					<li class="emailr"><span class="item">모집인원</span>모집db</li>
				
				</ul>
			</div>
			
		</div>
		
		<div class="infoSub infoJob">
			<div class="infoQualify">
			<h5>근무조건</h5>
				<ul class="infotop-ul">
					<li class="user"><span class="item">근무기간</span> 기간db</li>
					<li class="tel"><span class="item">근무요일</span> 요일db</li>
					<li class="emailr"><span class="item">근무시간</span>시간db</li>
				
				</ul>
			
			
		</div>
	
	</div>
	
	<div class="infoSub infoJob">
			<div class="infoaddress">
		
				<ul class="infotop-ul">
					<li class="user"><span class="item">근무지주소</span> 주소db</li>
					<li>맵</li>
				
				</ul>
			
			
		</div>
	
	</div>
	
		<div class="infoSub infoJob">
			<div class="infoSalary">
		
				<ul class="infotop-ul">
					<li class="user"><span class="item">급여</span> 시급db</li>
					<li class="subDe">현재 최저시급은 8350 원 입니다.</li>
				
				</ul>
			
			
		</div>
	
	</div>
	
	
	
	<div class="infoSub infoJob">
			<div class="infoSalary">
		
				<ul class="infotop-ul">
					<li class="user"><span class="item">지원방법</span> 지원db</li>
					
				
				</ul>
			
			
		</div>
	
	</div>
	

	
	
</div>


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