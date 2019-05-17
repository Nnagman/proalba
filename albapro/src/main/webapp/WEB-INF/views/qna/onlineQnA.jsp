<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.3.1.slim.js" integrity="sha256-fNXJFIlca05BIO2Y5zh1xrShK3ME+/lYZ0j+ChxX2DA=" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="resources/css/onlineQnA.css?ver=2">
<script type="text/javascript" src="resources/js/onlineQnA.js?ver=4"></script>
<title>온라인알바-프로알바</title>
</head>
<body>
<%@ include file = "../include/header.jsp" %>
	<form action="" method="POST">
	<div class="contents">
		<div class="title"> <h1>온라인 문의</h1> </div> <br>
		<div class="god">
			<h5 class="mm">문의하실 내용을 작성하신 후 보내기 버튼을 클릭하세요.</h5>
			<div class="box">
				<table border="1">
					<tr>
						<th class="tt"><span class="sp">*</span><span class="sp1">문의유형</span></th>
						<td>
							<select class="ff" id="type_of_inquiry" name="type_of_inquiry" onchange="categoryChange(this)">
								<option value="0">선택해주세요.</option>
								<option value="1">정보수정</option>
								<option value="2">구인공고 등록</option>
								<option value="3">이력서 작성</option>
								<option value="4">채용정보검색</option>
								<option value="5">결제문의</option>
								<option value="6">모바일 서비스</option>
								<option value="7">제안</option>
								<option value="8">기타</option>
							</select>
							<select class="ff" id="detail_of_inquiry" name="detail_of_inquiry">
								<option value="0">선택해주세요.</option>
							</select>
						</td>
					</tr>
					<tr>
						<th class="tt"><span class="sp">*</span><span class="sp1">제목</span></th>
						<td><input type="text" class="tex1" id="title" name="title" maxlength="50"></td>
					</tr>
					<tr>
						<th><span class="sp">*</span><span class="sp1" name="content">문의내용</span></th>
						<td>
							<textarea class="tex4" id="kkk" cols="84" rows="12" maxlength="500" name="content"></textarea>
							<span class="sp">(500자 이내)</span>
						</td>
					</tr>
					<tr>
						<th class="tf"><span class="sp1">첨부파일</span></th>
						<td>
							<input type="file" size="70" name="filename"><br>
							<p class="p1">2.5MB 이하의 이미지 파일(jpg, jpeg, png, gif, bmp)만 가능합니다.</p>
						</td>
					</tr>
					<tr>
						<th class="tt"><span class="sp">*</span><span class="sp1">작성자</span></th>
						<td><input type="text" id="usernm" class="tex2" maxlength="20" name="name"></td>
					</tr>
					<tr>
						<th class="tt"><span class="sp">*</span><span class="sp1">이메일</span></th>
						<td>
							<input type="text" id="email1" class="tex2" maxlength="25">
							@ <input type="text" class="tex2" maxlength="25" name="email2" id="email2">
							<select class="sel2" name="email_select" id="email_select">
								<option value="1">직접입력</option>
								<option value="naver.com">네이버</option>
								<option value="daum.net">다음</option>
								<option value="gmail.com">구글</option>
								<option value="hanmail.net">한메일</option>
								<option value="nate.com">네이트</option>
							</select>
						</td>
					</tr>
					<tr class="noborder">
						<th class="tt"><span class="sp">*</span><span class="sp1">휴대폰 번호</span></th>
						<td class="noborder">
							<select class="sel1" id="tel1" name="tel1">
								<option value="선택">선택</option>
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
							</select> - 
							<input class="tex3" id="tel2" type="text" onkeypress="onlyNumber();" maxlength="4" /> - <input class="tex3" id="tel3" type="text" onkeypress="onlyNumber();" maxlength="4" />
					</tr>
				</table>
			</div> <br><br><br>
			<div>
				<h5 class="vv">개인정보 수집 및 이용동의 안내</h5>
				<table class="tab2" border="1">
					<tr>
						<th class="td"><h5>수집주체</h5></th>
						<td><span class="sp10">A-Team</span></td>
					</tr>
					<tr>
						<th class="td"><h5>수집항목</h5></th>
						<td><span class="sp10">작성자, 이메일, 휴대폰번호</span></td>
					</tr>
					<tr>
						<th class="td"><h5>수집목적</h5></th>
						<td><span class="sp10">온라인 문의 내용 답변 안내</span></td>
					</tr>
					<tr>
						<th class="td"><h5>보유기간</h5></th>
						<td class="noborder"><span class="sp10">온라인 문의 완료 후, 관련법령에 의해 3년 후 파기</span></td>
					</tr>
				</table>
			</div> <br><br><br>
			<span class="checkbox" name="agreement_inputbox on">
				<input type="checkbox" name="agree" id="agree" class="agreement_input" value="true">
				<label for="agree" class="agreement_label">개인정보 수집 및 이용에 동의 합니다.</label>
				<input type="hidden" name="m_code" value="${login.m_code}"/>
			</span> <br><br>
			<button type="button" class="bt1" id="bt1" onclick="fnOnlineSubmit()">보내기</button>
		</div>
	</div>
	</form>
</body>
</html>