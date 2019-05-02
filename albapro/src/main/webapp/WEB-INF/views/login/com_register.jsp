<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업회원 가입</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="resources/js/signUp.js?ver=3"></script>
<link rel="stylesheet" href="resources/css/signUp.css">
</head>
<body>
	<div id="wrap">
		<hr>
		<div class="header">
			<img src="resources/images/프로알바ver3.png" alt="logo" width="200px"
				height="150px" />
			<h1>회원가입</h1>
		</div>
		<div id="container">
			<div id="content">
				<div class="signUpForm-header">
					<h1>기업회원 가입</h1>
				</div>

				<!--개인 정보 동의 -->
				<form id="agree_form" method="post" action="">
					<div class="all_agree">
						<p>
							<label></label> <input type="checkbox" id="all" name="all" />
							전체약관동의<br />
						</p>

						<p>
							<label> &nbsp;&nbsp;<input type="checkbox" id="c1"
								name="c1" /> 프로알바 이용약관 동의 (필수)<br />
							</label>
						</p>
						<p>
							<label> &nbsp;&nbsp;<input type="checkbox" id="c2"
								name="c2" /> 개인정보 처리방침 동의 (필수)<br />
							</label>
						</p>
						<p>
							<label> &nbsp;&nbsp;<input type="checkbox" id="c3"
								name="c3" /> 이메일, SMS알림 수신 동의 (선택)<br />
							</label>
						</p>
					</div>
				</form>

				<!-- 회원 정보 입력 폼 -->

				<form name="signUpForm" method="post" action="cregister">
				
					<table>
						<tbody>
							<tr>
								<th>아이디</th>
								<td>
									<input type="text" name="id" id="dev_idchk"
									class="tBox tId" maxlength="16" placeholder="6~16자 영문, 숫자" title="아이디" value="" />
									<input type="button" id="double_check" value="중복확인" />
								</td>
							</tr>



							<tr>
								<th>비밀번호</th>
								<td><input type="password" name="password"
									class="tBox tPwd" id="dev_pwd1" maxlength="16"
									placeholder="6~16자 영문, 숫자, 특수문자" title="비밀번호"
									autocomplete="off"></td>
							</tr>



							<tr>
								<th>비밀번호 확인</th>
								<td><input type="password" name="password2"
									id="dev_pwdconfirm" class="tBox tPWd" maxlength="16"
									title="비밀번호확인" autocomplete="off">
									<p class="compul" id="passwd_success">비밀번호가 일치합니다.</p>
									<p class="compul" id="passwd_danger">비밀번호가 일치하지 않습니다.</p></td>
							</tr>

              <tr>
								<th>휴대폰 번호</th>
								<td><select id="dev_hphone1" name="Phone1"
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
									value="" size="4" maxlength="4" autocomplete="off"></td>
							</tr>


							<tr>
								<td colspan="2" class="tLine">
									<div></div>
								</td>
							</tr>


              <tr>
                <th>사업자등록번호</th>
                <td>
                  <input type="text" class="tBox comName" name="b_number" id="comName" size="10" maxlength="10">
                    <input type="button" name="comName_check" id="comName_check" value="확인">
                    <input name="name" type="hidden">
                    <input name="email" type="hidden">
                    <input name="birthday" type="hidden">
                    <input name="sex" type="hidden">
                    <input id="m_code" name="m_code" type="hidden" value="c">
                </td>
              </tr>
						</tbody>
					</table>
					<div class="btnfield">
						<input type="submit" id="btn_signup" value="가입하기" disabled>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
<script src="resources/js/signUp_agree.js?ver=1"></script>
</html>