<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>



<script type="text/javascript"
	src="http://www.google-analytics.com/plugins/ua/ecommerce.js"></script>

<head>



<link rel="stylesheet" href="resources/css/recruinfo/job.css">
<link rel="stylesheet" href="resources/css/recruinfo/jobgoods.css">
<link rel="stylesheet" href="resources/css/recruinfo/sub.css">
<link rel="stylesheet" href="resources/css/recruinfo/recruinfoCus.css">
 
 
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
 
  <link href="resources/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/css/mdb.min.css" rel="stylesheet">
    <link href="resources/css/style.css" rel="stylesheet">
     <link href="resources/css/datatables.min.css" rel="stylesheet">




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
<script type="text/javascript"
	src="resources/js/recruinfo/recruinfoCus.js"></script>







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
</style>

<body>
	<%@ include file="../include/header.jsp"%>




	<div class="container">
		<div class="recruinfo-title">
			<h2 class="recruinfo-title-p">채용 공고</h2>
		</div>

		<div id="JobCount">
			<div class="all">
				<p class="title1">전체 채용공고</p>
				<p class="count">
					<strong>db값</strong>
				</p>
			</div>


		</div>

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

				<div class="base">


					<!-- 지역 -->
					<dl class="area">
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
					</dl>

				</div>


				<div class="jobcho-line1">
					직종/업무:
					<div class="jobchoice"></div>

					<button class="btn btn-light-green jobchoice-btn"
						onclick="jsonout()" data-toggle="modal" data-target="#myModal">전체
						카테고리</button>
				</div>

			</div>




<div class="recruinfo-list">

<table class="table table-striped table-bordered table-sm recruinfo-table " id="Example" style="width: 100%">
	<thead>
		<tr>
			<th class="local">근무지</th>
			<th class="title">공고제목</th>
			<th class="data">근무시간</th>
			<th class="salary">급여</th>
			
		</tr>
	</thead>
	<tbody>

		<c:forEach var="row" items="${list}">
			<tr>
				<td class="local">${row.address}</td>
				<td class="title"><a href="recruinfoDetail?n_code=${row.n_code}">
										<span class="company">${row.work_place_name}</span>
										<span>${row.title} </span>
									</a></td>
				<td class="data">${row.work_time1} ~ ${row.work_time2}</td>
				<td class="salary">${row.hour_wage}</td>
			</tr>
		</c:forEach>
	
	</tbody>	
</table>

</div>

   



   </div>
   
   </div>
  
			

	<!-- 부트스트랩 -->
	<!-- 부트스트랩 modal -->
	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog modal-lg">
			<script src="resources/js/bootstrap.js"></script>
			<!-- Modal content  -->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">직종 선택</h4>
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
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>






 <script type="text/javascript" src="resources/js/jquery-3.4.0.min.js"></script> 
   

  
  <script type="text/javascript">
 
  $(document).ready(function () {
	    $('#Example').DataTable({
	      "paging": true // false to disable pagination (or any other option)
	    });
	    $('.dataTables_length').addClass('bs-select');
	  });
  
  </script>
  
  
    <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->

  <script type="text/javascript" src="resources/js/popper.min.js"></script>
  <script type="text/javascript" src="resources/js/mdb.min.js"></script>
  <script type="text/javascript" src="resources/js/datatables.min.js"></script>
  
  
 



</body>


</html>









