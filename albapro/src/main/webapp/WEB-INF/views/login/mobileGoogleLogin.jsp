<!DOCTYPE html>
<html lang="kr">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="google-signin-client_id" content="491501877876-cr50begaaku2720m2ku42ci28dh2uaj5.apps.googleusercontent.com">
	<script src="https://apis.google.com/js/platform.js?onload=renderButton"></script>
	<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<title>NaverLoginSDK</title>
</head>

<body onload="googleLogin()">
	<div id="my-signin2" class="googleid" onClick="googleLogin()" style="display: inline-block;"></div>
	<script>
		var email;
		function onSuccess(googleUser) {
			console.log('Logged in as: ' + googleUser.getBasicProfile().getEmail());
			email = googleUser.getBasicProfile().getEmail();
		}
			
		function googleLogin(){
			$(location).attr("href", "${path}/mobileGoogleLoginPOST?email="+email);
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
	</script>
	<script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>
	<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
</body>
</html>