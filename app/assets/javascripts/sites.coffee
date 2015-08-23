`function(){

  Digits.init({ consumerKey: ENV['CONSUMER_KEY'] });

  function onLoginButtonClick(event){
    Digits.logIn()
      .done(onLogin) /*handle the response*/
      .fail(onLoginFailure);
  }

  var oAuthHeaders = loginResponse.oauth_echo_headers;
  var verifyData = {
    authHeader: oAuthHeaders['X-Verify-Credentials-Authorization'],
    apiUrl: oAuthHeaders['X-Auth-Service-Provider']
  };

  $.post('/verify', verifyData)
    .done(function(){ window.reload(); });

};`




