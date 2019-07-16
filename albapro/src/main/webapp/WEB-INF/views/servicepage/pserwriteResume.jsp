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
	        		<a href="/" class="simple-text logo-normal">proalba</a>
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

						<form action="${path}/writeResume" id="form" method="post">

							<div class="col-md-12">

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
	   					$("#RegistBaseInfo").append(del_btn);
	   					console.log($('.file').val());
	   				}
	   			});
	   		});
	   		
	   		$("#RegistBaseInfo").on("click", ".file_del" , function(e){
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