<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="kr">
  	<head>   
  	<script src="https://apis.google.com/js/platform.js?onload=renderButton"></script>
	<link rel="stylesheet" type="text/css" href="resources/css/login.css?ver=2"/>
	<c:set var="path" value = "${pageContext.request.contextPath}"></c:set>
   	<meta charset="UTF-8">
   	<title>프로알바</title>
   	<script type="text/javascript" src="${path}/resources/js/jquery-3.4.0.min.js"></script> 
   	<meta name="google-signin-client_id" content="491501877876-cr50begaaku2720m2ku42ci28dh2uaj5.apps.googleusercontent.com">
	<script>
		$(document).ready(function(){
			var url = location.href;
			url = new URL(url);
			if(url.search.indexOf("0") != -1){
				$("#password").after('<label for="password">유효하지 않는 이메일입니다.</label>');
			}
				
			if(url.search.indexOf("1") != -1){
				$("#password").after('<label for="password">이미 가입된 이메일입니다.</label>');
			}
		});
	</script>

   <script>
     $(document).ready(function(){
       $(".btn-regist").on("click", function(){
          self.location = "${path}/register";
       });
     });
   </script>
   <style>
   	.abcRioButton{
   		border-radius: 5px 5px 5px 5px !important;
   	}
   	.googleid{
   		margin-left: 7px !important;
   	}
	.abcRioButtonIcon > span{
	display: inline-block !important;
	}

   </style>
</head>
<style>
#table1{
margin:auto;
display:inline-block;
margin: 0 5% 15% 15%;

border-bottom:1px solid #DCDCDC;
}
th {
font-size:1.6rem;

padding:5px;
border-bottom:1px solid #DCDCDC;
}
td {
 height: 100px;
 text-align: left;
 padding-left:20px;

}
.timg{
width:50px; 
height:50px;

}
.form {
display:inline-block;
}
.cth{
border-top:3px solid orange;
color:orange !important;
border-right:1px solid #DCDCDC;

}
.pth{
border-top:3px solid skyblue;
color:skyblue !important;

}
.tdth{
border-right:1px solid #DCDCDC;
}
</style>
<body>
	
		        <table id="table1" >
	        <tr>
	        <th colspan="2" class="cth" >기업회원 서비스</th><th colspan="2"class="pth" >개인회원 서비스</th>
	        </tr>
	        <tr>
	        <td ><img src="resources/images/calculator_3534.png" class="timg"></td><td class="tdth">급여산정 서비스</td>
	        <td><img src="resources/images/bagofmoney_dollar_4399.png"class="timg"></td><td>월급내역 확인</td>
	        </tr>
	         <tr>
	        <td ><img src="resources/images/edit_icon-icons.com_66118.png" class="timg"></td><td class="tdth">채용공고 등록 서비스</td>
	        <td><img src="resources/images/-fingerprint_90738.png"class="timg"></td><td>지문으로 출퇴근 기능 제공</td>
	        </tr>
	        <tr>
	        <td><img src="resources/images/contract_icon-icons.com_64662.png" class="timg"></td><td class="tdth">전자근로계약서 작성 서비스</td>
	        <td><img src="resources/images/2140-handshake_102438.png"class="timg"></td><td>구직 서비스 제공</td>
	        </tr>
	        </table>
	<!-- Form-->
	
	<div class="form">
	  <div class="form-panel one">
	    <div class="form-header">
	    <a href="/"><img src="resources/images/biglogo.png" class="logo"></a>
	<!-- <h1>Login</h1> -->
	    </div>
	    <div class="form-content">
	      <form name="signUpForm" method="post" action="${path}/login/loginPost">
	        <div class="form-group">
	          <label for="username">UserID</label>
	          <input type="text" id="username" class="inp" name="id" required="required"/>
	        </div>
	        <div class="form-group">
	          <label for="password">Password</label>
	          <input type="password" id="password" class="inp" name="password" required="required"/>
	        </div>
	        
	        <div class="form-group">
	          <button type="submit">로그인</button>
	          <div style="margin-left: 72px;">SNS 계정으로 쉽고 빠르게 로그인하세요!</div>
	          <div style="width: 300px; margin-left: 50px; text-align: right;">
	            <div id="my-signin2" class="googleid" onClick="googleLogin()" style="display: inline-block;"></div>
	            <div id="naverIdLogin" style="margin-top: 5px; display: inline-block; margin-right: 15px;"></div>
	          </div>
	        </div>
	        
	        <hr>
	        <span class="sps">계정이 없다면 바로 가입하세요! </span><a href="${path}/register" class="btn-regist">무료 회원가입 하기</a>
	        
	        <div class="footer-copyright" style="margin-top: 10px;">
	        <span>© 2019 Copyright</span>
	         <a href="${path}/" class="sp1" style="text-decoration:none">Proalba</a>
	        </div>
	          <script>
	          	var email;
	            
	          	function onSuccess(googleUser) {
	            	console.log('Logged in as: ' + googleUser.getBasicProfile().getEmail());
	            	email = googleUser.getBasicProfile().getEmail();
	            }
	          	
	          	function googleLogin(){
	          		$(location).attr("href", "${path}/googleLogin?email="+email);
	          	}
	             
	          function onFailure(error) {
	                console.log(error);
	             }
	             
	             function renderButton() {
	                gapi.signin2.render('my-signin2', {
	                   'scope': 'email',
	                   'width': 130,
	                   'height': 50,
	                   'longtitle': false,
	                   'theme': 'dark',
	                   'onsuccess': onSuccess,
	                   'onfailure': onFailure
	                });
	             }
	             
	             var msg = "${msg}";
	            if (msg === "REGISTERED") {
	                alert("회원가입이 완료되었습니다. 로그인해주세요~");
	            } else if (msg == "FAILURE") {
	                alert("아이디와 비밀번호를 확인해주세요.");
	            }
	  		  </script>
	      </form>
	    </div>
	  </div>
	
	</div>

	<script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>
	<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>

  	<!-- (1) LoginWithNaverId Javscript SDK -->
	<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>

	<!-- (2) LoginWithNaverId Javscript 설정 정보 및 초기화 -->
	<script>
		var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "hkaRQixriKsVgNq3XfqU",
				callbackUrl: "http://proalba1.shop/naverLogin",
				isPopup: true,
				callbackHandle: false,
				loginButton: {color: "green", type: 2, height: 50}
				/* callback 페이지가 분리되었을 경우에 callback 페이지에서는 callback처리를 해줄수 있도록 설정합니다. */
			}
		);
		/* (3) 네아로 로그인 정보를 초기화하기 위하여 init을 호출 */
		naverLogin.init();
	</script>
	
	<script>
		$(".abcRioButtonContentWrapper").append('<span>로그인<span>');
	</script>
</body>
</html>