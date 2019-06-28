<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>프로알바</title>
	
	<link href="resources/css/resume.css" rel="stylesheet">

	<!-- Custom fonts for this template-->
	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
 	
	<!-- Custom styles for this template-->
 	<!--  <link rel="stylesheet" href="resources/css/bootstrap.css" /> -->
	<link href="resources/css/servicepage/material-dashboard.css" rel="stylesheet">
	<link href="resources/css/servicepage/demo.css" rel="stylesheet">
    <link href="resources/css/servicepage/pservicepagecus.css" rel="stylesheet">
 

	<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script> 
  	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
 	<script src="resources/js/albamanage.js"></script>
	<script src="resources/js/cal/albamanage.js"></script>
	<script src="resources/js/cal/interaction.js"></script> 

	<style>
		.card{ width:100% !important; position:relative; margin-right:20px; }

  		.odd { background-color:#EAEAEA; }

		.Even { background-color : white; }
	</style>
</head>
<body>
	<div class="wrapper">
		<div class="div-sidebar">
	 		<div class="sidebar" data-color="purple" data-background-color="white" data-image="../assets/img/sidebar-1.jpg">
	      		<!--Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"
					Tip 2: you can also add an image using data-image tag -->
	      		<div class="logo">
	        		<a href="/proalba" class="simple-text logo-normal">proalba</a>
				</div>
	      		<div class="sidebar-wrapper">
			        <ul class="nav">
						<li class="nav-item">
			          		<a class="nav-link" href="pserworkList?id=${login.id}">
								<i class="material-icons">dashboard</i>
								알바목록
							</a>
						</li>
						<li class="nav-item ">
			            	<a class="nav-link" href="contract?id=${login.id}">
								<i class="material-icons">dashboard</i>
			            	 	전자근로 계약서
							</a>
						</li>
						<li class="nav-item ">
			            	<a class="nav-link" href="inqcareer?id=${login.id}">
							<i class="material-icons">library_books</i>
							경력 관리
							</a>
						</li>
						<li class="nav-item active">
							<a class="nav-link" href="listResume?id=${login.id}">
							<i class="material-icons">library_books</i>
							이력서 관리
			            	</a>
			            </li>
			        </ul>
			        <div class="nav-itemsub">
			        	<ul>
			        		<li><a class="nav-link" href="listResume?id=${login.id}"> 이력서 목록 </a></li>
			        		<li><a class="nav-link" href="writeResume?id=${login.id}"> 이력서 작성 </a></li>
			        	</ul>
			        </div>
				</div>
			</div> <!-- End of Sidebar -->
		</div>
		<div class="content">
			<div class="pser-header"> <%@ include file="pserNavHeader.jsp"%> </div>
			<div class="pser-con"><div class="container-fluid"><div class="row"><div class="col-md-12"><div class="card">
				<div class="card-header card-header-primary">
					<h4 class="card-title ">이력서 작성</h4>
					<p class="card-category">
						${login.name} 님만의 이력서를 작성해보세요.
					</p>
				</div>
				<div class="card-body">
					<div class="row">
						<form action="${path}/proalba/writeResume" id="form" method="post">
							<div class="col-md-12" style="margin-left: 350px">
								<h2><span class="necessary">필수</span>개인정보</h2>
								<span class="comment">개인정보는 비공개로 설정하셔도 입사지원시 지원업체에 공개됩니다.</span>
								<hr/>
								<div id="RegistBaseInfo" class="registArea">
									<div class="guide">사진을 드래그해서 올려주세요.</div>
									<div class="photoArea">
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
					</div>
				</div>
			</div></div></div></div></div>
			<div class="pser-footer"><%@ include file="pserfooter.jsp"%></div>
		</div>
	</div>
  	<script type="text/javascript" src="resources/js/jquery-3.4.0.min.js"></script>
   	<script src="resources/js/servicepage2/popper.min.js"></script>
   	<script src="resources/js/servicepage2/jquery.dataTables.min.js"></script>
   	<script src="resources/js/servicepage2/demo.js"></script>
   	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
   	<script type="text/javascript" src="resources/js/common.js"></script>
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
	   				url: "${path}/proalba/upload/uploadAjax",
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
	   					$("#RegistBaseInfo").append(del_btn);
	   				}
	   			});
	   		});
	   		
	   		$("#RegistBaseInfo").on("click", ".file_del" , function(e){
	   			var that = $(this);
	   			$.ajax({
	   				type: "post",
	   				url: "${path}/proalba/upload/deleteWriteFile",
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
	   			
	   			var high_school = document.getElementsByClassName("high_school")[0].value;
	   			high_school += "+" + document.getElementsByClassName("high_school")[1].value;
	   			high_school += "+" + document.getElementsByClassName("high_school")[2].value;
	   			high_school += "+" + document.getElementsByClassName("high_school")[3].value;
	   			
	   			var college = document.getElementsByClassName("college")[0].value;
	   			college += "+" + document.getElementsByClassName("college")[1].value;
	   			college += "+" + document.getElementsByClassName("college")[2].value;
	   			college += "+" + document.getElementsByClassName("college")[3].value;
	   			
	   			var university = document.getElementsByClassName("university")[0].value;
	   			university += "+" + document.getElementsByClassName("university")[1].value;
	   			university += "+" + document.getElementsByClassName("university")[2].value;
	   			university += "+" + document.getElementsByClassName("university")[3].value;
	   			
	   			var graduate_school = document.getElementsByClassName("graduate_school")[0].value;
	   			graduate_school += "+" + document.getElementsByClassName("graduate_school")[1].value;
	   			graduate_school += "+" + document.getElementsByClassName("graduate_school")[2].value;
	   			graduate_school += "+" + document.getElementsByClassName("graduate_school")[3].value;
	   			
	   			var education = high_school + "/" + college + "/" + university + "/" + graduate_school;
	   			$("#education").val(education);
	   			
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
</body>
</html>