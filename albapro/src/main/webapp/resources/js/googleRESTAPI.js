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

    function onSignIn(googleUser) {
  var profile = googleUser.getBasicProfile();
  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
  console.log('Name: ' + profile.getName());
  console.log('Image URL: ' + profile.getImageUrl());
  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
}
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