<<<<<<< HEAD
{
  println('SDK Loaded');
      
  var btn = document.createElement('input');
      btn.setAttribute('type', 'submit');
      btn.setAttribute('value', 'Log in');
      btn.addEventListener('click', login);
  document.body.appendChild(btn);
    
    
  /* Initialize Digits SDK using your application's consumer key. */
  Digits.init({ consumerKey: 'gmoaaZhEG88hMQUdpWHnF1IAz' })
    .done(function(){
      println("Digits is initialized")
      // Digits.getLoginStatus()
      //   .done(onLoginStatus)
      //   .fail(onLoginStatusFailure);
    })
    .fail(function(){
      println("Digits failed to initialize")
    })
    
=======
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
document.getElementById('digits-sdk').onload = function() {
  Digits.init({ consumerKey: ENV['CONSUMER_KEY'] });
};

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
}


















>>>>>>> parent of 29ddcf9... hold place

    
  /* Launch the Login to Digits flow. */
  function login(){
    println('SDK Start Login flow');
    
    Digits.logIn()
      .done(onLogin)
      .fail(onLoginFailure);
  } 
  
    
  /*
   * loginStatusResponse = {
   *   status: string ["unknown"|"not_authorized"|"authorized"],
   *   oauth_echo_headers: {
   *     'X-Verify-Credentials-Authorization': string (HTTP Request header)
   *     'X-Auth-Service-Provider': string (HTTP Request Url)
   *   } 
   * }
   *
   *    unknown:          User is not logged in to Digits, may or may not have authorized your app
   *    not_authorized:   User is logged in to Digits but has not authorized your app yet.
   *    authorized:       User is logged in to Digits and has authorized your app.
   *
   *    NOTE: The OAuth Echo headers will only be returned if User has authorized your app.
   */
  function onLoginStatus(loginStatusResponse){
    println('Login status: ', loginStatusResponse);
  }
  
  /*
   * error = {
   *   type: string,
   *   message: string
   * }
   */
  function onLoginStatusFailure(error){
    println('Login status error: ', error); 
  }  
   
        
  /*
   * loginResponse = {
   *   oauth_echo_headers: {
   *     'X-Verify-Credentials-Authorization': string (HTTP Request header)
   *     'X-Auth-Service-Provider': string (HTTP Request Url)
   *   }
   * }
   *
   */
  function onLogin(loginResponse){
    println('oAuthEcho Headers: ', loginResponse);
    
    // You must POST these headers to your server to safely invoke Digits' API
    // and get the logged-in user's data. You will not be able to call it directly
    // from the browser.
    var oAuthHeaders = parseOAuthHeaders(loginResponse.oauth_echo_headers);
    
    // For DEMO purposes 
    var requestUrl = ["curl '", oAuthHeaders.apiUrl, "' -H 'Authorization: ", oAuthHeaders.headers, "'"].join('');
    println('cURL:'); 
    println('', requestUrl); 
  }
  
  /*
   * error = {
   *   type: string,
   *   message: string
   * }
   *
   * Note: type == 'abort' means the user closed the Login flow
   */
  function onLoginFailure(error){
    println('Login error: ', error); 
  }  
    
  function parseOAuthHeaders(oAuthEchoHeaders) {
    var credentials = oAuthEchoHeaders['X-Verify-Credentials-Authorization'];
    var apiUrl = oAuthEchoHeaders['X-Auth-Service-Provider'];
              
    return {
      apiUrl: apiUrl,
      headers: credentials
    };
  } 
    
  function println(text, response) {
    var message = document.createElement('p');
    message.innerText = text;
    
    if (response){
      var code = document.createElement('code');
      code.innerText = typeof response == 'string' ? response : JSON.stringify(response);
      message.appendChild(code);
    }
    
    document.body.appendChild(message);
  } 
};