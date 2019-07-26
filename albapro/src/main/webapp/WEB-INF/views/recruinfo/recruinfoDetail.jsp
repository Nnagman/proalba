<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로알바</title>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="resources/css/recruinfo/sub.css">
    <link rel="stylesheet" href="resources/css/recruinfo/recruinfoCus.css">
    
    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
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
	background-color: #5D5D5D !important;
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
font-weight: 540 !important;
 
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

.infoSubEnd{
padding: 30px 60px 30px!important;


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

#map{
margin: 20px 0 0 0;
}


.minpay2{
color:red;
}

h5{
font-weight: 550 !important;
}

.card-columns { @include media-breakpoint-only(lg) { column-count:4;
	
}



  




</style>
<body>
	<%@ include file="../include/header.jsp"%>
	<div class="container">
	<div class="title-line">
	<h4 class="recDetail-title">채용정보 상세보기</h4>
		<div class="rec-update">
	
			<em>등록된 날짜:${list[0].n_code_date}</em>
		</div>	

	</div>
	
	<div class="res-title">
			<h1>${list[0].title}</h1>
		</div>
		
		<div class="com-line">
			<div class="infotop-rogo">
			<!--    <img src="#"/> -->
			<!-- http://placehold.it/300x200 -->
			</div>
			<div class="infotop">
				<h5>${list[0].work_place_name}</h5>
				
				<ul class="infotop-ul">
					<li class="user">담당자: ${list[0].name}</li>
					<li class="tel">TEL: ${list[0].phone}</li>
					<li class="emailr">Email: ${list[0].email}</li>
					<li class="subDe">구직이 아닌 공고 등의 목적으로 연락처를 이용할 경우 법적 처벌을 받습니다.</li>
				</ul>
			</div> 
		</div>
		
		
		
		<div class="infoSub-div">
		<div class="infoSub infoJob">
			<div class="infoQualify">
			<h5>지원자격</h5>
				<ul class="infotop-ul">
					<li class="career"><span class="item">경력</span> ${list[0].career}</li>
					<li class="age"><span class="item">연령</span> ${list[0].age}</li>
					<li class="education"><span class="item">학력</span> ${list[0].education}</li>
				
				</ul>
			</div>
			<div class="infoContent divide">
			<h5>모집내용</h5>
			<ul class="infotop-ul">
					<li class="job_type"><span class="item">모집직종</span> ${list[0].job_type}</li>
					<li class="employment_type"><span class="item">고용형태</span> ${list[0].employment_type}</li>
					<li class="personnel"><span class="item">모집인원</span> ${list[0].personnel}명</li>
				
				</ul>
			</div>
			
		</div>
		
		<div class="infoSub infoJob">
			<div class="infoQualify">
			<h5>근무조건</h5>
				<ul class="infotop-ul">
					<li class="term"><span class="item">근무기간</span> ${list[0].term}개월</li>
					<li class="work_day"><span class="item">근무요일</span> ${list[0].work_day}</li>
					<li class="work_time"><span class="item">근무시간</span> ${list[0].work_time1} ~ ${list[0].work_time2}</li>
				
				</ul>
			
			
		</div>
	
	</div>
	
	<div class="infoSub infoJob">
			<div class="infoaddress">
				<h5>근무지위치</h5>
				<ul class="infotop-ul">
					<li class="address" ><span class="item">근무지주소</span> <span id="address">${list[0].address}</span> </li>
					<li><div id="map" style="width: 100%; height: 350px;" class="map"></div></li>
				
				</ul>
			
			
		</div>
	
	</div>
	
		<div class="infoSub infoJob">
			<div class="infoSalary">
			<h5>시급</h5>
				<ul class="infotop-ul">
					<li class="salary"><span class="item">시급</span> ${list[0].hour_wage}원</li>
					<li class="minpay">현재 최저시급은 <span class="minpay2">8350</span> 원 입니다.</li>
				
				</ul>
			
			
		</div>
	
	</div>
	
	
	
	<div class="infoSubEnd infoJob">
			<div class="infoSalary">
					<h5>지원</h5>
				<ul class="infotop-ul">
					<li class="way">
						<span class="item">지원방법</span> ${list[0].way}
						<c:if test="${fn:substring(login.m_code,0,1) == 'p' && login.m_code != null && list[0].way == '온라인접수'}">
							<a class="btn btn-default btnn" href="http://localhost:8080/apply?id=${login.id}&&n_code=${list[0].n_code}" onclick="window.open(this.href, '_blank', 'width=500px,height=800px,toolbars=no,scrollbars=no'); return false;" role="button" style="padding:10px; font-weight:600;">지원하기</a>
						</c:if>
					</li>	
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

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=30778415e99d74364ec3cdbc2fd242bf&libraries=LIBRARY"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=30778415e99d74364ec3cdbc2fd242bf&libraries=services"></script>
   <script src="//dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
   var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
   mapOption = {
       center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
       level: 3 // 지도의 확대 레벨
   };  
   //지도를 생성합니다    
   var map = new daum.maps.Map(mapContainer, mapOption); 
</script>
<script>
   $(document).ready(function(){
      var address1 = $('#address').text();   
      console.log(address1);
      // 주소-좌표 변환 객체를 생성합니다
      var geocoder = new daum.maps.services.Geocoder();
      // 주소로 좌표를 검색합니다
      geocoder.addressSearch(address1, function(result, status) {
          // 정상적으로 검색이 완료됐으면 
          if (status === daum.maps.services.Status.OK) {
             var coords = new daum.maps.LatLng(result[0].y, result[0].x);   
              // 결과값으로 받은 위치를 마커로 표시합니다
              var marker = new daum.maps.Marker({ map: map, position: coords });
              // 인포윈도우로 장소에 대한 설명을 표시합니다
              var infowindow = new daum.maps.InfoWindow({ content: '<div style="width:150px;text-align:center;padding:6px 0;">매장위치</div>' });
              infowindow.open(map, marker);
              // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
              map.setCenter(coords);
          } 
      });
   });
</script>

</body>
</html>