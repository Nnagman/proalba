<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" href="resources/css/recruinfo/sub.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/recruinfo/job.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/recruinfo/jobgoods.css"
	type="text/css">
<script src="resources/js/recruinfo/common.js"></script>
<script src="resources/js/recruinfo/commonctrl_min_js.js"></script>
<script src="resources/js/recruinfo/jobpreview.js"></script>
<script src="resources/js/recruinfo/paging.js"></script>
<script src="resources/js/recruinfo/public.js"></script>
<script src="resources/js/recruinfo/schtopjob.js"></script>
<script src="resources/js/recruinfo/schtopjoblnit.js"></script>
<script src="resources/js/recruinfo/topsearchjob.js"></script>
<script src="resources/js/recruinfo/wnsearchjs.js"></script>
<script src="resources/js/recruinfo/wnsearchpaging.js"></script>
<style>
.menulink {
	font-family: 'NanumSquareRound', sans-serif !important;
}

.he-title {
	color: #ffffff;
}

.he-title>h1 {
	font-size: 2.5rem;
	color: inherit;
}

.h1 {
	margin-bottom: .5rem;
	line-height: 1.2;
	color: #ffffff;
}

.he-title>p {
	font-size: 16px;
	color: inherit;
}
</style>
</head>
<body>
	<div id="SubWrap">
		<form method="get" action="/job/main.asp" name="formSrchPublic"
			id="formSrchPublic">
			<!-- SubSide -->

			<!-- //SubSide -->

			<!-- subContents -->
			<div id="SubContents">

				<h1 class="jobAll">
					<img src="http://image.alba.kr/job/tvc_jobMain_h1_1.jpg"
						alt="전체 채용정보">
				</h1>

				<!-- 상단검색 S//-->

				<div class="jobSearch" id="JobSearch">

					<fieldset>
						<legend>채용정보 검색</legend>
						<!-- 기본검색 -->
						<div class="base">


							<!-- 지역 -->
							<dl class="area">
								<dt class="item">지역</dt>
								<dd class="content">
									<a href="#" class="blank">지역을 선택하세요 (최대 5개 선택가능)</a>
								</dd>
								<dd class="data">
									<ul id="ulAreacd" class="tabForm">
										<li id="02"><a href="#">서울</a></li>
										<li id="051"><a href="#">부산</a></li>
										<li id="053"><a href="#">대구</a></li>
										<li id="032"><a href="#">인천</a></li>
										<li id="062"><a href="#"">광주</a></li>
										<li id="042"><a href="#">대전</a></li>
										<li id="052"><a href="#">울산</a></li>
										<li id="044"><a href="#">세종</a></li>
										<li id="031"><a href="#">경기</a></li>
										<li id="055"><a href="#">경남</a></li>
										<li id="054"><a href="#">경북</a></li>
										<li id="041"><a href="#">충남</a></li>
										<li id="043"><a href="#">충북</a></li>
										<li id="061"><a href="#">전남</a></li>
										<li id="063"><a href="#">전북</a></li>
										<li id="033"><a href="#">강원</a></li>
										<li id="064"><a href="#">제주</a></li>
										<li id="99"><a href="#">전국</a></li>
									</ul>
									<ul id="ulGugun" class="inputWrap">
										<li><span class="input "> <input type="radio"
												id="selGugun0" name="selGugun" value="전체"
												onclick="JOBSEARCH.fnsetDong(this, '02', '서울', '전체');  JOBSEARCH.fnAreaDisplay(this, '서울','전체',''); "><label
												for="selGugun0"><strong>서울 전체</strong></label></span></li>
										<li><span class="input "> <input type="radio"
												id="selGugun1" name="selGugun" value="강남구"
												onclick="JOBSEARCH.fnsetDong(this, '02', '서울', '강남구');  "><label
												for="selGugun1">강남구</label></span></li>
										<li><span class="input "> <input type="radio"
												id="selGugun2" name="selGugun" value="강동구"
												onclick="JOBSEARCH.fnsetDong(this, '02', '서울', '강동구');  "><label
												for="selGugun2">강동구</label></span></li>
										<li><span class="input "> <input type="radio"
												id="selGugun3" name="selGugun" value="강북구"
												onclick="JOBSEARCH.fnsetDong(this, '02', '서울', '강북구');  "><label
												for="selGugun3">강북구</label></span></li>
										<li><span class="input "> <input type="radio"
												id="selGugun4" name="selGugun" value="강서구"
												onclick="JOBSEARCH.fnsetDong(this, '02', '서울', '강서구');  "><label
												for="selGugun4">강서구</label></span></li>
										<li><span class="input "> <input type="radio"
												id="selGugun5" name="selGugun" value="관악구"
												onclick="JOBSEARCH.fnsetDong(this, '02', '서울', '관악구');  "><label
												for="selGugun5">관악구</label></span></li>
										<li><span class="input "> <input type="radio"
												id="selGugun6" name="selGugun" value="광진구"
												onclick="JOBSEARCH.fnsetDong(this, '02', '서울', '광진구');  "><label
												for="selGugun6">광진구</label></span></li>
										<li><span class="input "> <input type="radio"
												id="selGugun7" name="selGugun" value="구로구"
												onclick="JOBSEARCH.fnsetDong(this, '02', '서울', '구로구');  "><label
												for="selGugun7">구로구</label></span></li>
										<li><span class="input "> <input type="radio"
												id="selGugun8" name="selGugun" value="금천구"
												onclick="JOBSEARCH.fnsetDong(this, '02', '서울', '금천구');  "><label
												for="selGugun8">금천구</label></span></li>
										<li><span class="input "> <input type="radio"
												id="selGugun9" name="selGugun" value="노원구"
												onclick="JOBSEARCH.fnsetDong(this, '02', '서울', '노원구');  "><label
												for="selGugun9">노원구</label></span></li>
										<li><span class="input "> <input type="radio"
												id="selGugun10" name="selGugun" value="도봉구"
												onclick="JOBSEARCH.fnsetDong(this, '02', '서울', '도봉구');  "><label
												for="selGugun10">도봉구</label></span></li>
										<li><span class="input "> <input type="radio"
												id="selGugun11" name="selGugun" value="동대문구"
												onclick="JOBSEARCH.fnsetDong(this, '02', '서울', '동대문구');  "><label
												for="selGugun11">동대문구</label></span></li>
										<li><span class="input "> <input type="radio"
												id="selGugun12" name="selGugun" value="동작구"
												onclick="JOBSEARCH.fnsetDong(this, '02', '서울', '동작구');  "><label
												for="selGugun12">동작구</label></span></li>
										<li><span class="input "> <input type="radio"
												id="selGugun13" name="selGugun" value="마포구"
												onclick="JOBSEARCH.fnsetDong(this, '02', '서울', '마포구');  "><label
												for="selGugun13">마포구</label></span></li>
										<li><span class="input "> <input type="radio"
												id="selGugun14" name="selGugun" value="서대문구"
												onclick="JOBSEARCH.fnsetDong(this, '02', '서울', '서대문구');  "><label
												for="selGugun14">서대문구</label></span></li>
										<li><span class="input "> <input type="radio"
												id="selGugun15" name="selGugun" value="서초구"
												onclick="JOBSEARCH.fnsetDong(this, '02', '서울', '서초구');  "><label
												for="selGugun15">서초구</label></span></li>
										<li><span class="input "> <input type="radio"
												id="selGugun16" name="selGugun" value="성동구"
												onclick="JOBSEARCH.fnsetDong(this, '02', '서울', '성동구');  "><label
												for="selGugun16">성동구</label></span></li>
										<li><span class="input "> <input type="radio"
												id="selGugun17" name="selGugun" value="성북구"
												onclick="JOBSEARCH.fnsetDong(this, '02', '서울', '성북구');  "><label
												for="selGugun17">성북구</label></span></li>
										<li><span class="input "> <input type="radio"
												id="selGugun18" name="selGugun" value="송파구"
												onclick="JOBSEARCH.fnsetDong(this, '02', '서울', '송파구');  "><label
												for="selGugun18">송파구</label></span></li>
										<li><span class="input "> <input type="radio"
												id="selGugun19" name="selGugun" value="양천구"
												onclick="JOBSEARCH.fnsetDong(this, '02', '서울', '양천구');  "><label
												for="selGugun19">양천구</label></span></li>
										<li><span class="input "> <input type="radio"
												id="selGugun20" name="selGugun" value="영등포구"
												onclick="JOBSEARCH.fnsetDong(this, '02', '서울', '영등포구');  "><label
												for="selGugun20">영등포구</label></span></li>
										<li><span class="input "> <input type="radio"
												id="selGugun21" name="selGugun" value="용산구"
												onclick="JOBSEARCH.fnsetDong(this, '02', '서울', '용산구');  "><label
												for="selGugun21">용산구</label></span></li>
										<li><span class="input "> <input type="radio"
												id="selGugun22" name="selGugun" value="은평구"
												onclick="JOBSEARCH.fnsetDong(this, '02', '서울', '은평구');  "><label
												for="selGugun22">은평구</label></span></li>
										<li><span class="input "> <input type="radio"
												id="selGugun23" name="selGugun" value="종로구"
												onclick="JOBSEARCH.fnsetDong(this, '02', '서울', '종로구');  "><label
												for="selGugun23">종로구</label></span></li>
										<li><span class="input "> <input type="radio"
												id="selGugun24" name="selGugun" value="중구"
												onclick="JOBSEARCH.fnsetDong(this, '02', '서울', '중구');  "><label
												for="selGugun24">중구</label></span></li>
										<li><span class="input "> <input type="radio"
												id="selGugun25" name="selGugun" value="중랑구"
												onclick="JOBSEARCH.fnsetDong(this, '02', '서울', '중랑구');  "><label
												for="selGugun25">중랑구</label></span></li>
									</ul>
									<ul id="ulDong" class="inputWrap dongWrap"
										style="display: none;">
										<li></li>
									</ul>
									<a href="#" class="dataCloseBtn">선택영역 닫기</a>
								</dd>
							</dl>
							<script type="text/javascript">
								JOBSEARCH.fnsetSido("", "");
								JOBSEARCH.fnshowArea();
							</script>
							<!-- 지역 -->

							<!-- 지하철 -->

							<!-- //지하철 -->

							<!-- 대학교 -->

							<!-- //대학교 -->

							<!-- 업·직종 -->

							<dl class="kind" id="schJobKind">
								<dt class="item">업·직종</dt>
								<dd class="content">
									<a href="#" class="blank">업·직종을 선택하세요 (최대 5개 선택가능)</a>
								</dd>
								<dd class="data">
									<ul id="ulJobkind" class="tabForm">
										<li class="on odd"><a href="#"
											onclick="JOBSEARCH.fnsetKindsub('03000000'); return false;">매장관리</a></li>
										<li><a href="#"
											onclick="JOBSEARCH.fnsetKindsub('06000000'); return false;">서빙·주방</a></li>
										<li class="odd"><a href="#"
											onclick="JOBSEARCH.fnsetKindsub('04000000'); return false;">서비스·미디어</a></li>
										<li class="last"><a href="#"
											onclick="JOBSEARCH.fnsetKindsub('05000000'); return false;">생산·기능·운전·배달</a></li>
										<li class="odd"><a href="#"
											onclick="JOBSEARCH.fnsetKindsub('01000000'); return false;">사무·회계</a></li>
										<li><a href="#"
											onclick="JOBSEARCH.fnsetKindsub('07000000'); return false;">IT·디자인</a></li>
										<li class="odd"><a href="#"
											onclick="JOBSEARCH.fnsetKindsub('02000000'); return false;">고객상담·영업·리서치</a></li>
										<li class="last"><a href="#"
											onclick="JOBSEARCH.fnsetKindsub('08000000'); return false;">강사·교육</a></li>
									</ul>
									<ul id="ulJobkindsub" class="inputWrap">
										<li><span class="input "> <input type="checkbox"
												id="jobkindsub0" value="03000000"
												onclick="JOBSEARCH.fnKindSubDisplay(this);"> <label
												for="jobkindsub0"> 전체 </label></span></li>
										<li><span class="input "> <input type="checkbox"
												id="jobkindsub1" value="03030000"
												onclick="JOBSEARCH.fnKindSubDisplay(this);"> <label
												for="jobkindsub1"> 편의점 </label></span></li>
										<li><span class="input "> <input type="checkbox"
												id="jobkindsub2" value="03050000"
												onclick="JOBSEARCH.fnKindSubDisplay(this);"> <label
												for="jobkindsub2"> 대형마트 </label></span></li>
										<li><span class="input "> <input type="checkbox"
												id="jobkindsub3" value="03060000"
												onclick="JOBSEARCH.fnKindSubDisplay(this);"> <label
												for="jobkindsub3"> 쇼핑몰·아울렛 </label></span></li>
										<li><span class="input "> <input type="checkbox"
												id="jobkindsub4" value="03310000"
												onclick="JOBSEARCH.fnKindSubDisplay(this);"> <label
												for="jobkindsub4"> 인터넷쇼핑몰·홈쇼핑 </label></span></li>
										<li><span class="input "> <input type="checkbox"
												id="jobkindsub5" value="03040000"
												onclick="JOBSEARCH.fnKindSubDisplay(this);"> <label
												for="jobkindsub5"> 백화점·면세점 </label></span></li>
										<li><span class="input "> <input type="checkbox"
												id="jobkindsub6" value="03020000"
												onclick="JOBSEARCH.fnKindSubDisplay(this);"> <label
												for="jobkindsub6"> PC방 </label></span></li>
										<li><span class="input "> <input type="checkbox"
												id="jobkindsub7" value="03080000"
												onclick="JOBSEARCH.fnKindSubDisplay(this);"> <label
												for="jobkindsub7"> DVD·만화·멀티방 </label></span></li>
										<li><span class="input "> <input type="checkbox"
												id="jobkindsub8" value="03090000"
												onclick="JOBSEARCH.fnKindSubDisplay(this);"> <label
												for="jobkindsub8"> 스크린골프 </label></span></li>
										<li><span class="input "> <input type="checkbox"
												id="jobkindsub9" value="03110000"
												onclick="JOBSEARCH.fnKindSubDisplay(this);"> <label
												for="jobkindsub9"> 노래방 </label></span></li>
										<li><span class="input "> <input type="checkbox"
												id="jobkindsub10" value="03220000"
												onclick="JOBSEARCH.fnKindSubDisplay(this);"> <label
												for="jobkindsub10"> 볼링·당구장 </label></span></li>
										<li><span class="input "> <input type="checkbox"
												id="jobkindsub11" value="03100000"
												onclick="JOBSEARCH.fnKindSubDisplay(this);"> <label
												for="jobkindsub11"> 오락실·게임장 </label></span></li>
										<li><span class="input "> <input type="checkbox"
												id="jobkindsub12" value="03250000"
												onclick="JOBSEARCH.fnKindSubDisplay(this);"> <label
												for="jobkindsub12"> 의류·잡화 </label></span></li>
										<li><span class="input "> <input type="checkbox"
												id="jobkindsub13" value="03240000"
												onclick="JOBSEARCH.fnKindSubDisplay(this);"> <label
												for="jobkindsub13"> 가전·휴대폰 </label></span></li>
										<li><span class="input "> <input type="checkbox"
												id="jobkindsub14" value="03260000"
												onclick="JOBSEARCH.fnKindSubDisplay(this);"> <label
												for="jobkindsub14"> 뷰티·헬스스토어 </label></span></li>
										<li><span class="input "> <input type="checkbox"
												id="jobkindsub15" value="03270000"
												onclick="JOBSEARCH.fnKindSubDisplay(this);"> <label
												for="jobkindsub15"> 서점·문구·팬시 </label></span></li>
										<li><span class="input "> <input type="checkbox"
												id="jobkindsub16" value="03280000"
												onclick="JOBSEARCH.fnKindSubDisplay(this);"> <label
												for="jobkindsub16"> 가구·침구·소품 </label></span></li>
										<li><span class="input "> <input type="checkbox"
												id="jobkindsub17" value="03290000"
												onclick="JOBSEARCH.fnKindSubDisplay(this);"> <label
												for="jobkindsub17"> 청과·축산·수산·농산 </label></span></li>
										<li><span class="input "> <input type="checkbox"
												id="jobkindsub18" value="03070000"
												onclick="JOBSEARCH.fnKindSubDisplay(this);"> <label
												for="jobkindsub18"> 찜질방·사우나·스파 </label></span></li>
										<li><span class="input "> <input type="checkbox"
												id="jobkindsub19" value="03120000"
												onclick="JOBSEARCH.fnKindSubDisplay(this);"> <label
												for="jobkindsub19"> 독서실·고시원 </label></span></li>
										<li><span class="input "> <input type="checkbox"
												id="jobkindsub20" value="03230000"
												onclick="JOBSEARCH.fnKindSubDisplay(this);"> <label
												for="jobkindsub20"> 도서·DVD대여점 </label></span></li>
										<li><span class="input "> <input type="checkbox"
												id="jobkindsub21" value="03010000"
												onclick="JOBSEARCH.fnKindSubDisplay(this);"> <label
												for="jobkindsub21"> 기타매장 </label></span></li>
									</ul>
									<a href="#" class="dataCloseBtn">선택영역 닫기</a>
								</dd>
							</dl>

							<!-- //업·직종 -->
						</div>

						<div class="work" id="schWork">
							<!-- 근무기간 -->
							<dl class="term" id="schWorkPeriod">
								<dt class="item">근무기간</dt>
								<dd class="content">
									<ul class="inputWrap" style="height: 97px;">
										<li><span class="input"><input type="checkbox"
												name="workperiodcd" id="workperiodcd1" value="H01"><label
												for="workperiodcd1">1일</label></span></li>
										<li><span class="input"><input type="checkbox"
												name="workperiodcd" id="workperiodcd2" value="H02"><label
												for="workperiodcd2">1주일이내</label></span></li>
										<li><span class="input"><input type="checkbox"
												name="workperiodcd" id="workperiodcd3" value="H03"><label
												for="workperiodcd3">1주일~1개월</label></span></li>
										<li><span class="input"><input type="checkbox"
												name="workperiodcd" id="workperiodcd4" value="H04"><label
												for="workperiodcd4">1개월~3개월</label></span></li>
										<li><span class="input"><input type="checkbox"
												name="workperiodcd" id="workperiodcd5" value="H05"><label
												for="workperiodcd5">3개월~6개월</label></span></li>
										<li><span class="input"><input type="checkbox"
												name="workperiodcd" id="workperiodcd6" value="H06"><label
												for="workperiodcd6">6개월~1년</label></span></li>
										<li><span class="input"><input type="checkbox"
												name="workperiodcd" id="workperiodcd9" value="H09"><label
												for="workperiodcd9">1년 이상</label></span></li>
										<!--li><span class="input"><input type="checkbox" name="workperiodcd" id="workperiodcd7"  value="H07" /><label for="workperiodcd7">기간협의</label></span></li-->
									</ul>
								</dd>
							</dl>
							<!-- //근무기간 -->
							<!-- 근무요일 -->
							<dl class="date middle" id="schWorkWeek">
								<dt class="item">
									근무요일 <a href="#" class="clearBtn"
										onclick="JOBSEARCH.fnEachInit(3); return false;">선택삭제</a>
								</dt>
								<dd class="content">
									<ul class="inputWrap" style="height: 97px;">
										<li><span class="input"><input type="radio"
												name="workweekcd" id="workweekcd1" value="D01"><label
												for="workweekcd1">월~금</label></span></li>
										<li><span class="input"><input type="radio"
												name="workweekcd" id="workweekcd2" value="D02"><label
												for="workweekcd2">월~토</label></span></li>
										<li><span class="input"><input type="radio"
												name="workweekcd" id="workweekcd3" value="D03"><label
												for="workweekcd3">월~일</label></span></li>
										<li><span class="input"><input type="radio"
												name="workweekcd" id="workweekcd14" value="D05"><label
												for="workweekcd14">월~토(격주)</label></span></li>
										<li class="full week"><span class="input"><input
												type="radio" name="workweekcdweek" id="workweekcdweek"><label
												for="workweekcdweek">근무일수선택</label></span>
											<div class="subSelect">
												<ul>
													<li><span class="input"><input type="radio"
															name="workweekcd" id="workweekcd8" value="D08"><label
															for="workweekcd8">주6일</label></span></li>
													<li><span class="input"><input type="radio"
															name="workweekcd" id="workweekcd9" value="D09"><label
															for="workweekcd9">주5일</label></span></li>
													<li><span class="input"><input type="radio"
															name="workweekcd" id="workweekcd10" value="D10"><label
															for="workweekcd10">주4일</label></span></li>
													<li><span class="input"><input type="radio"
															name="workweekcd" id="workweekcd11" value="D11"><label
															for="workweekcd11">주3일</label></span></li>
													<li><span class="input"><input type="radio"
															name="workweekcd" id="workweekcd12" value="D12"><label
															for="workweekcd12">주2일</label></span></li>
													<li><span class="input"><input type="radio"
															name="workweekcd" id="workweekcd13" value="D13"><label
															for="workweekcd13">주1일</label></span></li>
												</ul>
												<span class="arrow"></span>
											</div></li>
										<li class="full day"><span class="input"><input
												type="radio" name="workweekcd" id="workweekcd7" value="D07"><label
												for="workweekcd7">근무요일선택</label></span>
											<div class="subSelect">
												<ul>
													<li><span class="input"><input type="checkbox"
															name="weekdays" id="weekdays1" value="C01"> <label
															for="weekdays1">월</label></span></li>
													<li><span class="input"><input type="checkbox"
															name="weekdays" id="weekdays2" value="C02"> <label
															for="weekdays2">화</label></span></li>
													<li><span class="input"><input type="checkbox"
															name="weekdays" id="weekdays3" value="C03"> <label
															for="weekdays3">수</label></span></li>
													<li><span class="input"><input type="checkbox"
															name="weekdays" id="weekdays4" value="C04"> <label
															for="weekdays4">목</label></span></li>
													<li><span class="input"><input type="checkbox"
															name="weekdays" id="weekdays5" value="C05"> <label
															for="weekdays5">금</label></span></li>
													<li><span class="input"><input type="checkbox"
															name="weekdays" id="weekdays6" value="C06"> <label
															for="weekdays6">토</label></span></li>
													<li><span class="input"><input type="checkbox"
															name="weekdays" id="weekdays7" value="C07"> <label
															for="weekdays7">일</label></span></li>
												</ul>
												<span class="arrow"></span>
											</div></li>
										<li><span class="input"><input type="radio"
												name="workweekcd" id="workweekcd4" value="D04"><label
												for="workweekcd4">주말</label></span></li>
										<li><span class="input"><input type="radio"
												name="workweekcd" id="workweekcd6" value="D06"><label
												for="workweekcd6">요일협의</label></span></li>
									</ul>
								</dd>
							</dl>
							<!-- //근무요일 -->
							<!-- 근무시간 -->
							<dl class="time last" id="schWorkTime">
								<dt class="item">근무시간</dt>
								<dd class="content">
									<ul class="inputWrap" id="worktime" style="height: 97px;">
										<li class="short"><span class="input"><input
												type="checkbox" id="time1" name="workTime" value="J01"><label
												for="time1">오전</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="time5" name="workTime" value="J07"><label
												for="time5">오전~오후</label></span></li>
										<li class="last"><span class="input"><input
												type="checkbox" id="time9" name="workTime" value="J04"><label
												for="time9">종일</label></span></li>
										<li class="short"><span class="input"><input
												type="checkbox" id="time2" name="workTime" value="J02"><label
												for="time2">오후</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="time6" name="workTime" value="J08"><label
												for="time6">오후~저녁</label></span></li>
										<li class="last"><span class="input"><input
												type="checkbox" id="time10" name="workTime" value="J05"><label
												for="time10">시간협의</label></span></li>
										<li class="short"><span class="input"><input
												type="checkbox" id="time3" name="workTime" value="J03"><label
												for="time3">저녁</label></span></li>
										<li class="long"><span class="input"><input
												type="checkbox" id="time7" name="workTime" value="J09"><label
												for="time7">저녁~새벽</label></span></li>
										<li class="short"><span class="input"><input
												type="checkbox" id="time4" name="workTime" value="J06"><label
												for="time4">새벽</label></span></li>
										<li class="long"><span class="input"><input
												type="checkbox" id="time8" name="workTime" value="J10"><label
												for="time8">새벽~오전</label></span></li>
									</ul>
								</dd>
							</dl>
							<!-- //근무시간 -->
						</div>

						<!-- 기본검색 -->


						<!-- 상세검색 -->
						<div class="detail" id="schDetail" style="">

							<!-- 고용형태 -->
							<dl class="employ valueNo" id="schHireType">
								<dt class="item">고용형태</dt>
								<dd class="content">
									<ul class="inputWrap">
										<li><span class="input"><input type="checkbox"
												name="hiretypecd" id="hiretypecd1" value="K01"><label
												for="hiretypecd1">아르바이트</label></span></li>
										<li><span class="input"><input type="checkbox"
												name="hiretypecd" id="hiretypecd2" value="K02"><label
												for="hiretypecd2">정규직</label></span></li>
										<li><span class="input"><input type="checkbox"
												name="hiretypecd" id="hiretypecd3" value="K03"><label
												for="hiretypecd3">계약직</label></span></li>
										<li><span class="input"><input type="checkbox"
												name="hiretypecd" id="hiretypecd4" value="K04"><label
												for="hiretypecd4">파견직</label></span></li>
										<li><span class="input"><input type="checkbox"
												name="hiretypecd" id="hiretypecd5" value="K05"><label
												for="hiretypecd5">인턴직</label></span></li>
										<li><span class="input"><input type="checkbox"
												name="hiretypecd" id="hiretypecd6" value="K06"><label
												for="hiretypecd6">위촉직</label></span></li>
										<li><span class="input"><input type="checkbox"
												name="hiretypecd" id="hiretypecd7" value="K07"><label
												for="hiretypecd7">병역특례</label></span></li>
										<li><span class="input"><input type="checkbox"
												name="hiretypecd" id="hiretypecd8" value="K08"><label
												for="hiretypecd8">교육생/수강생</label></span></li>
									</ul>
								</dd>
							</dl>
							<!-- //고용형태 -->
							<!-- 경력 -->
							<dl class="career valueNo" id="schCareerType">
								<dt class="item">경력</dt>
								<dd class="content">
									<select class="select" title="경력선택" id="careercd"
										name="careercd"><option value="" selected="">선택</option>
										<option value="S00">신입</option>
										<option value="S03">경력 1~3년</option>
										<option value="S06">경력 4~6년</option>
										<option value="S09">경력 7~9년</option>
										<option value="S10">경력 10년 이상</option>
										<option value="S98">경력 연차무관</option></select> <span
										class="addCondition"> <span class="input"><input
											type="checkbox" id="careercdunrelated"
											name="careercdunrelated" value="Y"><label
											for="careercdunrelated">무관포함</label></span>
									</span>
								</dd>
							</dl>
							<!-- //경력 -->
							<!-- 학력 -->
							<dl class="school valueNo" id="schSchoolType">
								<dt class="item">학력</dt>
								<dd class="content">
									<select class="select" title="학력선택" id="lastschoolcd"
										name="lastschoolcd"><option value="" selected="">선택</option>
										<option value="E06">중졸</option>
										<option value="E01">고졸</option>
										<option value="E02">대졸(2,3년)</option>
										<option value="E03">대졸(4년)</option>
										<option value="E04">석사</option>
										<option value="E07">박사</option></select> <span class="addCondition">
										<span class="input"><input type="checkbox"
											id="lastschoolcdunrelated" name="lastschoolcdunrelated"
											value="Y"><label for="lastschoolcdunrelated">무관포함</label></span>
									</span>
								</dd>
							</dl>
							<!-- //학력 -->

							<!-- 성별 -->
							<dl class="gender valueNo" id="schGenderType">
								<dt class="item">성별</dt>
								<dd class="content">
									<ul class="inputWrap">
										<li><span class="input"><input type="radio"
												name="gendercd" id="gendercd2" value="C01"><label
												for="gendercd2">남자</label></span></li>
										<li><span class="input"><input type="radio"
												name="gendercd" id="gendercd3" value="C02"><label
												for="gendercd3">여자</label></span></li>
									</ul>
									<span class="addCondition"> <span class="input"><input
											type="checkbox" name="genderunrelated" id="gendercd1"
											value="Y"><label for="gendercd1">무관포함</label></span> <a
										href="#" class="clearBtn"
										onclick="JOBSEARCH.fnEachInit(8); return false;">선택취소</a>
									</span>
								</dd>
								<script type="text/javascript">
									
								</script>
							</dl>
							<!-- //성별 -->
							<!-- 연령 -->

							<dl class="age valueNo" id="schAgeType">
								<dt class="item">연령</dt>
								<dd class="content">
									<select class="select" title="연령선택" id="agelimit"
										name="agelimit">
										<option value="">선택</option>
										<option value="18">18세이하</option>
										<option value="19">19 세</option>
										<option value="20">20 세</option>
										<option value="21">21 세</option>
										<option value="22">22 세</option>
										<option value="23">23 세</option>
										<option value="24">24 세</option>
										<option value="25">25 세</option>
										<option value="26">26 세</option>
										<option value="27">27 세</option>
										<option value="28">28 세</option>
										<option value="29">29 세</option>
										<option value="30">30 세</option>
										<option value="31">31 세</option>
										<option value="32">32 세</option>
										<option value="33">33 세</option>
										<option value="34">34 세</option>
										<option value="35">35 세</option>
										<option value="36">36 세</option>
										<option value="37">37 세</option>
										<option value="38">38 세</option>
										<option value="39">39 세</option>
										<option value="40">40 세</option>
										<option value="41">41 세</option>
										<option value="42">42 세</option>
										<option value="43">43 세</option>
										<option value="44">44 세</option>
										<option value="45">45 세</option>
										<option value="46">46 세</option>
										<option value="47">47 세</option>
										<option value="48">48 세</option>
										<option value="49">49 세</option>
										<option value="50">50 세</option>
										<option value="51">51세이상</option>
									</select> <span class="addCondition"> <span class="input"><input
											type="checkbox" name="AgeUnRelated" id="AgeUnRelated"
											value="Y"><label for="AgeUnRelated">무관포함</label></span>
									</span>
								</dd>
							</dl>

							<!-- //연령 -->

							<!-- 급여 -->
							<dl class="pay valueNo" id="schPayType">
								<dt class="item">급여</dt>
								<dd class="content">
									<ul id="ulPaycd" class="inputWrap">
										<li><span class="input"><input type="radio"
												id="pay1" name="paycd" value="I01"
												onclick="JOBSEARCH.fnChangePaycd(this);"><label
												for="pay1">시급</label></span></li>
										<li><span class="input"><input type="radio"
												id="pay2" name="paycd" value="I02"
												onclick="JOBSEARCH.fnChangePaycd(this);"><label
												for="pay2">일급</label></span></li>
										<li><span class="input"><input type="radio"
												id="pay3" name="paycd" value="I03"
												onclick="JOBSEARCH.fnChangePaycd(this);"><label
												for="pay3">주급</label></span></li>
										<li><span class="input"><input type="radio"
												id="pay4" name="paycd" value="I04"
												onclick="JOBSEARCH.fnChangePaycd(this);"><label
												for="pay4">월급</label></span></li>
										<li><span class="input"><input type="radio"
												id="pay5" name="paycd" value="I05"
												onclick="JOBSEARCH.fnChangePaycd(this);"><label
												for="pay5">연봉</label></span></li>
										<li><span class="input"><input type="radio"
												id="pay6" name="paycd" value="I06"
												onclick="JOBSEARCH.fnChangePaycd(this);"><label
												for="pay6">건별</label></span></li>
										<li class="price"><input type="text" name="paystart"
											id="paystart" maxlength="10" size="6" title="최저 급여"
											onkeyup="JOBSEARCH.fnNumeric(this);" value="" disabled=""
											style="ime-mode: disabled">원 이상</li>
									</ul>
									<span class="addCondition"> <a href="#" class="clearBtn"
										onclick="JOBSEARCH.fnEachInit(10); return false;">선택취소</a>
									</span>
								</dd>
								<script type="text/javascript">
									
								</script>
							</dl>
							<!-- //급여 -->

							<!-- 복리후생 -->
							<dl class="welfare valueNo" id="schWellFareType">
								<dt class="item">복리후생</dt>
								<dd class="content">
									<a href="#" class="blank">복리후생을 선택하세요</a> <span
										class="addCondition"> <span class="input"><input
											type="checkbox" id="welfare0" name="welfarecd"
											value="T01, T02, T03, T04"
											onclick="JOBSEARCH.fnDisplayWal(this);"><label
											for="welfare0">4대보험</label></span> <span class="input"><input
											type="checkbox" id="welfare0_1" name="welfarecd" value="E01"
											onclick="JOBSEARCH.fnDisplayWal(this);"><label
											for="welfare0_1">식비(식사)지원</label></span>
									</span>
								</dd>
								<dd class="data">
									<ul class="inputWrap">
										<li><span class="input"><input type="checkbox"
												id="welfare1" name="welfarecd" value="E02"
												onclick="JOBSEARCH.fnDisplayWal(this);"><label
												for="welfare1">교통비 지원</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="welfare2" name="welfarecd" value="T07"
												onclick="JOBSEARCH.fnDisplayWal(this);"><label
												for="welfare2">연차</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="welfare3" name="welfarecd" value="T10"
												onclick="JOBSEARCH.fnDisplayWal(this);"><label
												for="welfare3">포상휴가</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="welfare5" name="welfarecd" value="T06"
												onclick="JOBSEARCH.fnDisplayWal(this);"><label
												for="welfare5">건강검진</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="welfare6" name="welfarecd" value="T05"
												onclick="JOBSEARCH.fnDisplayWal(this);"><label
												for="welfare6">경조금</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="welfare7" name="welfarecd" value="T08"
												onclick="JOBSEARCH.fnDisplayWal(this);"><label
												for="welfare7">월차</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="welfare8" name="welfarecd" value="T09"
												onclick="JOBSEARCH.fnDisplayWal(this);"><label
												for="welfare8">정기휴가</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="welfare9" name="welfarecd" value="T14"
												onclick="JOBSEARCH.fnDisplayWal(this);"><label
												for="welfare9">기숙사</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="welfare10" name="welfarecd" value="T11"
												onclick="JOBSEARCH.fnDisplayWal(this);"><label
												for="welfare10">위험수당</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="welfare11" name="welfarecd" value="T12"
												onclick="JOBSEARCH.fnDisplayWal(this);"><label
												for="welfare11">정기보너스</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="welfare12" name="welfarecd" value="T13"
												onclick="JOBSEARCH.fnDisplayWal(this);"><label
												for="welfare12">퇴직금</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="welfare13" name="welfarecd" value="T15"
												onclick="JOBSEARCH.fnDisplayWal(this);"><label
												for="welfare13">통근버스운행</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="welfare14" name="welfarecd" value="T16"
												onclick="JOBSEARCH.fnDisplayWal(this);"><label
												for="welfare14">주휴수당</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="welfare15" name="welfarecd" value="T17"
												onclick="JOBSEARCH.fnDisplayWal(this);"><label
												for="welfare15">초과근로수당</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="welfare16" name="welfarecd" value="T18"
												onclick="JOBSEARCH.fnDisplayWal(this);"><label
												for="welfare16">야간근로수당</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="welfare17" name="welfarecd" value="T19"
												onclick="JOBSEARCH.fnDisplayWal(this);"><label
												for="welfare17">휴일근로수당</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="welfare18" name="welfarecd" value="T20"
												onclick="JOBSEARCH.fnDisplayWal(this);"><label
												for="welfare18">휴게시간</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="welfare19" name="welfarecd" value="T21"
												onclick="JOBSEARCH.fnDisplayWal(this);"><label
												for="welfare19">차량유지비</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="welfare20" name="welfarecd" value="T22"
												onclick="JOBSEARCH.fnDisplayWal(this);"><label
												for="welfare20">자녀학자금</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="welfare21" name="welfarecd" value="T23"
												onclick="JOBSEARCH.fnDisplayWal(this);"><label
												for="welfare21">사학연금</label></span></li>
									</ul>
									<a href="#" class="dataCloseBtn">선택영역 닫기</a>
								</dd>
							</dl>
							<!-- //복리후생 -->
							<!-- 우대조건 -->
							<dl class="prefer valueNo" id="schSpecialType">
								<dt class="item">우대조건</dt>
								<dd class="content">
									<a href="#" class="blank">우대조건을 선택하세요</a>
								</dd>
								<dd class="data">
									<ul class="inputWrap">
										<li><span class="input"><input type="checkbox"
												id="special1" name="special" value="G02"
												onclick="JOBSEARCH.fnDisplaySpecial(this);"> <label
												for="special1">동종업계 경력자</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="special2" name="special" value="G03"
												onclick="JOBSEARCH.fnDisplaySpecial(this);"> <label
												for="special2">관련 자격증 소지자</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="special3" name="special" value="G05"
												onclick="JOBSEARCH.fnDisplaySpecial(this);"> <label
												for="special3">컴퓨터활용 가능자</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="special4" name="special" value="G08"
												onclick="JOBSEARCH.fnDisplaySpecial(this);"> <label
												for="special4">장기근무 가능자</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="special5" name="special" value="G04"
												onclick="JOBSEARCH.fnDisplaySpecial(this);"> <label
												for="special5">영어가능자</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="special6" name="special" value="G12"
												onclick="JOBSEARCH.fnDisplaySpecial(this);"> <label
												for="special6">일어가능자</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="special7" name="special" value="G13"
												onclick="JOBSEARCH.fnDisplaySpecial(this);"> <label
												for="special7">중국어가능자</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="special8" name="special" value="G09"
												onclick="JOBSEARCH.fnDisplaySpecial(this);"> <label
												for="special8">인근거주자</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="special9" name="special" value="G06"
												onclick="JOBSEARCH.fnDisplaySpecial(this);"> <label
												for="special9">운전면허 소지자</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="special12" name="special" value="G15"
												onclick="JOBSEARCH.fnDisplaySpecial(this);"> <label
												for="special12">원동기면허 소지자</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="special10" name="special" value="G14"
												onclick="JOBSEARCH.fnDisplaySpecial(this);"> <label
												for="special10">차량소지자</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="special11" name="special" value="G11"
												onclick="JOBSEARCH.fnDisplaySpecial(this);"> <label
												for="special11">군필자</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="special16" name="special" value="G16"
												onclick="JOBSEARCH.fnDisplaySpecial(this);"> <label
												for="special16">여성</label></span></li>
										<li><span class="input"><input type="checkbox"
												id="special17" name="special" value="G17"
												onclick="JOBSEARCH.fnDisplaySpecial(this);"> <label
												for="special17">경력단절여성</label></span></li>
									</ul>
									<a href="#" class="dataCloseBtn">선택영역 닫기</a>
								</dd>
							</dl>
						</div>
						<!-- 상세검색 -->

						<div class="searchAction">

							<a href="#" class="detailBtn" id="schDetailBtn"
								onclick="return false;">상세검색 열기</a>

							<div class="ect">
								<select class="select" title="검색기간 선택" id="searchterm"
									name="searchterm">
									<option value="" selected="selected">검색기간 전체</option>
									<option value="1">오늘 등록</option>
									<option value="3">3일 이내 등록</option>
									<option value="0">오늘 마감</option>
									<option value="2">내일 마감</option>
								</select> <span class="input"><input type="checkbox"
									id="acceptmethod1" name="acceptmethod" value="I01"><label
									for="acceptmethod1">온라인지원 가능</label></span> <span class="input"><input
									type="checkbox" id="acceptmethod8" name="acceptmethod"
									value="I10"><label for="acceptmethod8">문자지원 가능</label></span>
								<span class="input"><input type="checkbox"
									id="eleccontract" name="eleccontract" value="Z02"><label
									for="eleccontract">전자근로계약서 작성</label></span>
							</div>
							<div class="btnAction">
								<a class="searchSubmit" href="#"
									onclick="fnTopsearch();return false;">검색</a> <a
									class="searchClear" href="#"
									onclick="JOBSEARCH.fnInit();return false;">초기화</a>
							</div>
						</div>
					</fieldset>
				</div>

				<!-- Search Js Val -->
				<input type="hidden" id="hidCareerCD" name="hidCareerCD" value="">
				<input type="hidden" id="hidLastSchoolCD" name="hidLastSchoolCD"
					value=""> <input type="hidden" id="hidLastPayCD"
					name="hidLastPayCD" value=""> <input type="hidden"
					id="hidPayStart" name="hidPayStart" value="">
				<!-- //Search Js Val -->

				<script type="text/javascript">
					$(function() {
						if ($("#schnm").val() != "AREA"
								&& $("#schnm").val() != "HOTPLACE") {
							$(".jobSearch .detail dl").each(function() {
								if ($(this).hasClass("valueYes")) {
									$(this).show();
								}
							});
						}
					});
				</script>
				<!-- 상단검색 E//-->



				<!-- 전체 채용정보 배너 -->

				<!-- //전체 채용정보 배너 -->


				<!-- 일반 채용정보 -->
				<!-- 지역TOP 채용정보 -->

				<!-- //지역TOP 채용정보 -->
				<!-- 지역 Focus 채용정보 -->

				<!-- //지역 Focus 채용정보 -->


				<!-- 일반 채용정보 -->
				<div id="NormalInfo" class="goodsList goodsJob">
					<h2>일반 채용정보</h2>
					<p class="listCount">
						<span></span> 총 <strong>139,014</strong> 건
					</p>
					<div class="infoAppl">
						<a href="/serviceGuide/mguinregist.asp" class="appl">일반 채용정보
							신청하기</a> <a href="/person/scrap/ScrapList.asp" class="scrapBtn"
							target="_blank">스크랩 채용정보</a>
					</div>
					<p class="selectArea">
						<span class="listType"> <a href="javascript:;" class="on"
							onclick="WNSearchJs.fnListSort('sortOrder', '');">정렬조건</a> <a
							href="javascript:;" class=""
							onclick="WNSearchJs.fnListSort('sortOrder', 'FREEORDER');">등록일순</a>
							<a href="javascript:;" class=""
							onclick="WNSearchJs.fnListSort('sortOrder', 'I01');">시급순</a> <a
							href="javascript:;" class=""
							onclick="WNSearchJs.fnListSort('sortOrder', 'I02');">일급순</a> <a
							href="javascript:;" class=""
							onclick="WNSearchJs.fnListSort('sortOrder', 'I03');">주급순</a> <a
							href="javascript:;" class=""
							onclick="WNSearchJs.fnListSort('sortOrder', 'I04');">월급순</a> <a
							href="javascript:;" class=""
							onclick="WNSearchJs.fnListSort('sortOrder', 'I05');">연봉순</a>
						</span>

						<button class="bar out" id="btnBar"
							onclick="WNSearchJs.fnIsBar('Y');return false;">Bar 채용정보
							제외하기</button>

						<select title="게시물보기" class="select" name="sortCnt" id="sortCnt"
							onchange="WNSearchJs.fnListSort('sortCnt', $(this).val());">
							<option value="20">20개씩 보기</option>
							<option value="30">30개씩 보기</option>
							<option value="50" selected="selected">50개씩 보기</option>
						</select> <span class="viewType"> <a href="javascript:;"
							class="listView on"
							onclick="WNSearchJs.fnListSort('sortView', 'LIST');"
							title="리스트형 보기">리스트형 보기</a> <a href="javascript:;"
							class="openView "
							onclick="WNSearchJs.fnListSort('sortView', 'VIEW');"
							title="요약형 보기">요약형 보기</a>
						</span>
					</p>

					<table class="" cellspacing="0"
						summary="일반 채용정보에 등록한 회사의 근무지, 업무내용, 회사명, 성별, 근무시간, 급여, 등록일 정보입니다.">
						<caption>일반 채용정보</caption>
						<thead>
							<tr>

								<th scope="col" class="local">근무지</th>

								<th scope="col" class="title">회사명/업무내용</th>
								<th scope="col" class="data">근무시간</th>
								<!--성별/연령/근무시간		'성별,연령 일시적 비노출 처리 (2017-03-20 김지훈)-->
								<th scope="col" class="pay">급여</th>
								<th scope="col" class="regDate">등록일</th>

							</tr>
						</thead>
						<tbody>
							<tr class="firstLine ">
								<td class="local first " scope="row"><div
										class="L_MyAd_woowahan"></div>서울 송파구</td>
								<td class="title"><a href="/job/Detail.asp?adid=93807519"
									class=""><span class="company">(주)우아한형제들</span><span
										class="title">[배달의민족] 콘텐츠 큐레이션 및 검색 키워드 운영 아르바이</span></a> <span
									class="funcBtn"> <a href="javascript:void(0);"
										id="joblistscrapgen93807519" class="applBtn scrap "
										onclick="if( confirm('개인회원으로 로그인 후 이용 가능한 서비스입니다.\n지금 로그인 하시겠습니까?') ) { loginPerson('/job/main.asp?page=1', ''); }">스크랩</a>
										<a href="#" class="applBtn thumbView"
										id="JobFreeListTd93807519"
										onclick="JobPreview.PREVIEW('JobFreeList','93807519','');return false;">요약보기</a>
										<a href="/job/Detail.asp?adid=93807519" target="_blank"
										class="applBtn blankView">새창보기</a>
								</span></td>
								<td class="data">09:30~17:30</td>
								<td class="pay"><span class="payIcon hour">시급</span><br>
								<span class="number">10,000</span></td>
								<td class="regDate last"><strong>43분전</strong></td>
							</tr>
							<tr class="summaryView" id="JobFreeList93807519"
								style="display: none;">
								<td colspan="5"><iframe src="" name="JobFreeList"
										width="100%" height="145" title="공고 요약보기" frameborder="0"
										scrolling="no" style="height: 169px;"></iframe></td>
							</tr>

						</tbody>
					</table>


					<!-- 페이징 -->

					<script type="text/javascript">
						getWnSearchPaging(
								'1',
								'139014',
								50,
								10,
								'&amp;sidocd=&amp;gugun=&amp;dong=&amp;d_area=&amp;d_areacd=&strAreaMulti=&amp;hidJobKind=&amp;hidJobKindMulti=&amp;WorkTime=&amp;searchterm=&amp;AcceptMethod=&amp;ElecContract=&amp;HireTypeCD=&amp;CareerCD=&amp;CareercdUnRelated=&amp;LastSchoolCD=&amp;LastSchoolcdUnRelated=&amp;GenderCD=&amp;GenderUnRelated=&amp;AgeLimit=0&amp;AgeUnRelated=&amp;PayCD=&amp;PayStart=&amp;WelfareCD=&amp;Special=&amp;WorkWeekCD=&amp;WeekDays=&amp;hidSortCnt=50&amp;hidSortOrder=&amp;hidSortDate=&amp;WorkPeriodCD=&amp;hidSort=&amp;hidSortFilter=Y&amp;hidListView=LIST&amp;WsSrchKeywordWord=&amp;hidWsearchInOut=&amp;hidSchContainText=')
					</script>
					<div class="pagenation img img3">
						<span class="page"> <a
							href="?page=1&amp;pagesize=50&amp;sidocd=&amp;gugun=&amp;dong=&amp;d_area=&amp;d_areacd=&amp;strAreaMulti=&amp;hidJobKind=&amp;hidJobKindMulti=&amp;WorkTime=&amp;searchterm=&amp;AcceptMethod=&amp;ElecContract=&amp;HireTypeCD=&amp;CareerCD=&amp;CareercdUnRelated=&amp;LastSchoolCD=&amp;LastSchoolcdUnRelated=&amp;GenderCD=&amp;GenderUnRelated=&amp;AgeLimit=0&amp;AgeUnRelated=&amp;PayCD=&amp;PayStart=&amp;WelfareCD=&amp;Special=&amp;WorkWeekCD=&amp;WeekDays=&amp;hidSortCnt=50&amp;hidSortOrder=&amp;hidSortDate=&amp;WorkPeriodCD=&amp;hidSort=&amp;hidSortFilter=Y&amp;hidListView=LIST&amp;WsSrchKeywordWord=&amp;hidWsearchInOut=&amp;hidSchContainText="
							class="on">1</a><a
							href="?page=2&amp;pagesize=50&amp;sidocd=&amp;gugun=&amp;dong=&amp;d_area=&amp;d_areacd=&amp;strAreaMulti=&amp;hidJobKind=&amp;hidJobKindMulti=&amp;WorkTime=&amp;searchterm=&amp;AcceptMethod=&amp;ElecContract=&amp;HireTypeCD=&amp;CareerCD=&amp;CareercdUnRelated=&amp;LastSchoolCD=&amp;LastSchoolcdUnRelated=&amp;GenderCD=&amp;GenderUnRelated=&amp;AgeLimit=0&amp;AgeUnRelated=&amp;PayCD=&amp;PayStart=&amp;WelfareCD=&amp;Special=&amp;WorkWeekCD=&amp;WeekDays=&amp;hidSortCnt=50&amp;hidSortOrder=&amp;hidSortDate=&amp;WorkPeriodCD=&amp;hidSort=&amp;hidSortFilter=Y&amp;hidListView=LIST&amp;WsSrchKeywordWord=&amp;hidWsearchInOut=&amp;hidSchContainText="
							class="page">2</a><a
							href="?page=3&amp;pagesize=50&amp;sidocd=&amp;gugun=&amp;dong=&amp;d_area=&amp;d_areacd=&amp;strAreaMulti=&amp;hidJobKind=&amp;hidJobKindMulti=&amp;WorkTime=&amp;searchterm=&amp;AcceptMethod=&amp;ElecContract=&amp;HireTypeCD=&amp;CareerCD=&amp;CareercdUnRelated=&amp;LastSchoolCD=&amp;LastSchoolcdUnRelated=&amp;GenderCD=&amp;GenderUnRelated=&amp;AgeLimit=0&amp;AgeUnRelated=&amp;PayCD=&amp;PayStart=&amp;WelfareCD=&amp;Special=&amp;WorkWeekCD=&amp;WeekDays=&amp;hidSortCnt=50&amp;hidSortOrder=&amp;hidSortDate=&amp;WorkPeriodCD=&amp;hidSort=&amp;hidSortFilter=Y&amp;hidListView=LIST&amp;WsSrchKeywordWord=&amp;hidWsearchInOut=&amp;hidSchContainText="
							class="page">3</a><a
							href="?page=4&amp;pagesize=50&amp;sidocd=&amp;gugun=&amp;dong=&amp;d_area=&amp;d_areacd=&amp;strAreaMulti=&amp;hidJobKind=&amp;hidJobKindMulti=&amp;WorkTime=&amp;searchterm=&amp;AcceptMethod=&amp;ElecContract=&amp;HireTypeCD=&amp;CareerCD=&amp;CareercdUnRelated=&amp;LastSchoolCD=&amp;LastSchoolcdUnRelated=&amp;GenderCD=&amp;GenderUnRelated=&amp;AgeLimit=0&amp;AgeUnRelated=&amp;PayCD=&amp;PayStart=&amp;WelfareCD=&amp;Special=&amp;WorkWeekCD=&amp;WeekDays=&amp;hidSortCnt=50&amp;hidSortOrder=&amp;hidSortDate=&amp;WorkPeriodCD=&amp;hidSort=&amp;hidSortFilter=Y&amp;hidListView=LIST&amp;WsSrchKeywordWord=&amp;hidWsearchInOut=&amp;hidSchContainText="
							class="page">4</a><a
							href="?page=5&amp;pagesize=50&amp;sidocd=&amp;gugun=&amp;dong=&amp;d_area=&amp;d_areacd=&amp;strAreaMulti=&amp;hidJobKind=&amp;hidJobKindMulti=&amp;WorkTime=&amp;searchterm=&amp;AcceptMethod=&amp;ElecContract=&amp;HireTypeCD=&amp;CareerCD=&amp;CareercdUnRelated=&amp;LastSchoolCD=&amp;LastSchoolcdUnRelated=&amp;GenderCD=&amp;GenderUnRelated=&amp;AgeLimit=0&amp;AgeUnRelated=&amp;PayCD=&amp;PayStart=&amp;WelfareCD=&amp;Special=&amp;WorkWeekCD=&amp;WeekDays=&amp;hidSortCnt=50&amp;hidSortOrder=&amp;hidSortDate=&amp;WorkPeriodCD=&amp;hidSort=&amp;hidSortFilter=Y&amp;hidListView=LIST&amp;WsSrchKeywordWord=&amp;hidWsearchInOut=&amp;hidSchContainText="
							class="page">5</a><a
							href="?page=6&amp;pagesize=50&amp;sidocd=&amp;gugun=&amp;dong=&amp;d_area=&amp;d_areacd=&amp;strAreaMulti=&amp;hidJobKind=&amp;hidJobKindMulti=&amp;WorkTime=&amp;searchterm=&amp;AcceptMethod=&amp;ElecContract=&amp;HireTypeCD=&amp;CareerCD=&amp;CareercdUnRelated=&amp;LastSchoolCD=&amp;LastSchoolcdUnRelated=&amp;GenderCD=&amp;GenderUnRelated=&amp;AgeLimit=0&amp;AgeUnRelated=&amp;PayCD=&amp;PayStart=&amp;WelfareCD=&amp;Special=&amp;WorkWeekCD=&amp;WeekDays=&amp;hidSortCnt=50&amp;hidSortOrder=&amp;hidSortDate=&amp;WorkPeriodCD=&amp;hidSort=&amp;hidSortFilter=Y&amp;hidListView=LIST&amp;WsSrchKeywordWord=&amp;hidWsearchInOut=&amp;hidSchContainText="
							class="page">6</a><a
							href="?page=7&amp;pagesize=50&amp;sidocd=&amp;gugun=&amp;dong=&amp;d_area=&amp;d_areacd=&amp;strAreaMulti=&amp;hidJobKind=&amp;hidJobKindMulti=&amp;WorkTime=&amp;searchterm=&amp;AcceptMethod=&amp;ElecContract=&amp;HireTypeCD=&amp;CareerCD=&amp;CareercdUnRelated=&amp;LastSchoolCD=&amp;LastSchoolcdUnRelated=&amp;GenderCD=&amp;GenderUnRelated=&amp;AgeLimit=0&amp;AgeUnRelated=&amp;PayCD=&amp;PayStart=&amp;WelfareCD=&amp;Special=&amp;WorkWeekCD=&amp;WeekDays=&amp;hidSortCnt=50&amp;hidSortOrder=&amp;hidSortDate=&amp;WorkPeriodCD=&amp;hidSort=&amp;hidSortFilter=Y&amp;hidListView=LIST&amp;WsSrchKeywordWord=&amp;hidWsearchInOut=&amp;hidSchContainText="
							class="page">7</a><a
							href="?page=8&amp;pagesize=50&amp;sidocd=&amp;gugun=&amp;dong=&amp;d_area=&amp;d_areacd=&amp;strAreaMulti=&amp;hidJobKind=&amp;hidJobKindMulti=&amp;WorkTime=&amp;searchterm=&amp;AcceptMethod=&amp;ElecContract=&amp;HireTypeCD=&amp;CareerCD=&amp;CareercdUnRelated=&amp;LastSchoolCD=&amp;LastSchoolcdUnRelated=&amp;GenderCD=&amp;GenderUnRelated=&amp;AgeLimit=0&amp;AgeUnRelated=&amp;PayCD=&amp;PayStart=&amp;WelfareCD=&amp;Special=&amp;WorkWeekCD=&amp;WeekDays=&amp;hidSortCnt=50&amp;hidSortOrder=&amp;hidSortDate=&amp;WorkPeriodCD=&amp;hidSort=&amp;hidSortFilter=Y&amp;hidListView=LIST&amp;WsSrchKeywordWord=&amp;hidWsearchInOut=&amp;hidSchContainText="
							class="page">8</a><a
							href="?page=9&amp;pagesize=50&amp;sidocd=&amp;gugun=&amp;dong=&amp;d_area=&amp;d_areacd=&amp;strAreaMulti=&amp;hidJobKind=&amp;hidJobKindMulti=&amp;WorkTime=&amp;searchterm=&amp;AcceptMethod=&amp;ElecContract=&amp;HireTypeCD=&amp;CareerCD=&amp;CareercdUnRelated=&amp;LastSchoolCD=&amp;LastSchoolcdUnRelated=&amp;GenderCD=&amp;GenderUnRelated=&amp;AgeLimit=0&amp;AgeUnRelated=&amp;PayCD=&amp;PayStart=&amp;WelfareCD=&amp;Special=&amp;WorkWeekCD=&amp;WeekDays=&amp;hidSortCnt=50&amp;hidSortOrder=&amp;hidSortDate=&amp;WorkPeriodCD=&amp;hidSort=&amp;hidSortFilter=Y&amp;hidListView=LIST&amp;WsSrchKeywordWord=&amp;hidWsearchInOut=&amp;hidSchContainText="
							class="page">9</a><a
							href="?page=10&amp;pagesize=50&amp;sidocd=&amp;gugun=&amp;dong=&amp;d_area=&amp;d_areacd=&amp;strAreaMulti=&amp;hidJobKind=&amp;hidJobKindMulti=&amp;WorkTime=&amp;searchterm=&amp;AcceptMethod=&amp;ElecContract=&amp;HireTypeCD=&amp;CareerCD=&amp;CareercdUnRelated=&amp;LastSchoolCD=&amp;LastSchoolcdUnRelated=&amp;GenderCD=&amp;GenderUnRelated=&amp;AgeLimit=0&amp;AgeUnRelated=&amp;PayCD=&amp;PayStart=&amp;WelfareCD=&amp;Special=&amp;WorkWeekCD=&amp;WeekDays=&amp;hidSortCnt=50&amp;hidSortOrder=&amp;hidSortDate=&amp;WorkPeriodCD=&amp;hidSort=&amp;hidSortFilter=Y&amp;hidListView=LIST&amp;WsSrchKeywordWord=&amp;hidWsearchInOut=&amp;hidSchContainText="
							class="page">10</a></span> <span class="total"
							onclick="$(this).toggleClass('twoBtn');"> <span
							class="totalBtn"><span class="state">2781페이지중 1-10</span>
								<a
								href="?page=1&amp;sidocd=&amp;gugun=&amp;dong=&amp;d_area=&amp;d_areacd=&amp;strAreaMulti=&amp;hidJobKind=&amp;hidJobKindMulti=&amp;WorkTime=&amp;searchterm=&amp;AcceptMethod=&amp;ElecContract=&amp;HireTypeCD=&amp;CareerCD=&amp;CareercdUnRelated=&amp;LastSchoolCD=&amp;LastSchoolcdUnRelated=&amp;GenderCD=&amp;GenderUnRelated=&amp;AgeLimit=0&amp;AgeUnRelated=&amp;PayCD=&amp;PayStart=&amp;WelfareCD=&amp;Special=&amp;WorkWeekCD=&amp;WeekDays=&amp;hidSortCnt=50&amp;hidSortOrder=&amp;hidSortDate=&amp;WorkPeriodCD=&amp;hidSort=&amp;hidSortFilter=Y&amp;hidListView=LIST&amp;WsSrchKeywordWord=&amp;hidWsearchInOut=&amp;hidSchContainText="
								class="first">맨 처음으로</a> <a
								href="?page=2781&amp;sidocd=&amp;gugun=&amp;dong=&amp;d_area=&amp;d_areacd=&amp;strAreaMulti=&amp;hidJobKind=&amp;hidJobKindMulti=&amp;WorkTime=&amp;searchterm=&amp;AcceptMethod=&amp;ElecContract=&amp;HireTypeCD=&amp;CareerCD=&amp;CareercdUnRelated=&amp;LastSchoolCD=&amp;LastSchoolcdUnRelated=&amp;GenderCD=&amp;GenderUnRelated=&amp;AgeLimit=0&amp;AgeUnRelated=&amp;PayCD=&amp;PayStart=&amp;WelfareCD=&amp;Special=&amp;WorkWeekCD=&amp;WeekDays=&amp;hidSortCnt=50&amp;hidSortOrder=&amp;hidSortDate=&amp;WorkPeriodCD=&amp;hidSort=&amp;hidSortFilter=Y&amp;hidListView=LIST&amp;WsSrchKeywordWord=&amp;hidWsearchInOut=&amp;hidSchContainText="
								class="last">맨 끝으로</a> </span>
						</span> <span class="pageBtn"><a
							href="?page=11&amp;pagesize=50&amp;sidocd=&amp;gugun=&amp;dong=&amp;d_area=&amp;d_areacd=&amp;strAreaMulti=&amp;hidJobKind=&amp;hidJobKindMulti=&amp;WorkTime=&amp;searchterm=&amp;AcceptMethod=&amp;ElecContract=&amp;HireTypeCD=&amp;CareerCD=&amp;CareercdUnRelated=&amp;LastSchoolCD=&amp;LastSchoolcdUnRelated=&amp;GenderCD=&amp;GenderUnRelated=&amp;AgeLimit=0&amp;AgeUnRelated=&amp;PayCD=&amp;PayStart=&amp;WelfareCD=&amp;Special=&amp;WorkWeekCD=&amp;WeekDays=&amp;hidSortCnt=50&amp;hidSortOrder=&amp;hidSortDate=&amp;WorkPeriodCD=&amp;hidSort=&amp;hidSortFilter=Y&amp;hidListView=LIST&amp;WsSrchKeywordWord=&amp;hidWsearchInOut=&amp;hidSchContainText="
							class="next">&gt;</a></span>
					</div>

					<!-- //페이징 -->
					<a name="adlist"></a>
				</div>
				<!-- //일반 채용정보 -->

				<iframe name="ifrScrap" class="hideFrame" title="빈 프레임"
					frameborder="0"></iframe>
				<script type="text/javascript">
	function jobscrapok(adid) { $('#joblistscrap'+adid).addClass('on'); }
	function jobscrapcancel(adid) { $('#joblistscrap'+adid).removeClass('on'); }
	</script>

				<!-- //일반 채용정보 -->


			</div>
		</form>
	</div>
</body>
</html>