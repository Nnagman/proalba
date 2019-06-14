<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로알바</title>
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
				<form id="agree_form">
					<div class="all_agree">
						<p>
							<label></label> <input type="checkbox" id="all" name="all" />
							전체약관동의<br />
						</p>

						<p>
							<label> &nbsp;&nbsp;<input type="checkbox" id="c1"
								name="c1" /></label>
								프로알바 <a href="articles">이용약관</a> 동의 (필수)<br />
							
						</p>
						<p>
							<label> &nbsp;&nbsp;<input type="checkbox" id="c2"
								name="c2" /></label>
								<a href="pdata">개인정보처리방침</a> 동의 (필수)<br />
							
						</p>
					</div>
				</form>

				<!-- 회원 정보 입력 폼 -->

				<form name="signUpForm" id="form">
				
					<table>
						<tbody>
							<tr>
								<th>아이디</th>

								<td>
									<input type="text" name="id" id="id" class="tBox tId" maxlength="16" placeholder="6~16자 영문, 숫자" title="아이디">

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
								</select> - 
									<input id="dev_hphone2" name="Phone2" class="tBox tPhone" type="text" title="휴대폰 번호" value="" size="4" maxlength="4"
									autocomplete="off"> - 
									<input id="dev_hphone3" name="Phone3" class="tBox tPhone" type="text" title="휴대폰 번호"
									value="" size="4" maxlength="4" autocomplete="off">
                                    <input id="phone" name="phone" value="" type="hidden"/>
									</td>
							</tr>


							<tr>
								<td colspan="2" class="tLine">
									<hr />
								</td>
							</tr>


              <tr>
                <th>사업자등록번호</th>
                <td>
                  <input type="text" class="tBox comNum" name="b_number" id="comNum" size="10" maxlength="10" value="">
                    <input type="button" name="comNum_check" id="comNum_check" value="확인">
                </td>
              </tr>
              
              <tr>
              	<th>사업체명</th>
              	<td>
              		<input type="text" class="tBox comName" name="work_place_name" id="comName" size="25" maxlength="25">
                    <input id="m_code" name="m_code" type="hidden" value="c">
              	</td>
              </tr>
			</tbody>
		</table>
					<div class="search" style="margin-left:20%;">
						<input id="address" type="text" placeholder="검색할 주소" value="불정로 6" />
						<input id="submit" type="button" value="주소 검색" />
						<input type="hidden" id="coordinate" name="coordinate" value=""/>
					</div>
					<div id="map" style="width:60%;height:400px; margin-left:20%;"></div>
					<div class="btnfield">
						<button class="btn btn-dark" id="btn_signup" value="가입하기" disabled>가입하기</button>
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
		


        $("#double_check").click(function(){
			var id = $("#id").val();
			
			$.ajax({
				async: false,
				type: 'POST',
				data: id,
				url: 'http://39.127.7.84:8080/proalba/idcheck',
				dataType: 'json',
				contentType: 'application/json; charset=UTF-8',
				success: function(data){
	                if (data.cnt > 0) {
	                    alert("아이디가 존재합니다. 다른 아이디를 입력해주세요.");
	                    $("#dev_idchk").focus();
	                } else {
	                    alert("사용가능한 아이디입니다.");
	                    $("#dev_pwd1").focus();
	                    $("#btn_signup").removeAttr("disabled");
	                    $("#dev_idchk").attr("disabled");
	            		var m_code = 'c'+$('#id').val();
	            		console.log(m_code);
	            		$("#m_code").val(m_code);
	                }
	            },
	            error : function(error) {
	                alert("error : " + error);
	            }
			});
		});

        $("#btn_signup").click(function(){
            var pnum1,pnum2,pnum3,p_Number;
            pnum1 = $("select[name=Phone1]").val();
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
				url: 'http://39.127.7.84:8080/proalba/cregister',
				success: function(data){
                    alert("회원가입성공!");
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

<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=uxsff7i3b6"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=uxsff7i3b6&submodules=geocoder"></script>
<script src="resources/js/map.js?ver=5"></script>
<script src="resources/js/signUp_agree.js?ver=2"></script>
</html>