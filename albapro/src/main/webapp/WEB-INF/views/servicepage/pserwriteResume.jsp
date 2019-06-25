<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
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
							<a class="nav-link" href="writeResume?id=${login.id}">
							<i class="material-icons">library_books</i>
							이력서 관리
			            	</a>
			            </li>
			        </ul>
			        <div class="nav-itemsub">
			        	<ul>
			        		<li><a class="nav-link" href="writeResume?id=${login.id}"> 이력서 목록 </a></li>
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
						<h2>이력서 작성</h2>
						<hr/>	
						<div class="col-md-12" style="margin-left: 350px">
							<h2><span class="necessary">필수</span>개인정보</h2>
							<span class="comment">개인정보는 비공개로 설정하셔도 입사지원시 지원업체에 공개됩니다.</span>
							<hr/>
							<div id="RegistBaseInfo" class="registArea">
								<div class="photoArea">
									<span class="photo" id="photo">
										<a href=""></a>
									</span>
									<span class="applyBtn">
										<!-- 사진없을 때 -->
										<span id="picReigst" style="">
											<a class="noImgReg" href="#">사진등록</a>
										</span>
										<!-- //사진없을 때 -->
										<!-- 사진있을 때 -->
										<span id="picModify" style="display: none;">
											<span class="modifyBtn">
												<a class="imgModify" href="#">변경</a>
												<a class="imgdel" href="#">삭제</a>
											</span>
										</span>
										<!-- //사진있을 때 -->
									</span>
								</div>
								<div class="baseInfo">
									<table cellpadding="0" cellspacing="0" summary="개인정보인 휴대폰,유선전화,안심번호,이메일,주소,홈페이지 항목의 표입니다.">
										<tbody>
											<tr>
												<td class="item">휴대폰</td>
												<td class="infoContents hpNumber">
													<div class="contentsBox">
														<span class="number" id="idResumeHtel">010-3255-0661</span>
														<span class="cert" style="display:">
															<span id="htelcertYES">
																<span class="icon certYes">휴대폰 인증</span>
															</span>
															<span id="htelcertNO" style="display:none">
																<span class="icon certNo">휴대폰 미인증</span>
																<a href="#">휴대폰 인증하기</a>
															</span>
														</span>
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
									<input type="text" id="title" name="title" value="" maxlength="25"/>
									<label for="title">이력서 제목 (최대 25자)</label>
								</div>
							</div>
							
							<div id="RegistIntroduce" class="registArea">
								<h2><span class="necessary">필수</span>자기소개서</h2>
								<div class="registForm">
									<!-- 자유양식 -->
									<div id="FreeDoc" class="introduceWrap">
										<div class="resizable-textarea">
											<span>
												<textarea id="resumeContents" name="resumeContents" cols="30" rows="10" onkeyup="limitTextNum('resumeContents',5000,'contentspan'); chkContEss(); _REGFRM.alertmsgdel(this, '', '#FreeDoc');" class="processed"></textarea>
											</span>
										</div>
									</div>
									<!-- //자유양식 -->
								</div>
							</div>
							<input type='submit' class="submitbtn" value="작성완료" id="submit2"/>
						</div>
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
   	<script>
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
		            } else { // 사용자가 지번 주소를 선택했을 경우(J)
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
		
		var oaddress0 = $('#sample6_postcode');
		var oaddress1 = $('#sample6_address');
		var paddress0 = "${list[0].address}";

		console.log(paddress0.substring(0,5));
		console.log(paddress0.substring(6,paddress0.lastIndexOf('/')));
		oaddress0.val(paddress0.substring(0,5));
		oaddress1.val(paddress0.substring(6,paddress0.lastIndexOf('/')));
	</script>  
</body>
</html>