<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로알바</title>
<link rel="stylesheet" type="text/css" href="resources/css/signUp.css">
<link rel="stylesheet" type="text/css" href="resources/bootstrap-4.3.1-dist/css/bootstrap.min.css"  />
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>  
</head>

<body>

	<div id="wrap">
		<div id="container">
			<div id="content">
				<div class="signUpForm-header">
					<h1>회원정보 수정</h1>
				</div>

				<!-- 회원 정보 입력 폼 -->

				<form name="signUpForm" id="form">
					<table>
						<tbody>


							<tr>
								<th>아이디</th>
								<td>
									<input type="text" name="id" id="id" class="tBox tId" maxlength="16" placeholder="6~16자 영문, 숫자" title="아이디" readonly value="${login.id}">
									<input type="button" id="double_check" value="중복확인" />
								</td>
							</tr>



							<tr>
								<th>비밀번호</th>
								<td>
									<input type="password" name="password" class="tBox tPwd" id="dev_pwd1" value="${login.password}" maxlength="16" placeholder="6~16자 영문, 숫자, 특수문자" title="비밀번호" autocomplete="off">
								</td>
							</tr>


							<tr>
								<th>비밀번호 확인</th>
								<td>
									<input type="password" name="i_Pw" id="dev_pwdconfirm" value="${login.password}" class="tBox tPWd" maxlength="16"
									title="비밀번호확인" autocomplete="off">
									<p class="compul" id="passwd_success">비밀번호가 일치합니다.</p>
									<p class="compul" id="passwd_danger">비밀번호가 일치하지 않습니다.</p>
								</td>
							</tr>

							<tr>
								<td colspan="2" class="tLine">
									<hr />
								</td>
							</tr>

							<tr>
								<th>이름</th>
								<td>
									<input type="text" name="name" class="tBox tName" title="이름" id="dev_u_Name" maxlength="12" readonly value="${login.name}">
								</td>
							</tr>



							<tr>
								<th>생년월일</th>
								<td>
									<input type="text" class="tBox joinBx tBirth" id="dev_born" name="birthday" maxlength="8" title="생년월일"
									placeholder="ex) 19900101" readonly value="${login.birthday}">
								</td>
							</tr>


							<tr>
								<th>성별</th>
								<c:if test="${login.sex eq 0}">
									<td>
										<input type="radio" class="sex" title="남자" name="sex" id="sex1" checked value="0"> 
											<label for="sex_male" class="sex_1">남자</label>
										<input type="radio" class="sex" title="여자" name="sex" id="sex2" value="1"> 
											<label for="sex_female" class="sex_1">여자</label>
										<p class="compul" id="txtGender"></p>
									</td>
								</c:if>
								<c:if test="${login.sex eq 1}">
									<td>
										<input type="radio" class="sex" title="남자" name="sex" id="sex1" value="0"> 
											<label for="sex_male" class="sex_1">남자</label>
										<input type="radio" class="sex" title="여자" name="sex" id="sex2" checked value="1"> 
											<label for="sex_female" class="sex_1">여자</label>
										<p class="compul" id="txtGender"></p>
									</td>
								</c:if>
							</tr>

							<tr>
								<th>이메일</th>
								<c:set var="email" value="${fn:split(login.email,'@')}"/>
								<td>
									<input type="text" class="tBox tEmail" id="dev_M_Email" maxlength="25" title="이메일계정" autocomplete="off" value="${email[0]}"> 
										<span> @</span> 
									<input type="text" name="EmailDomain" class="tBox tEmail email2" id="dev_mail_etc" maxlength="25" title="이메일계정" value="${email[1]}">
							        <select class="sel2 tEmail" name="email_select" id="email_select">
							          <option value="1">직접입력</option>
							          <option value="naver.com">네이버</option>
							          <option value="daum.net">다음</option>
							          <option value="gmail.com">구글</option>
							          <option value="hanmail.net">한메일</option>
							          <option value="nate.com">네이트</option>
							        </select>
							        <input id="email" name="email" value="" type="hidden"/>
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
									<input id="dev_hphone1" name="Phone1" class="tBox tPhone" type="text" title="휴대폰 번호" value="${fn:substring(login.phone, 0, 3)}" size="3" maxlength="3"
									autocomplete="off"> - 
									<input id="dev_hphone2" name="Phone2" class="tBox tPhone" type="text" title="휴대폰 번호" value="${fn:substring(login.phone, 3, 7)}" size="4" maxlength="4"
									autocomplete="off"> - 
									<input id="dev_hphone3" name="Phone3" class="tBox tPhone" type="text" title="휴대폰 번호" value="${fn:substring(login.phone, 7, 11)}" size="4" maxlength="4"
									 autocomplete="off">
									 <input name="b_number" type="hidden">
									 <input id="phone" name="phone" value="" type="hidden"/>
									 <input id="m_code" name="m_code" type="hidden" value="p">
								</td>
							</tr>			
						</tbody>
					</table>
					<div class="btnfield">
						<button class="btn btn-dark" id="btn_signup" value="수정">수정</button>
					</div>
					
				</form>
			</div>
		</div>
	</div>
</body>

<script>
       //이용약관 동의
 var doc = document;
 var agree_form = doc.getElementById('agree_form');
 var inputs = agree_form.getElementsByTagName('INPUT');
 var agree_form_data = {
   "c1": false,
   "c2": false,
   "c3": false
 };
 var c1 = doc.getElementById('c1');
 var c2 = doc.getElementById('c2');
 var c3 = doc.getElementById('c3');
 function checkboxListener() {
   agree_form_data[this.name] = this.checked;
   if(this.checked) {
     // submit 할때 체크하지 않아 색이 변한 font 를 다시 원래 색으로 바꾸는 부분.
     this.parentNode.style.color = "#000";
   }
 }
   c1.onclick = c2.onclick = c3.onclick = checkboxListener;
   var all = doc.getElementById('all');
   all.onclick = function() {
     if (this.checked) {
       setCheckbox(agree_form_data, true);
     } else {
       setCheckbox(agree_form_data, false);
     }
   };
   function setCheckbox(obj, state) {
     for (var x in obj) {
       obj[x] = state;
       for(var i = 0; i < inputs.length; i++) {
         if(inputs[i].type == "checkbox") {
           inputs[i].checked = state;
         }
       }
     }
   }
       </script>
       <script>
            $(document).ready(function(){
             $("#passwd_success").hide();
             $("#passwd_danger").hide();
             $("#dev_pwdconfirm").keyup(function(){
                     var pwd1=$("#dev_pwd1").val();
                     var pwd2=$("#dev_pwdconfirm").val();
                     if(pwd1 != "" || pwd2 != ""){
                             if(pwd1 == pwd2){
                                     $("#passwd_success").show();
                                     $("#passwd_danger").hide();
                                     $("#submit").removeAttr("disabled");
                             }else{
                                     $("#passwd_success").hide();
                                     $("#passwd_danger").show();
                                     $("#submit").attr("disabled", "disabled");
                             }
                     }
             });
		
        
		$("#email_select").change(function () {
		    if ($("#email_select").val() != "1") {
		      $("#dev_mail_etc").val($("#email_select").val());
		      $("#dev_mail_etc").attr("disabled", true);
		    }
		    if ($("#email_select").val() == "1") {
		      $("#dev_mail_etc").attr("disabled", false);
		    }
		  });

        $("#btn_signup").click(function(){

            var email1,email2,email;
            email1 = $("#dev_M_Email").val();
			email2 = $("#dev_mail_etc").val();
			email = email1 + '@' + email2;
            $("#email").val("");
            $("#email").val(email);

            var pnum1,pnum2,pnum3,p_Number;
            pnum1 = $("#dev_hphone1").val();
            pnum2 = $("#dev_hphone2").val();
			pnum3 = $("#dev_hphone3").val();
			p_Number = pnum1+pnum2+pnum3;
			$( "#phone" ).val("");
			$("#phone").val(p_Number);
			console.log($("#phone").val());
			console.log(pnum1);
			console.log(pnum2);
            console.log(pnum3);
			
            var formData = $("#form").serialize(); 
			$.ajax({
				async: false,
				type: 'POST',
				data: formData,
				url: 'http://localhost:8080/proalba/pregisterModify',
				success: function(data){
                    alert("수정완료!");
	            },
	            error : function(error) {
	                alert("error : " + error);
	            }
			});
			
			//핸드폰 번호 숫자만 입력받기.
			$(".tPhone").on("keyup", function(){
				 $(this).val($(this).val().replace(/[^0-9]/g,""));
			});

		});
    });      
            </script>

</html>
