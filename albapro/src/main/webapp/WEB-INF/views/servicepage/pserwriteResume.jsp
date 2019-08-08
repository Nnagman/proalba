<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>


<script type="text/javascript"
	src="http://www.google-analytics.com/plugins/ua/ecommerce.js"></script>

<head>
<title>프로알바</title>


<link rel="stylesheet" href="resources/css/recruinfo/job.css">
<link rel="stylesheet" href="resources/css/recruinfo/jobgoods.css">
<link rel="stylesheet" href="resources/css/recruinfo/sub.css">
<link rel="stylesheet" href="resources/css/recruinfo/recruinfoCus.css">
 
     <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
 
  <link href="resources/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/css/mdb.min.css" rel="stylesheet">
    <link href="resources/css/style.css" rel="stylesheet">
     <link href="resources/css/datatables.min.css" rel="stylesheet">
     <link href="resources/css/resume.css?ver=1" rel="stylesheet">




<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
 
 


<script type="text/javascript" src="resources/js/recruinfo/test7.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test8.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test9.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test10.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test11.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test12.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test13.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test14.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test15.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test16.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test17.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test18.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test19.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test20.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test21.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/test21.js"></script>
<script type="text/javascript" src="resources/js/recruinfo/recruinfoCus.js"></script>







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
	padding-top: 5px !important;
	vertical-align: middle !important;
	margin: 0;
	
}

.jobSearch dl .content .value span {
	height: 23px !important;
}

.placho-line1{
	margin: 0 !important;	
}

.recruinfo-list{
width:100%;
}

.recruinfo-table{

    position: relative;
    width: 100%;
    margin: 0;
    padding: 0;
    font-family: 'Malgun Gothic';
    letter-spacing: -1px;
    border-top: 1px solid #aaa;
}

.recruinfo-table th{

text-align:left !important;
    font-weight: bold;
    text-align: -internal-center;
    display: table-cell;
    vertical-align: inherit;
}

thead {
    display: table-header-group;
    vertical-align: middle;
    border-color: inherit;
}



tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}

tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}

.recruinfo-list table tr th {
    padding: 9px 0 10px;
    padding: 11px 0 8px\0;
      padding-left: 15px;
    line-height: 1;
    color: #666a5b;
    background-color: #f2f2f2;
    border: 0px solid !important;
    border-bottom: 1px solid #b5b5b5 !important;
}

.recruinfo-list table tr td {
    padding: 12px 0;
    line-height: 1;
    text-align: left;
    color: #474747;
     border: 0px solid !important;
    border-bottom: 1px solid #e4e4e4 !important;
        padding-left: 15px;
       
}

.recruinfo-list table tr td.local {
    width: 13rem;
    padding-left: 15px;
    
}

div.dataTables_filter label{
float: right;
margin-right: 40px;
}

.jobcho-line1{
text-align: center;
}

.company{
    display: block;
    height: auto;
    padding: 2px 0 6px !important;
    font-size: 13px;

    background: none !important;
    color: #0075ab;
}

.recruinfo-list .title a span {
    position: relative;
    overflow: hidden;
  
    
 
    font-family: tahoma;
    line-height: 12px;
    vertical-align: top;
    white-space: nowrap;
    cursor: pointer;
    text-align: left;

}


#Example_info{
display:none;
}

#Example_paginate{
float:left;
}

.navbar{
padding-right:0 !important;
}

footer{
top:300px;
    position: relative;
}

form{
padding:0 0 0 50px !important;
}
header{
height:80px !important;
}

</style>

<body>
	<%@ include file="../include/header.jsp"%>




	<div class="container">
		<div class="recruinfo-title">
			<h2 class="recruinfo-title-p">이력서 등록</h2>
		</div>
		<br><br>

<!-- 		<div id="JobCount">
			<div class="all">
				<p class="title1">전체 채용공고</p>
				<p class="count">
				</p>
			</div>


		</div>
 -->
		<div id="SubContents">

			<!-- Job Count -->

			<!-- //Job Count -->

			<!-- 상단검색 S//-->


			<input type="hidden" id="WsSrchKeywordWord" name="WsSrchKeywordWord"
				value=""> <input type="hidden" id="hidschContainText"
				name="hidschContainText" value=""> <input type="hidden"
				id="hidWsearchInOut" name="hidWsearchInOut" value="">
			<!-- base hidden parameter -->
			<input type="hidden" id="hidSort" name="hidSort" value=""> <input
				type="hidden" id="hidSortOrder" name="hidSortOrder" value="">
			<input type="hidden" id="hidSortDate" name="hidSortDate" value="">
			<input type="hidden" id="hidListView" name="hidListView" value="LIST">
			<input type="hidden" id="hidSortCnt" name="hidSortCnt" value="50">
			<input type="hidden" id="hidSortFilter" name="hidSortFilter"
				value="Y"> <input type="hidden" id="hidJobKind"
				name="hidJobKind" value=""> <input type="hidden"
				id="hidJobKindMulti" name="hidJobKindMulti" value=""> <input
				type="hidden" id="page" name="page" value="1"> <input
				type="hidden" id="hidSearchyn" name="hidSearchyn" value="N">
			<input type="hidden" id="strAreaMulti" name="strAreaMulti" value="">
			<input type="hidden" id="schtext" name="schtext" value="">

			<div class="jobSearch" id="JobSearch">


				<!-- 기본검색 -->


				<!-- <div class="base">


					<!-- 지역 -->
			<!--		<dl class="area">
						<dt class="item">지역</dt>
						 <dd class="content">
							<a href="#" class="blank">지역을 선택하세요 (최대 5개 선택가능)</a>
						</dd>
						<dd class="data" style="display: block;">
							<ul id="ulAreacd" class="tabForm">
								<li id="02" class="odd"><a href="#"
									onclick="JOBSEARCH.fnsetGugun('02', '서울');">서울</a></li>
								<li id="051"><a href="#"
									onclick="JOBSEARCH.fnsetGugun('051', '부산');">부산</a></li>
								<li id="053" class="odd on"><a href="#"
									onclick="JOBSEARCH.fnsetGugun('053', '대구');">대구</a></li>
								<li id="032"><a href="#"
									onclick="JOBSEARCH.fnsetGugun('032', '인천');">인천</a></li>
								<li id="062" class="odd"><a href="#"
									onclick="JOBSEARCH.fnsetGugun('062', '광주');">광주</a></li>
								<li id="042"><a href="#"
									onclick="JOBSEARCH.fnsetGugun('042', '대전');">대전</a></li>
								<li id="052" class="odd"><a href="#"
									onclick="JOBSEARCH.fnsetGugun('052', '울산');">울산</a></li>
								<li id="044"><a href="#"
									onclick="JOBSEARCH.fnsetGugun('044', '세종');">세종</a></li>
								<li id="031" class="odd last"><a href="#"
									onclick="JOBSEARCH.fnsetGugun('031', '경기');">경기</a></li>
								<li id="055"><a href="#"
									onclick="JOBSEARCH.fnsetGugun('055', '경남');">경남</a></li>
								<li id="054" class="odd"><a href="#"
									onclick="JOBSEARCH.fnsetGugun('054', '경북');">경북</a></li>
								<li id="041"><a href="#"
									onclick="JOBSEARCH.fnsetGugun('041', '충남');">충남</a></li>
								<li id="043" class="odd"><a href="#"
									onclick="JOBSEARCH.fnsetGugun('043', '충북');">충북</a></li>
								<li id="061"><a href="#"
									onclick="JOBSEARCH.fnsetGugun('061', '전남');">전남</a></li>
								<li id="063" class="odd"><a href="#"
									onclick="JOBSEARCH.fnsetGugun('063', '전북');">전북</a></li>
								<li id="033"><a href="#"
									onclick="JOBSEARCH.fnsetGugun('033', '강원');">강원</a></li>
								<li id="064" class="odd"><a href="#"
									onclick="JOBSEARCH.fnsetGugun('064', '제주');">제주</a></li>
								<li id="99" class="last"><a href="#"
									onclick="JOBSEARCH.fnsetGugun('99', '전국');">전국</a></li>
							</ul>
							<ul id="ulGugun" class="inputWrap">
								<li></li>
							</ul>
							<ul id="ulDong" class="inputWrap dongWrap" style="display: none;">
								<li></li>
							</ul>
							<a href="#" class="dataCloseBtn">선택영역 닫기</a>
						</dd>
					</dl> -->

					<!-- 지역 
				</div>	-->

<!-- 	작동 x 
				<div class="jobcho-line1">
					직종/업무:
					<div class="jobchoice"></div>

					<button type="button" class="btn btn-primary jobchoice-btn" data-toggle="modal" onclick="jsonout()" data-target="#basicExampleModal">
					전체카테고리
					</button>
				</div>
					 -->
		
					
			</div>


<form action="${path}/writeResume" id="form" method="post">

							<div class="col-md-12">

								<h2><span class="necessary">필수</span>개인정보</h2>
								<span class="comment">개인정보는 비공개로 설정하셔도 입사지원시 지원업체에 공개됩니다.</span>
								<hr/>
								<div id="RegistBaseInfo" class="registArea">
									<div class="guide">사진을 드래그해서 올려주세요.</div>
									<div class="photoArea" id="photoArea">
										<span class="photo" id="photo"></span>
									</div>
									<div class="baseInfo">
										<table cellpadding="0" cellspacing="0" summary="개인정보인 휴대폰,유선전화,안심번호,이메일,주소,홈페이지 항목의 표입니다.">
											<tbody>
												<tr>
													<td class="item">휴대폰</td>
													<td class="infoContents hpNumber">
														<div class="contentsBox">
															<span class="number" id="idResumeHtel">${login.phone}</span>
															<input type="hidden" name="id" value="${login.id}"/>
														</div>
													</td>
												</tr>
												<tr>
													<td class="item">이메일</td>
													<td class="infoContents userEmail">
														<div class="contentsBox">
															${login.email}
														</div>
													</td>
												</tr>
												<tr>
													<td class="item">우편번호</td>
													<td class="infoContents address">
														<div class="contentsBox">
															<span class="shortText">
																<input type="hidden" id="hidaddress1" value="">
																<input type="hidden" id="sample6_extraAddress" placeholder="참고항목"/>
																<input type="text" id="sample6_postcode" placeholder="우편번호" style="width:100px"/>
																<input type="button" onclick="execDaumPostcode()" value="주소 찾기" class="adr-btn"/>
															</span>
														</div>
													</td>
												</tr>
												<tr>
													<td class="item">주소</td>
													<td class="infoContents address">
														<div class="contentsBox">
															<span class="shortText">
																<input type="text" id="sample6_address" class="sample6_address" placeholder="주소" name="c_address"/>
															</span>
														</div>
													</td>
												</tr>
												<tr>
													<td class="item">상세주소</td>
													<td class="infoContents address">
														<div class="contentsBox">
															<span class="shortText">
																<input type="text" id="sample6_detailAddress" placeholder="상세주소"/>
																<input type="hidden" id="address" name="address" value=""/>
															</span>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								
								<div id="RegistTitle" class="registArea" style="padding:250px 72px 20px;">
									<h2><span class="necessary">필수</span>이력서 제목</h2>
									<div class="registForm registForm--title">
										<input type="text" id="title" name="title" maxlength="25"/>
										<label for="title">이력서 제목 (최대 25자)</label>
									</div>
								</div>
								
								<div id="RegistEducation" class="registArea" style="">
									<h2>학력</h2>
									<table style="width:100%">
										<tbody>
											<tr>
												<td><p>    </p></td>
												<td><p>학교명</p></td>
												<td><p>졸업일</p></td>
												<td><p>전공</p></td>
												<td><p>졸업여부</p></td>
											</tr>
											<tr id="high_school">
												<td><p>고등학교</p></td>
												<td><input type="text" class="high_school"/></td>
												<td><input type="text" class="high_school"/></td>
												<td><input type="text" class="high_school"/></td>
												<td><input type="text" class="high_school"/></td>
											</tr>
											<tr id="college">
												<td><p>대 학(2,3년제)</p></td>
												<td><input type="text" class="college"/></td>
												<td><input type="text" class="college"/></td>
												<td><input type="text" class="college"/></td>
												<td><input type="text" class="college"/></td>
											</tr>
											<tr id="university">
												<td><p>대학교(4년제)</p></td>
												<td><input type="text" class="university"/></td>
												<td><input type="text" class="university"/></td>
												<td><input type="text" class="university"/></td>
												<td><input type="text" class="university"/></td>
											</tr>
											<tr id="graduate_school">
												<td><p>대학원</p></td>
												<td><input type="text" class="graduate_school"/></td>
												<td><input type="text" class="graduate_school"/></td>
												<td><input type="text" class="graduate_school"/></td>
												<td><input type="text" class="graduate_school"/></td>
											</tr>
										</tbody>
									</table>
									<div id="RegistEduResult" class="resultForm1">						
										<!-- // 일반이력서 셀렉트 -->
										<input type="hidden" id="education" name="education" value=" "/>									
									</div>
								</div>
								
								<div id="RegistCareer" class="registArea" style="">
									<h2>경력 </h2>
									<table style="width:100%">
										<tbody>
											<tr>
												<td><p>근무지</p></td>
												<td><p>입사일</p></td>
												<td><p>퇴사일</p></td>
											</tr>
											<c:forEach var="row" items="${careers}" >
												<tr>
													<td>${row.work_place}</td>
													<td><fmt:formatDate value="${row.join_date}" pattern="yyyy-MM-dd"/></td>
													<td><fmt:formatDate value="${row.end_date}" pattern="yyyy-MM-dd"/></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								
								<div id="RegistLicense" class="registArea" style="">
									<h2>자격증</h2>
					
									<div id="RegistLicenseResult" class="resultForm2">
										
									</div>
					
									<div id="licensebase" class="registForm">
										<ul class="inputArea">
											<li>
												<input type="text" id="licensenm0" name="licensenm0" placeholder="자격증 명" style="width:373px" maxlength="20" class="ui-autocomplete-input" autocomplete="off">
												<input type="text" id="organ0" name="organ0" placeholder="발행처" maxlength="20" style="width:170px">
												<input type="text" id="certificateyyyy0" name="certificateyyyy0" placeholder="취득년도" maxlength="4" style="width:170px;margin-right:0">
												<input type="hidden" id="licensecd0" name="licensecd0">
												<input type="hidden" id="license" name="license">
												<span class="tip message"><em></em></span>
											</li>
										</ul>
										<p class="formBtn">
											<a href="#" class="btn whiteBtn" onclick="hideLicense(); return false;">취소</a>
											<a href="#" class="btn grayBtn" onclick="addLicense(0); return false;">자격증저장</a>
											<span class="saveAlert"></span>
										</p>
									</div>
									<span class="bottomBtn"><a href="#" class="btn blueBtn addInfoBtn" onclick="showLicense(); return false;" style="display: none;"><em></em>자격증 추가</a></span>
								</div>
								
								<div id="RegistIntroduce" class="registArea">
									<h2><span class="necessary">필수</span>자기소개서</h2>
									<div class="registForm">
										<!-- 자유양식 -->
										<div id="FreeDoc" class="introduceWrap">
											<div class="resizable-textarea">
												<span>
													<textarea id="resumeContents" name="content" cols="30" rows="10" class="processed"></textarea>
												</span>
											</div>
										</div>
										<!-- //자유양식 -->
									</div>
								</div>
								<input type='button' class="submitbtn" value="작성완료" id="submit2"/>
							</div>
						</form>


		
		
<!-- 부트스트랩 희망직종 새화면 띄우기 -->

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">직종선택</h4>
        </div>
        <div class="modal-body">
        <div class="modal_container">
          <div class="div_sel_job">
          
         <!--  <table>
          
          	<tr>
          		<td>경영 사무(1)</td>
          	</tr>
          
          	<tr>
          		<td>영업 고객상담(2)</td>
          	</tr>
          	
          	<tr>
          		<td>IT 인터넷(4)</td>
          	</tr>
          	
          	<tr>
          		<td>전문직(5)</td>
          	</tr>
          	
          	<tr>
				<td>서비스(11)</td>          	
          	</tr>
          	
          	<tr>
          		<td>경영 사무(1)</td>
          	</tr>
          </table> -->
          <div class="list-group">

  <ul>
  <li class="list-group-item">Dapibus ac facilisis in</li>
   <li class="list-group-item">Dapibus ac facilisis in</li>
    <li class="list-group-item">Dapibus ac facilisis in</li>
    <li class="list-group-item">Dapibus ac facilisis in</li>
  </ul>
</div>
         
        </div>
         <div class="div_sel_job1">
         	<Table class="table_job_detail">
         	 
         	 <tr>
         	 	<td><input type="checkbox" value="all"/>전체</td> <td><input type="checkbox" value="shop_manager"/>매장관리 판매</td> <td><input type="checkbox" value="serving"/>서빙</td>
         	 	
         	 </tr>
         	 
         	 <Tr>
         	 <td><input type="checkbox" value="all"/>전체</td> <td><input type="checkbox" value="shop_manager"/>매장관리 판매</td> <td><input type="checkbox" value="serving"/>서빙</td>
         	 </Tr>
         	 <tr>
         	 <td><input type="checkbox" value="all"/>전체</td> <td><input type="checkbox" value="shop_manager"/>매장관리 판매</td> <td><input type="checkbox" value="serving"/>서빙</td>
         	 </tr>
         	</Table>
         </div>
       </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
	</form>

   



   </div>
   
   </div>
   
   




<!-- 작동 x 
Modal 직종 
<div class="modal fade" id="basicExampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">직종선택</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       	<div class="jobcho1"></div>
					<div class="jobcho2"></div>
					<div class="jobcho3-title">선택된 직종</div>
					<div class="jobcho3"></div>
					<button class="btn-sejob" data-dismiss="modal">선택 완료</button>
					<button class="btn-remove">모두지우기</button>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary btn-sejob" data-dismiss="modal">선택완료</button>
        <button type="button" class="btn btn-primary btn-remove">모두지우기</button>
      </div>
    </div>
  </div>
</div>
 -->


<!-- Modal 지역 -->
<div class="modal fade" id="ExampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">직종선택</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       		<div class="placho1"></div>
		<div class="placho2"></div>		
			<div class="jobcho3-title">선택된 지역</div>
			<div class="placho3"></div>
		
					<!-- <button class="btn-sejob" data-dismiss="modal">선택 완료</button>
					<button class="btn-remove">모두지우기</button> -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary btn-plsejob" data-dismiss="modal" >선택완료</button>
        <button type="button" class="btn btn-primary btn-plremove">모두지우기</button>
      </div>
    </div>
  </div>
</div>

<!-- Modal 지역 -->

 <script type="text/javascript" src="resources/js/jquery-3.4.0.min.js"></script> 
   


    <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->

  <script type="text/javascript" src="resources/js/popper.min.js"></script>
  <script type="text/javascript" src="resources/js/mdb.min.js"></script>
  <script type="text/javascript" src="resources/js/datatables.min.js"></script>
     	<script type="text/javascript" src="resources/js/common.js"></script>
     	  <script src="//dmaps.daum.net/map_js_init/postcode.v2.js"></script>
  
   <script type="text/javascript">
 
	$(document).ready(function () {
		$('#Example').DataTable({
			"paging": true, // false to disable pagination (or any other option)
			"order": [[ 4, "desc" ]]
		});
		$('.dataTables_length').addClass('bs-select');
	});
	
	$('#ulGugun').on('click',function(){
		console.log($('.value > span').text());
	});

  </script>
  
  
  
  
<script>



 function plasearch() {
	
	var search =$('#plachoice').val();


	console.log(search); 

	var table =$('#Example').dataTable();
	table.fnFilter(search);
	

};  

</script>
  
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
  
			

 
 	<script>
	   	$(document).ready(function(){
	   		
	   		// 파일 업로드 영역에서 기본효과를 제한
	   		$(".photoArea").on("dragenter dragover", function(e){
	   			e.preventDefault(); // 기본효과 제한
	   		});
	   		
	   		$(".photoArea").on("drop", function(e){
	   			console.log(e);
	   			e.preventDefault(); // 기본효과 제한
	   			var files = e.originalEvent.dataTransfer.files; // 드래그한 파일들
	   			//console.log(files);
	   			var file = files[0]; // 첫번째 첨부파일
	   			var formData = new FormData(); // 폼데이터 객체
	   			formData.append("file", file); // 첨부파일 추가
	   			$.ajax({
	   				url: "${path}/upload/uploadAjax",
	   				type: "post",
	   				data: formData,
	   				dataType: "text",
	   				processData: false, // processType: false - header가 아닌 body로 전달
	   				contentType: false,
	   				success: function(data){
	   					var checkImg = checkImageType(data);
	   					console.log("checkIMG : "+checkImg);
	   					if(checkImg == null){
	   						console.log("이미지가 아님");
	   						alert("이미지를 등록해주세요.");
	   						return;
	   					}
	   					
	   					if($(".file").val() != undefined){
	   						alert("이미지는 한 개만 등록가능 합니다.");
	   						return;
	   					}
	   					
	   					console.log("file_data: "+data);
	   					//첨부 파일의 정보
	   					var fileInfo = getFileInfo(data);
	   							
	   					// hidden 태그 추가
	   					var html = "<div id='inputed_img'><input type='hidden' class='file' name='file_name' value='"+fileInfo.fullName+"'>";
	   					// 미리보기 추가
	   					html += "<img class='attImg' style='width:180px; height:235px;' src='<spring:url value='/resources" + fileInfo.fullName+ "'/>'/></div>";
	   					//삭제 태그 추가 
	   					var del_btn = "<a href='#' class='file_del' data-src='"+fileInfo.fullName+"'>[삭제]</a>";
	   					// div에 추가
	   					$("#photo").append(html);
	   					$("#photoArea").append(del_btn);
	   					console.log($('.file').val());
	   				}
	   			});
	   		});
	   		
	   		$("#photoArea").on("click", ".file_del" , function(e){
	   			var that = $(this);
	   			$.ajax({
	   				type: "post",
	   				url: "${path}/upload/deleteWriteFile",
	   				data: {fileName:$(this).attr("data-src")},
	   				dataType: "text",
	   				success: function(result){
	   					if(result=="deleted"){
	   						$("#inputed_img").remove();
	   						$(".file_del").remove();
	   					}
	   				}
	   			});
	   		});
	   		
	   		$("#submit2").on("click", function(){
	   			var address = $("#sample6_postcode").val();
	   			address += "/" + $("#sample6_address").val();
	   			address += "/" + $("#sample6_detailAddress").val();
	   			
	   			var high_school = document.getElementsByClassName("high_school")[0].value + " ";
	   			high_school += "+" + document.getElementsByClassName("high_school")[1].value + " ";
	   			high_school += "+" + document.getElementsByClassName("high_school")[2].value + " ";
	   			high_school += "+" + document.getElementsByClassName("high_school")[3].value + " ";
	   			
	   			var college = document.getElementsByClassName("college")[0].value + " ";
	   			college += "+" + document.getElementsByClassName("college")[1].value + " ";
	   			college += "+" + document.getElementsByClassName("college")[2].value + " ";
	   			college += "+" + document.getElementsByClassName("college")[3].value + " ";
	   			
	   			var university = document.getElementsByClassName("university")[0].value + " ";
	   			university += "+" + document.getElementsByClassName("university")[1].value + " ";
	   			university += "+" + document.getElementsByClassName("university")[2].value + " ";
	   			university += "+" + document.getElementsByClassName("university")[3].value + " ";
	   			
	   			var graduate_school = document.getElementsByClassName("graduate_school")[0].value + " ";
	   			graduate_school += "+" + document.getElementsByClassName("graduate_school")[1].value + " ";
	   			graduate_school += "+" + document.getElementsByClassName("graduate_school")[2].value + " ";
	   			graduate_school += "+" + document.getElementsByClassName("graduate_school")[3].value + " ";
	   			
	   			var education = high_school + "/" + college + "/" + university + "/" + graduate_school;
	   			$("#education").val(education);
	   			
	   			var license_length =  document.getElementsByClassName("license_input").length;
	   			var license = "";
	   			
	   			for(var i=0 ; i<license_length-1; i++){
	   				license +=  document.getElementsByClassName("license_input")[i].value + "+";
	   			}
	   			
	   			if(license_length != 0){
	   				license +=  document.getElementsByClassName("license_input")[license_length-1].value;
	   			}
	   			
	   			$("#license").val(license);
	   			$("#address").val(address);
	   			$("#form").append("<input type='submit' id='submit'>");
	   			$("#submit").trigger("click");
	   		});
	   	});
		
   		function execDaumPostcode(){
   			new daum.Postcode({
   				oncomplete: function(data) {
   					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
   					// 각 주소의 노출 규칙에 따라 주소를 조합한다.
   					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
   					var addr = ''; // 주소 변수
   					var extraAddr = ''; // 참고항목 변수
   					
   					//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
   					if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
   							addr = data.roadAddress;
   					} else { 
   							// 사용자가 지번 주소를 선택했을 경우(J)
   							addr = data.jibunAddress;
   					}
   					
   					// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
   					if(data.userSelectedType === 'R'){
   						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
   						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
   						if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
   							extraAddr += data.bname;
   						}
   						
   						// 건물명이 있고, 공동주택일 경우 추가한다.
   						if(data.buildingName !== '' && data.apartment === 'Y'){
   							extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
   						}
   						
   						// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
   						if(extraAddr !== ''){
   							extraAddr = ' (' + extraAddr + ')';
   						}
   						
   						// 조합된 참고항목을 해당 필드에 넣는다.
   						document.getElementById("sample6_extraAddress").value = extraAddr;
   					} else {
   						document.getElementById("sample6_extraAddress").value = '';
   					}
   					
   					// 우편번호와 주소 정보를 해당 필드에 넣는다.
   					document.getElementById('sample6_postcode').value = data.zonecode;
   					document.getElementById("sample6_address").value = addr;
   					
   					// 커서를 상세주소 필드로 이동한다.
   					document.getElementById("sample6_detailAddress").focus();
   				}
   			}).open();
   		}
   	</script>
   	
   	<script type="text/javascript">
   	//자격증
	function Licenseautocomplete(row){
		$( "#licensenm"+row ).autocomplete({
			source: function( request, response ) {
				$.ajax({
					url: "/rsc/lib/resume/LicenseListJSON.asp?licensenm="+$( "#licensenm"+row).val(),
					dataType: "json",
					//contentType: "application/x-www-form-urlencoded; charset=EUC-KR",
					success: function( data ) {
						if (data.count != 0) {
							response( $.map( data.licenseList, function( item ) {
								return {
									label: item.licenseName.toLowerCase().replace($("#licensenm"+row ).val().toLowerCase(),"" + $("#licensenm"+row).val().toLowerCase() + ""),
									value: item.licenseName,
									licenseCd:item.licenseCd,
									organ:item.organ,
									licenseName:item.licenseName
								}
							}));
						} else {
							$('#licensecd'+row).val("");
							$('#organ'+row).val("");
							$('#organ'+row).attr("readonly", false);
						}
					}
				});
			},
			minLength: 2,
			focus: function( event, ui ) {	//포커싱 막기위해 추가 (2013-11-15 김지훈)
				return false;
			},
			select: function( event, ui ) {
				var rowNum = parseInt($("div[id^='divLicense']").length, 0);
				for (var i = 1; i <= rowNum; i++) {
					if (ui.item.licenseName == $("#licensenm"+i).val() && i != row) {
						alert("동일한 자격증은 중복 등록할 수 없습니다.");
						$('#licensecd'+row).val("");
						$('#licensenm'+row).val("");
						$('#organ'+row).val(""); //ui.item.organ
						return false;
					}
				}
				// 사이버진흥원 자격증 체크
				rowNum = parseInt($("div[id^='divCertLicense']").length, 0);
				for (var i = 1; i <= rowNum; i++) {
					if (ui.item.licenseName == $("#cert_licensenm" + i).val() && i != row) {
						alert("동일한 자격증은 중복 등록할 수 없습니다.");
						$('#licensecd'+row).val("");
						$('#licensenm'+row).val("");
						$('#organ'+row).val(""); //ui.item.organ
						return false;
					}
				}
				$('#licensecd'+row).val(ui.item.licenseCd);
				$('#licensenm'+row).val(ui.item.licenseName);
				$('#organ'+row).val(ui.item.organ); //ui.item.organ
				$('#organ'+row).attr("readonly", true);
			},
			open: function() {
				$( this ).autocomplete("widget").css("z-index","9999");
				$( this ).autocomplete("widget").css("max-height","200px");
				$( this ).autocomplete("widget").css("width","310px");
				$( this ).autocomplete("widget").css("overflow-y","auto");
				$( this ).autocomplete("widget").css("overflow-x","hidden");
				$( this ).removeClass( "ui-corner-all" ).addClass( "ui-corner-top" );
				if( $('#organ'+row).val() =="")  $('#organ'+row).attr("readonly",false);
			},
			close: function() {
				$( this ).removeClass( "ui-corner-top" ).addClass( "ui-corner-all" );
			},
			error: function(xhr, ajaxOptions, thrownError){ alert(thrownError);  alert(xhr.responseText); }
		})
		.autocomplete("instance")._renderItem = function(ul, item) {
		return $("<li>")
			.append(item.licenseName + "<br>" + "<span class='organ-name'>발행처 " + item.organ + "</span>")
			.appendTo(ul);
		};
	}


	/**
	 * 보유자격증 초기화
	 */
	function emptyLicense() {
		$("#licensecd0").val("");
		$("#licensenm0").val("");
		$("#organ0").val("");
		$("#certificateyyyy0").val("");
	}

	function showLicense() {
		$("#RegistLicense #licensebase").show();
		$("#RegistLicense a.addInfoBtn").hide();
	}

	function hideLicense() {
		var limitcnt = $("div[id^='divLicense']").length;

		if (limitcnt == 0) {
			$("#RegistLicense").prev("a.fullsizeBtn").click();
		}
		else {
			$("#RegistLicense #licensebase").hide();

			(limitcnt >= 10) ? $("#RegistLicense a.addInfoBtn").hide() : $("#RegistLicense a.addInfoBtn").show();
		}

		emptyLicense();
	}

	function delLicense(idx) {
		var limitcnt = 0;
		var radiochk = false;

		if(confirm("삭제하시겠습니까?")) {
			if ($("#licenseChk"+idx).is(":checked")) { radiochk = true; }

			$("#divLicense"+idx).remove();

			limitcnt = $("div[id^='divLicense']").length;

			if (limitcnt == 0) {
				showLicense();
				$("#RegistLicense span.comment").hide();
				$("#RegistLicense").prev("a.fullsizeBtn").click();
			}
			else {
				$("#RegistLicense a.addInfoBtn").show();
				if (radiochk) {
					$(":radio[id^='licenseChk']").each(function() {
						$(this).attr("checked", true).parent().addClass("on");
						return false;
					});
				}
			}

			TimerComplete();

			chkSpecEss();
		}
	}

	function clickLicenseCert(idx) {
		var limitcnt = $("div[id^='divLicense']").length;
		var certlimitcnt = $("input:radio[id^='cert_licenseopenY']:checked").length;
		if (!$("#cert_licenseopenY" + idx).is(":checked")) {
			if (limitcnt + certlimitcnt >= 10) {
				alert("자격증은 최대 10개까지 노출 가능합니다.");
				$("input:radio[name='licenseChk']:radio[value='" + $("#hidLicenseText").val() + "']").prop("checked", true);
				$("input:radio[name='cert_licenseopen" + idx + "']:radio[value='N']").prop("checked", true);
			} else {
				$("#hidLicenseText").val($("input:radio[name='licenseChk']:checked").val());
				$("input:radio[name='cert_licenseopen" + idx + "']:radio[value='Y']").prop("checked", true);
				$("input:radio[name='cert_licenseopen" + idx + "']:radio[value='N']").prop("checked", false).parent().removeClass("on");
			}
		}
	}

	function clickLicenseOpen(idx) {
		var openyn = $("input[name='cert_licenseopen" + idx + "']:checked").val();
		if (openyn == "N") {
			if ($("#cert_licenseChk" + idx).is(":checked")) {
				$("#cert_licenseChk" + idx).attr("checked", false).parent().removeClass("on");
				$(":radio[id^='licenseChk']").each(function() {
					$(this).attr("checked", true).parent().addClass("on");
					return false;
				});
			}
		} else {
			var limitcnt = $("div[id^='divLicense']").length;
			var certlimitcnt = $("input:radio[id^='cert_licenseopenY']:checked").length;
			if (limitcnt + certlimitcnt > 10) {
				alert("자격증은 최대 10개까지 노출 가능합니다.");
				$("input:radio[name='cert_licenseopen" + idx + "']:radio[value='N']").prop("checked", true);
			}
		}
	}

	function modLicense(idx) {
		var strLicense = "";

		strLicense = strLicense + "<div class='registForm'> ";
		strLicense = strLicense + "	<ul class='inputArea'> ";
		strLicense = strLicense + "		<li> ";
		strLicense = strLicense + "			<input type='text' id='licensenm10"+idx+"' name='licensenm10"+idx+"' placeholder='자격증 명' style='width:373px;' maxlength='20' value='"+$("#licensenm"+idx).val()+"' /> ";
		strLicense = strLicense + "			<input type='text' style='width:170px;' id='organ10"+idx+"' name='organ10"+idx+"' placeholder='발행처' maxlength='20' value='"+$("#organ"+idx).val()+"'/> ";
		strLicense = strLicense + "			<input type='text' style='width:170px;margin-right:0' id='certificateyyyy10"+idx+"' name='certificateyyyy10"+idx+"' placeholder='취득년도' maxlength='4'' /> ";
		strLicense = strLicense + "			<input type='hidden' id='licensecd10"+idx+"' name='licensecd10"+idx+"' value='"+$("#licensecd"+idx).val()+"' />";
		strLicense = strLicense + "			<span class='tip message'><em></em></span>";
		strLicense = strLicense + "		</li> ";
		strLicense = strLicense + "	</ul> ";
		strLicense = strLicense + "	<p class='formBtn'> ";		
		strLicense = strLicense + "		<a href='#' class='btn whiteBtn' onclick=\"cancelModLicense("+idx+"); return false;\">취소</a> ";
		strLicense = strLicense + "		<a href='#' class='btn grayBtn' onclick=\"addLicense("+idx+"); return false;\">수정완료</a> ";
		strLicense = strLicense + "	</p> ";
		strLicense = strLicense + "</div> ";

		emptyLicense();
		$("#RegistLicense #licensebase").hide();
		$("#RegistLicense a.addInfoBtn").hide();

		$("div[id^='divLicense']").each(function(i) {
			$(this).find(".registResult").show();
			$(this).find(".registForm").remove();
		});

		$("#divLicense"+idx+" .registResult").hide();
		$("#divLicense"+idx).append(strLicense);

		Licenseautocomplete("10"+idx);
	}

	function cancelModLicense(idx) {
		var limitcnt = $("div[id^='divLicense']").length;

		(limitcnt >= 10) ? $("#RegistLicense a.addInfoBtn").hide() : $("#RegistLicense a.addInfoBtn").show();
		$("#divLicense"+idx+" .registResult").show();
		$("#divLicense"+idx+" .registForm").remove();
	}

	function addLicense(idx) {
		var strLicense = "";
		var limitcnt = 0;
		var certlimitcnt = 0;
		var objidx = 1;
		var modidx = "10";
		var checkdup = false;
		var radiochk = false;

		limitcnt = $("div[id^='divLicense']").length;
		certlimitcnt = $("input:radio[id^='cert_licenseopenY']:checked").length;

		if (limitcnt + certlimitcnt >= 10 && idx == 0) {
			alert("자격증은 최대 10개까지 등록 가능합니다.");
			return false;
		} else {
			if (Number(idx) == 0) {
				for (var i = 1; i <= (limitcnt + 1); i++) {
					if ($("#divLicense"+i).length == 0) {
						objidx = i;
						break;
					}
				}

				modidx = "0";
			} else {
				objidx = idx;
				modidx = "10" + idx;
			}

			if ($.trim($('#licensenm'+modidx).val()) == "") {
				alert("자격증 명을 작성해 주세요.");
				return false;
			}

			if ($.trim($('#organ'+modidx).val()) == "") {
				alert("발행처를 작성해 주세요.");
				return false;
			}

			if ($("#certificateyyyy"+modidx).val() == "") {
				alert("certificateyyyy", "취득년도를 입력해 주세요.");
				return false;
			}

			if (isNaN($("#certificateyyyy"+modidx).val())) {
				alert("취득년도는 숫자만 입력해 주세요.");
				return false;
			}
			
			$("div[id^='divLicense']").each(function(i) {
				if ($.trim($(this).find("li.name").text()) == $.trim($('#licensenm'+modidx).val())) {
					checkdup = true;
					return false;
				}
			});
			
			if (checkdup && idx == 0) {
				alert("동일한 자격증은 중복 등록할 수 없습니다.");
				emptyLicense();
				return false;
			}
			
			if ((limitcnt == 0 && idx == 0) || ($("#licenseChk"+objidx).is(":checked") && idx > 0)) {
				radiochk = true;
			}
			
			strLicense = strLicense + "	 <div class='registResult'>";
			strLicense = strLicense + "		<ul class='textCnt'>";
			strLicense = strLicense + "			<li class='name'><span class='input" + (radiochk ? " on" : "") + "'><label for='licenseChk" + objidx + "'>" + $('#licensenm' + modidx).val() + "</label></span></li>";
			strLicense = strLicense + "			<li class='origin'>" + $('#organ' + modidx).val() + " / " + $('#certificateyyyy' + modidx).val() + "년</li>";
			strLicense = strLicense + "		</ul>";
			strLicense = strLicense + "		<div class='applBtn'>";
			strLicense = strLicense + "			<a href='#' class='btn whiteBtn' onclick='modLicense(" + objidx + ");return false;'>수정</a>";
			strLicense = strLicense + "			<a href='#' class='btn whiteBtn' onclick='delLicense(" + objidx + ");return false;'>삭제</a>";
			strLicense = strLicense + "		</div>";
			strLicense = strLicense + "		<input type='hidden' class='license_input' value='" + $('#licensenm' + modidx).val() + "/" + $('#organ' + modidx).val() + "/" + $('#certificateyyyy' + modidx).val() + "'>";
			strLicense = strLicense + "		<input type='hidden' name='licensenm" + objidx + "' id='licensenm" + objidx + "' value='" + $("#licensenm" + modidx).val() + "' />";
			strLicense = strLicense + "		<input type='hidden' name='organ" + objidx + "' id='organ" + objidx + "' value='" + $("#organ" + modidx).val() + "' />";
			strLicense = strLicense + "		<input type='hidden' name='certificateyyyy" + objidx + "' id='certificateyyyy" + objidx + "' value='" + $("#certificateyyyy" + modidx).val() + "' />";
			strLicense = strLicense + "		<input type='hidden' id='licensecd" + objidx + "' name='licensecd" + objidx + "' value='" + $("#licensecd" + modidx).val() + "' />";
			strLicense = strLicense + "	</div>";

			if (idx == 0) {
				$("#RegistLicenseResult").append("<div id='divLicense" + objidx + "'>" + strLicense + "</div>");
				$("#RegistLicense span.comment").show();
			} else {
				$("#RegistLicenseResult #divLicense" + idx).empty().append(strLicense);
			}
			hideLicense();
			TimerComplete();
			chkSpecEss();
		}
	}
	</script>
</body>


</html>









