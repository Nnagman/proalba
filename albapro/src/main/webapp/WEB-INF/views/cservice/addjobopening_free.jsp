<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>부트스트랩 101 템플릿</title>

<!-- 부트스트랩 -->
<link rel="stylesheet" href="resources/css/bootstrap.css" />

<!-- 자체 css -->
<link rel="stylesheet" href="resources/css/addjobopening_free.css" />
</head>
<%@ include file="../include/header.jsp"%>

<c:if test='${fn:substring(login.m_code,0,1) == "c" && login.m_code != null}'>
<%@ include file = "../include/cmenu.jsp" %>
</c:if>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="resources/js/addjobopening.js?ver=1"></script>



<script type="text/javascript">
  var sel_file;

  $(document).ready(function() {
    $("#input_img").on("change", handleImgFileSelect);
  });

  function handleImgFileSelect(e) {
    var files = e.target.files;
    var filesArr = Array.prototype.slice.call(files);

    filesArr.forEach(function(f) {
      if (!f.type.match("image.*")) {
        alert("이미지만 가능");
        return;
      }

      sel_file = f;

      var reader = new FileReader();
      reader.onload = function(e) {
        $("#img").attr("src", e.target.result);
      }
      reader.readAsDataURL(f);
    });
  }
</script>
<body>
<form method="post">
	<div class="container">
	<br>
		<div class="addjobopening_title"><h2>채용 공고 등록</h2></div>
		<br>
		<div class="div_table_border">
			<h5>근무지 정보</h5>
			<table class="table_addjobopening">
			
				<tr>
					<td class="table-active">공고제목</td>
					<td><input type="text" name="title" value="" style="width: 200%;"></td>
				</tr>	

				<tr>
					<td class="table-active">회사/점포명</td>
					<td><input type="text" name="work_place_name" value=""></td>
					<td class="table-active">대표자명(CEO)</td>
					<td><input type="text" name="c_name" value=""></td>
				</tr>

				<tr>
					<td class="table-active">모집인원</td>
					<td><input type="text" name="personnel" value=""></td>
				</tr>

				<tr>
					<td class="table-active">회사로고</td>
					<td>
						<div class="img_wrap">
							<img id="img" />
						</div> <input type="file" class="fileupload" id="input_img" name=""
						value="">
					</td>
				</tr>

			</table>
		</div>
		<br>
		<div class="div_table_border">
			<h5>근무지역</h5>
			<table class="table_addjobopening">

				<tr>
					<td class="table-active">근무지</td>
						<td>
							<input type="text" class="tBox tAddr" id="sample6_postcode" name="Address1" placeholder="우편번호">
							<input type="button" id="find_addr" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
							<input type="text" class="tBox tAddr" id="sample6_address" name="Address2" placeholder="주소" style="width: 50%;"><br>
							<input type="text" class="tBox tAddr" id="sample6_detailAddress" name="Address3" placeholder="상세주소" style="width: 50%;"><br>
							<input type="text" class="tBox tAddr" id="sample6_extraAddress" name="Address4" placeholder="참고항목" style="width: 50%;"><br>
						</td>
					</tr>
			</table>
		</div>
		<br>
		<div class="div_table_border">
			<h5>근무조건</h5>
			<table class="table_addjobopening">


				<tr>
					<td class="table-active">근무기간</td>
					<td><input type="radio" name="term" value="1">1주일이하
						<input type="radio" name="term" value="2">1주일-1개월
						<input type="radio" name="term" value="3">1개월-3개월
						<input type="radio" name="term" value="4">3개월-6개월 
						<input type="radio" name="term" value="5">6개월-1년
						<input type="radio" name="term" value="6">1년 이상
						<input type="radio" name="term" value="0">기간협의</td>
				</tr>

				<tr>
					<td class="table-active">근무요일</td>
					<td>
						<select name="work_day" class="week">
							<option value="none">선택</option>
							<option value="1">평일</option>
							<option value="2">주말</option>
							<option value="3">기간협의</option>
						</select>
					</td>
				</tr>

				<tr>
					<td class="table-active">근무시간</td>
					<td>
						<select class="se_walk_time" name="work_time1">
							<option value="none">선택</option>
							<option value="1">오전</option>
							<option value="2">오후</option>
							<option value="3">세벽</option>
							<option value="4">오전~오후</option>
							<option value="5">오후~세벽</option>
							<option value="6">풀타임</option>
						</select>	시간	<input type="text" name="work_time2" value="">
					</td>
				</tr>

				<tr>
					<td class="table-active">급여</td>
					<td>급여 <input type="text" name="hour_wage" value="">
					</td>
				</tr>
			</table>
		</div>
		<br>

		<div class="div_table_border">
			<h5>지원조건</h5>
			<table class="table_addjobopening">


				<tr>
					<td class="table-active">성별</td>
					<td><input type="radio" name="sex" value="1">성별무관
						<input type="radio" name="sex" value="2">남자
						<input type="radio" name="sex" value="3">여자

					</td>
				</tr>

				<tr>
					<td class="table-active">연령</td>
					<td>
						<input type="radio" name="age_set" value="">연령무관
						<input type="radio" name="age_set" value="">연령제한 
						<input type="text" name="age_min" value="">세 이상
						<input type="text" name="age_max" value="">세 이하
					</td>
				</tr>

				<tr>
					<td class="table-active">학력조건</td>
					<td>
						<select class="se_walk_time" name="education">
							<option value="none">선택</option>
							<option value="1">초졸</option>
							<option value="2">중졸</option>
							<option value="3">고졸</option>
							<option value="4">초대졸</option>
							<option value="5">대졸</option>
							<option value="6">무관</option>
						</select>
					</td>
				</tr>
			</table>
		</div>
		<br>
		<div class="div_table_border">
			<h5>모집인원</h5>
			<table class="table_addjobopening">

				<tr>
					<td class="table-active">모집인원</td>
					<td>
						<input type="text" name="personnel" value="">명 
					</td>
				</tr>

				<tr>
					<td class="table-active">모집종료일</td>
					<td>
						<input type="text" name="end_date" value="">
						<input type="checkbox" name="end_date" value="">상시모집
					</td>
				</tr>
			</table>
		</div>
		<br>
		
		<div class="buttonline_addjobopening_free">
		<input type="submit" value="등록" />
		<button type="button" class="btn btn-default btn-lg active">취소</button>
		</div>
		<br>
	</div>
</form>
	<%@ include file="../include/footer.jsp"%>
	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script src="resources/js/jquery.js"></script>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
	<script src="resources/js/bootstrap.js"></script>
</body>
</html>