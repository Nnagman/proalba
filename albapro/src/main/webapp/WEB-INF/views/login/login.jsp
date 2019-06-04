<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://apis.google.com/js/platform.js?onload=renderButton"></script>
<meta name="google-signin-client_id" content="645553480843-ubo3jrtifnf4ldbl813amb8c8eqooqd5.apps.googleusercontent.com">
<link rel="stylesheet" type="text/css" href="resources/css/login.css">
<c:set var="path" value = "${pageContext.request.contextPath}"></c:set>

<!doctype html>
<html lang="kr">
   <head>   
   <meta charset="UTF-8">
   <title>프로알바 로그인</title>

   <meta name="google-signin-client_id" content="645553480843-ubo3jrtifnf4ldbl813amb8c8eqooqd5.apps.googleusercontent.com">
    <script>
       function init(){
          console.log('init');
          gapi.load('auth2', function() { // Ready. });
              console.log('auth2');
              var gauth = gapi.auth2.init({
                 client_id:'645553480843-ubo3jrtifnf4ldbl813amb8c8eqooqd5.apps.googleusercontent.com'
                })
              gauth.then(function(){
                 console.log('googleAuth success');
              }, function(){
                 console.log('googleAuth fail');
              });
           });
       }
    </script>
    <script>
    function onSignIn(googleUser) {
       var profile = googleUser.getBasicProfile();
       console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
       console.log('Name: ' + profile.getName());
       console.log('Image URL: ' + profile.getImageUrl());
       console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
    }
   </script>
   <script>
     $(document).ready(function(){
       $(".btn-regist").on("click", function(){
          self.location = "${path}/register";
       });
     });
   </script>
</head>
<body>

<!-- Form-->
<div class="form">
  <div class="form-panel one">
    <div class="form-header">
    <img src="resources/images/biglogo.png" class="logo">
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
          
        </div>
        <hr>
        <span class="sps">계정이 없다면 바로 가입하세요! </span><a href="${path}/register" class="btn-regist">무료 회원가입 하기</a>
        <!-- <div id="my-signin2"></div> -->
        <div class="footer-copyright">
        <span>© 2019 Copyright:</span>
         <a href="${path}/" class="sp1" style="text-decoration:none">Proalba</a>
        </div>
          <script>
             function onSuccess(googleUser) {
                console.log('Logged in as: ' + googleUser.getBasicProfile().getName());
             }
             
             function onFailure(error) {
                console.log(error);
             }
             function renderButton() {
                gapi.signin2.render('my-signin2', {
                   'scope': 'profile email',
                   'width': 240,
                   'height': 50,
                   'longtitle': true,
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

</body>
</html>