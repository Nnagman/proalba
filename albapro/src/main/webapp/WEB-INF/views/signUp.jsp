<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="resources/js/addressAPI.js"></script>
<link rel="stylesheet" href="resources/css/signUp.css">
</head>

<body>
	<div id="wrap">
		<hr>
		<div class="header">
			<img src="resources/images/프로알바ver2.png" alt="logo" width="15%" height="110%" />
			<h1>회원가입</h1>
		</div>
		<div id="container">
			<div id="content">
				<div class="signUpForm-header">
					<h1>개인 회원가입</h1>
				</div>

				<!-- 회원 정보 입력 폼 -->

				<form name="signUpForm" method="post" action="">
					<table>
						<tbody>


							<tr>
								<th>아이디</th>
								<td><input type="text" name="userId" id="dev_idchk"
									class="tBox tPwd" maxlength="16" placeholder="6~16자 영문, 숫자"
									title="아이디">
									<p class="compul">아이디를 입력해주세요.</p> <input id="dev_userIdStat"
									name="dev_userIdStat" type="hidden" value="N"></td>
							</tr>



							<tr>
								<th>비밀번호</th>
								<td><input type="password" name="userpPwd"
									class="tBox tPwd" id="dev_pwd1" maxlength="16"
									placeholder="6~16자 영문, 숫자, 특수문자" title="비밀번호"
									autocomplete="off">
									<p class="compul txtN" id="PwdSafeResult">비밀번호를 입력해주세요.</p> <input
									id="dev_pwdchkStat" name="dev_pwdchkStat" type="hidden"
									value="N"></td>
							</tr>



							<tr>
								<th>비밀번호 확인</th>
								<td><input type="password" name="userPwd2"
									id="dev_pwdconfirm" class="tBox tPWd" maxlength="16"
									title="비밀번호확인" autocomplete="off">
									<p class="compul" id="dev_chk_pwd_confirm">비밀번호가 일치하지 않습니다.</p>
								</td>
							</tr>

							<tr>
								<td colspan="2" class="tLine">
									<div></div>
								</td>
							</tr>

							<tr>
								<th>이름</th>
								<td><input type="text" name="Name" class="tBox" title="이름"
									id="dev_u_Name" maxlength="12">
									<p class="compul">이름을 입력해주세요.</p> <input id="namechkStat"
									name="dev_namechkStat" type="hidden" value="N"></td>
							</tr>



							<tr>
								<th>생년월일</th>
								<td><input type="text" class="tBox joinBx tBirth"
									id="dev_born" name="birth" maxlength="8" title="생년월일"
									placeholder="ex) 19900101">
									<p class="compul" id="txtBirth">생년월일을 입력해주세요.</p></td>
							</tr>


							<tr>
								<th>성별</th>
								<td><input type="radio" class="sex" title="남자"
									id="sex_male" value="0"> <label for="sex_male">남자</label>
									<input type="radio" class="sex" title="여자" id="sex_female"
									value="1"> <label for="sex_female">여자</label>
									<p class="compul" id="txtGender"></p></td>
							</tr>

							<tr>
								<th>이메일</th>
								<td><input type="text" id="emailId" class="tBox tEmail"
									id="dev_M_Email" maxlength="25" title="이메일계정"
									autocomplete="off"> <span> @</span> <input type="text"
									name="EmailDomain" class="tBox tEmail" id="dev_mail_etc"
									maxlength="25" title="이메일계정"
									onfocus="mon.account.regist.core.reg.emailChk1()">
									<p class="compul" id="txtEmail">이메일을 올바르게 입력해주세요.</p> <input
									id="dev_mailChkStat" name="dev_mailChkStat" type="hidden"
									value="N"></td>
							</tr>

							<tr>
								<td colspan="2" class="tLine">
									<div></div>
								</td>
							</tr>


							<tr>
								<th>휴대폰 번호</th>
								<td><select id="dev_hPhone1" name="Phone1"
									class="tBox joinBx tPhone" title="휴대폰 번호">
										<option value="010" selected>010</option>
										<option value="011">011</option>
										<option value="016">017</option>
										<option value="018">018</option>
										<option value="019">019</option>
								</select> - <input id="dev_hphone2" name="Phone2" class="tBox tPhone"
									type="text" title="휴대폰 번호" value="" size="4" maxlength="4"
									autocomplete="off"> - <input id="dev_hphone3"
									name="Phone3" class="tBox tPhone" type="text" title="휴대폰 번호"
									value="" size="4" maxlength="4" autocomplete="off">
									<p class="compul" id="txtCert">휴대폰 번호를 입력해주세요.</p> <input
									id="dev_phoneChkStat" name="dev_phoneChkStat" type="hidden"
									value="N"></td>
							</tr>

							<tr>
								<th>주소</th>
								<td><input type="text" class="tBox tAddr" id="postCode"
									placeholder="우편번호"> <input type="button"
									onclick="execDaumPostcode()" value="우편번호 찾기"><br>
									<input type="text" class="tBox tAddr" id="address"
									placeholder="주소"> <input type="text" class="tBox tAddr"
									id="detailAddress" placeholder="상세주소"></td>
							</tr>
						</tbody>
					</table>
					<div class="btnfield">
						<input type="submit" value="회원가입">
					</div>
				</form>
			</div>
		</div>
	</div>
</body>

</html>