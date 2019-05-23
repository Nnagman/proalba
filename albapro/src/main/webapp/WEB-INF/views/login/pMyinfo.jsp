<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"  href="resources/css/pMyinfo.css" />
<%@ include file = "../include/header.jsp" %>	
<script src="resources/js/signUp.js?ver=1"></script>

<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
<div class="contents">
	<div class="infoModiForm">
		<h3>회원정보수정</h3>
			<div class="infoModiFormInput">	
				<form name="signUpForm" method="post" action="pregisterModify">
					<table>
						<tbody>
						
							<tr>
								<th>아이디</th>
								<td>
									<input type="text" name="id" id="dev_idchk" class="tBox tId" maxlength="16" title="아이디" value=${login.id}>
								</td>
							</tr>
							<tr>
								<th>비밀번호</th>
								<td>
									<input type="password" name="password" class="tBox tPwd" id="dev_pwd1" maxlength="16" placeholder="6~16자 영문, 숫자, 특수문자" title="비밀번호" autocomplete="off">
								</td>
							</tr>
							<tr>
								<th>비밀번호 확인</th>
								<td>
									<input type="password" name="i_Pw" id="dev_pwdconfirm" class="tBox tPwd" maxlength="16"
									title="비밀번호확인" autocomplete="off">
									<p class="compul" id="passwd_success">비밀번호가 일치합니다.</p>
									<p class="compul" id="passwd_danger">비밀번호가 일치하지 않습니다.</p></td>
							</tr>
							<tr>
								<td colspan="2" class="tLine">
									<hr />	
								</td>
							</tr>
							<tr>
								<th>이름</th>
								<td>
									<input type="text" name="name" class="tBox" title="이름" id="dev_u_Name" maxlength="12">
								</td>
							</tr>
							<tr>
								<th>생년월일</th>
								<td>
									<input type="text" class="tBox joinBx tBirth" id="dev_born" name="birthday" maxlength="8" title="생년월일"
									placeholder="ex) 19900101">
								</td>
							</tr>


							<tr>
								<th>성별</th>
								<td>
									<input type="radio" class="sex" title="남자" name="sex" id="sex1" value="0"> 
										<label for="sex_male" class="sex_1">남자</label>
									<input type="radio" class="sex" title="여자" name="sex" id="sex2" value="1"> 
										<label for="sex_female" class="sex_1">여자</label>
									<p class="compul" id="txtGender"></p>
								</td>
							</tr>

							<tr>
								<th>이메일</th>
								<td>
									<input type="text" class="tBox tEmail" id="dev_M_Email" maxlength="25" title="이메일계정" autocomplete="off"> 
										<span> @</span> 
									<input type="text" name="EmailDomain" class="tBox tEmail email2" id="dev_mail_etc" maxlength="25" title="이메일계정">
									<select class="sel2 tEmail" name="email_select" id="email_select">
           								<option value="1">직접입력</option>
            							<option value="naver.com">네이버</option>
            							<option value="daum.net">다음</option>
            							<option value="gmail.com">구글</option>
            							<option value="hanmail.net">한메일</option>
            							<option value="nate.com">네이트</option>
          							</select>
								</td>
							</tr>

							<tr>
								<td colspan="2" class="tLine">
									<hr />
								</td>
							</tr>
							<tr>
								<th>휴대폰 번호</th>
								<td>
									<select id="dev_hphone1" name="Phone1" class="tBox joinBx tPhone" title="휴대폰 번호">
										<option value="010" selected>010</option>
										<option value="011">011</option>
										<option value="016">017</option>
										<option value="018">018</option>
										<option value="019">019</option>
									</select> - 
									<input id="dev_hphone2" name="Phone2" class="tBox tPhone" type="text" title="휴대폰 번호" value="" size="4" maxlength="4"
									autocomplete="off"> - 
									<input id="dev_hphone3" name="Phone3" class="tBox tPhone" type="text" title="휴대폰 번호"
									value="" size="4" maxlength="4" autocomplete="off">
									<input name="b_number" type="hidden">
									<input id="m_code" name="m_code" type="hidden" value="p">
								</td>
							</tr>
						</tbody>
					</table>
					<div class="btnfield">
						<!-- <input type="submit" id="btn_modi" value="수정하기"  onclick="CheckForm()"> -->
						<button type="submit" id="btn_modi" class="btn btn-dark" onclick="CheckForm()">수　　정</button>
					</div>
				</form>
			</div>
	</div>
</div>
</body>
</html>