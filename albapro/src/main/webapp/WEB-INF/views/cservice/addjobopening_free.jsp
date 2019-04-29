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

<form method="post">
<body>
	<div class="container">
	<br>
		<div class="addjobopening_title"><h2>채용 공고 등록</h2></div>
		<br>
		<div class="div_table_border">
			<h5>근무지 정보</h5>
			<table class="table_addjobopening">

				<tr>
					<td class="table-active">회사/점포명</td>
					<td><input type="text" name="com_name" value=""></td>
					<td class="table-active">대표자명(CEO)</td>
					<td><input type="text" name="ceo_name" value=""></td>
				</tr>

				<tr>
					<td class="table-active">설립년도</td>
					<td><input type="text" name="com_berth" value=""></td>
					<td class="table-active">직원수</td>
					<td><input type="text" name="emp_num" value=""></td>
				</tr>

				<tr>
					<td class="table-active">사업자등록번호</td>
					<td><input type="text" name="Business license number" value=""></td>
					<td class="table-active">홈페이지</td>
					<td><input type="text" name="homepage" value=""></td>
				</tr>

				<tr>
					<td class="table-active">회사/점포주소</td>
					<td><input type="text" name="com_addrass" value=""></td>
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
			<h5>담당자정보</h5>
			<table class="table_addjobopening">

				<tr>
					<td class="table-active">회사/점포명</td>
					<td><input type="text" name="com_name" value=""></td>
					<td class="table-active">대표자명(CEO)</td>
					<td><input type="text" name="ceo_name" value=""></td>
				</tr>

				<tr>
					<td class="table-active">설립년도</td>
					<td><input type="text" name="com_berth" value=""></td>
					<td class="table-active">직원수</td>
					<td><input type="text" name="emp_num" value="" /></td>
				</tr>
			</table>
			<br>
		</div>
		<br>
		<div class="div_table_border">
			<h5>근무지역</h5>
			<table class="table_addjobopening">

				<tr>
					<td class="table-active">근무지</td>
					<td>
						<div id="dev_sr_area_selectbox">
							<p id="dev_duty_code_0">
								<select class="Duty_Si_code0" name="Duty_Si_Code"
									style="width: 150px;" title="시/도 입력" required>
									<option value="F000">대구광역시</option>
								</select> <select class="Duty_Gu_Code0" name="Duty_Gu_Code"
									style="width: 150px;" title="시/군/구입력" required>
									<option value="F010">남구</option>
									<option value="F020">달서구</option>
									<option value="F020">달성군</option>
									<option value="F020">동구</option>
									<option value="F020">북구</option>
									<option value="F020">서구</option>
									<option value="F020">수성구</option>
									<option value="F020">중구</option>
								</select>
							</p>
						</div>
						<div class="div_Duty_ditail">
							<input type="text" name="Duty_ditail" value="">
						</div>
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
					<td><input type="radio" name="week_radio_1" value="">1주일
						이하 <input type="radio" name="week_radio_2" value="">1주일
						-1개월 <input type="radio" name="week_radio_3" value="">1개월-3개월
						<input type="radio" name="week_radio_4" value="">3개월-6개월 <input
						type="radio" name="week_radio_5" value="">6개월-1년 <input
						type="radio" name="week_radio_6" value="">1년 이상 <input
						type="radio" name="week_radio_7" value="">기간협의</td>
				</tr>

				<tr>
					<td class="table-active">근무요일</td>
					<td><select class="week" name="">
							<option value="none">선택</option>
							<option value="mon">월</option>
							<option value="tue">화</option>
							<option value="wed">수</option>
							<option value="thu">목</option>
							<option value="fri">금</option>
							<option value="sat">토</option>
							<option value="sun">일</option>
					</select></td>
				</tr>

				<tr>
					<td class="table-active">근무시간</td>
					<td><select class="se_walk_time" name="">
							<option value="none">선택</option>
							<option value="mon">오전</option>
							<option value="tue">오후</option>
							<option value="wed">세벽</option>
							<option value="thu">오전~오후</option>
							<option value="fri">오후~세벽</option>
							<option value="sat">풀타임</option>
					</select> 시간 <input type="text" name="walk_time" value=""></td>
				</tr>

				<tr>
					<td class="table-active">급여</td>
					<td>급여 <input type="text" name="walk_pay" value="">
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
					<td><input type="radio" name="gender_radio_1" value="">성별무관
						<input type="radio" name="gender_radio_2" value="">남자
						<input type="radio" name="gender_radio_3" value="">여자

					</td>
				</tr>

				<tr>
					<td class="table-active">연령</td>
					<td><input type="radio" name="age_radio_1" value="">연령
						무관 <input type="radio" name="age_radio_2" value="">연령제한 <input
						type="text" name="age_min" value="">세 이상 <input
						type="text" name="age_max" value=""></td>
				</tr>

				<tr>
					<td class="table-active">학력조건</td>
					<td><select class="se_walk_time" name="">
							<option value="none">선택</option>
							<option value="elementary">초졸</option>
							<option value="middle">중졸</option>
							<option value="high">고졸</option>
							<option value="college">초대졸</option>
							<option value="university">대졸</option>
							<option value="uniber">기타</option>

					</select></td>
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
						<input type="text" name="recruitment" value="">명 
						<input type="checkbox" name="recruitment_check_1" value="">0명 
						<input type="checkbox" name="recruitment_check_2" value="">00명
					</td>
				</tr>

				<tr>
					<td class="table-active">모집종료일</td>
					<td>
						<input type="text" name="end_recruitment" value="">
						<input type="checkbox" name="end_recruitment_check_1" value="">상시모집
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