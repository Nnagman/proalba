<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width">
<title>프로알바</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/sel_register.css">
</head>

<body>
	<div id="wrap">
		
		<div class="header">
			<a href="/"><img src="resources/images/biglogo.png" alt="logo" width="200px" height="150px" /></a>
			<h1>회원가입</h1>
		</div>
    <div id="container">
      <div id="content_head">
        <span>회원가입</span>을 환영합니다!
      </div>
      <div class="contents">
        <div class="indi_member">
          <i class="fas fa-user"></i><br/>
          <a href="pregister"><input type="button" class="reg_btn" id="indi_reg_btn" name="indi_reg" value="개인회원가입"></a>
          <div id="naverIdLogin" style="margin-top: 40px;"></div>
      </div>
        <div class="corp_member">
          <i class="fas fa-user-tie"></i><br/>
          <a href="cregister"><input type="button" class="reg_btn" id="corp_reg_btn" name="indi_reg" value="기업회원가입"></a>
        </div>
      </div>
  </div>
</div>

    <!-- (1) LoginWithNaverId Javscript SDK -->
	<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>


	<!-- (2) LoginWithNaverId Javscript 설정 정보 및 초기화 -->
	<script>
		var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "hkaRQixriKsVgNq3XfqU",
				callbackUrl: "http://localhost:8080/selNaverRegister",
				isPopup: false,
				callbackHandle: true,
				loginButton: {color: "green", type: 1, height: 60}
				/* callback 페이지가 분리되었을 경우에 callback 페이지에서는 callback처리를 해줄수 있도록 설정합니다. */
			}
		);

		/* (3) 네아로 로그인 정보를 초기화하기 위하여 init을 호출 */
		naverLogin.init();
	</script>
</body>