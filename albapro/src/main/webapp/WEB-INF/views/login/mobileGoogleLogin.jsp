<html lang="en">
  <head>
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="491501877876-cr50begaaku2720m2ku42ci28dh2uaj5.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
  </head>
  <body>
    <div class="g-signin2" id="g-signin2" data-onsuccess="onSignIn" data-theme="dark" style="display : none"></div>
    <script>
      	function onSignIn(googleUser) {
        	// Useful data for your client-side scripts:
        	var profile = googleUser.getBasicProfile();
        
        	$(location).attr("href", "http://39.127.7.84:3000/googleLogin.html?"+profile.getEmail());
      	}
    </script>
  </body>
</html>