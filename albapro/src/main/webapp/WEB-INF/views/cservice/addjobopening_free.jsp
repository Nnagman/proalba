<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
	
	
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>프로알바</title>

<!-- 부트스트랩 -->
<link rel="stylesheet" href="resources/css/bootstrap.css" />

<!-- 자체 css -->
<link rel="stylesheet" href="resources/css/addjobopening_free.css" />
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
</head>
<%@ include file="../include/header.jsp"%>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="resources/js/addjobopening.js?ver=3"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>
  var sel_file;
	$(function() {
		$("#startSearchDate").datepicker(
				{
					dateFormat : 'yy-mm-dd',
					prevText : '이전 달',
					nextText : '다음 달',
					showOn : "both",
					buttonImage : "resources/images/date1.png",
					changeMonth : true,
					changeYear : true,
					changeMonth : true,
					dayNames : [ '월', '화', '수', '목', '금', '토', '일' ],
					dayNamesShort : [ '월', '화', '수', '목', '금', '토', '일' ],
					dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
					monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월',
							'7월', '8월', '9월', '10월', '11월', '12월' ],
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
							'8월', '9월', '10월', '11월', '12월' ],
					showMonthAfterYear : true,
					yearSuffix : '년'
				});
	});

  $(document).ready(function() {
    $("#input_img").on("change", imgServerUp);
    
    function imgServerUp(e){

		var files = e.target.files; // 드래그한 파일들
		//console.log(files);
		var file = files[0]; // 첫번째 첨부파일
		var formData = new FormData(); // 폼데이터 객체
		formData.append("file", file); // 첨부파일 추가
		var filesArr = Array.prototype.slice.call(files);
		
         filesArr.forEach(function(f) {
            if (!f.type.match("image.*")) {
              alert("이미지만 가능");
              return;
            }
        }); 
			$.ajax({
				url: "${path}/addjob/upload",
				type: "post",
				data : formData,
				dataType: "text",
				processData: false, // processType: false - header가 아닌 body로 전달
				contentType: false,
				success: function(data){

					console.log("file_data: "+data);
					// 첨부 파일의 정보
					//var fileInfo = getFileInfo(data);
					
					if($("#sumImg").html() != ""){
						$.ajax({
							type: "post",
							url: "${path}/addjob/deleteServerFile",
							data: {fileName: $(".file_del").attr("data-src")},
							dataType: "text",
							success: function(result){
								if(result=="deleted"){
									$("#sumImg").empty();
									appendImg();
								}
							}
						});					
					}else{
						appendImg();
					}
					
					
					function appendImg(){
						// hidden 태그 추가
						var html = "<div><input type='hidden' name='file' value='"+data+"'>";
						// 미리보기 추가
						html += "<img class='attImg' style='width: 125%; max-width: 760px; height:80% ' src='<spring:url value='/resources" + data+ "'/>'/>";
						//삭제 태그 추가 
						html += "<a href='#' class='file_del' data-src='"+data+"'>[삭제]</a></div>";
						
						// div에 추가
						$("#sumImg").append(html); 
						
					}
					
					
				}     
        	}); 	
  	   }
    
	$("#sumImg").on("click", ".file_del" , imgServerDelete);
	
	function imgServerDelete(e){
		var that = $(this);
		$.ajax({
			type: "post",
			url: "${path}/addjob/deleteServerFile",
			data: {fileName:$(this).attr("data-src")},
			dataType: "text",
			success: function(result){
				if(result=="deleted"){
					that.parent("div").remove();
				}
			}
		});
	}
    
    
  });
/* 
  function e(e) {
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
  } */
</script>
<body id="1">
<form method="post" action="addjobopening_free">
	<div class="container">
	<input type="hidden" id="id" name="custId" value='${login.id}'/>
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
							<div id="sumImg" ></div>
						</div> <input type="file" class="fileupload" id="input_img" name="inputFile" value="">
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
							<input type="text" class="tBox tAddr" id="sample6_extraAddress" name="Address4" placeholder="참고항목">
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
						</select>	시간	<input type="text" name="work_time2" value=" ">
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
						<input type="radio" name="age_set" id="age_set" value="1">연령무관
						<input type="text" name="age_min" id="age_min" value=" ">세 이상
						<input type="text" name="age_max" id="age_max" value=" ">세 이하
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
			<h5>모집종료일</h5>
			<table class="table_addjobopening">
				<tr>
					<td class="table-active">모집종료일</td>
					<td>
						<input type="text" id="startSearchDate" name="end_date" value="" style="height: 18px; width: 120px">
					</td>
				</tr>
			</table>
		</div>
		<br>
		<div class="div_table_border">
			<h5>추가내용</h5>
			<table class="table_addjobopening">
				<tr>
					<td>
						<textarea rows="5" cols="100" id="content" name="content"></textarea>
					</td>
				</tr>
			</table>
		</div>
		<br>
		
		<div class="buttonline_addjobopening_free">
			<input type="submit" id="submit" value="등록" />
		</div> <br>
	</div>
</form>
	<%@ include file="../include/footer.jsp"%>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
	<script src="resources/js/bootstrap.js"></script>
</body>
</html>