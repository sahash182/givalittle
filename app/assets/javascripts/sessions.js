$(function() {
  Digits.init({ consumerKey: ENV['CONSUMER_KEY'] });

  $('#login-button').click(function(event) {
    event.preventDefault();

    Digits.logIn()
      .done(function(response) {
        // Send headers to your server and validate user by calling Digits’ API
        var oAuthHeaders = loginResponse.oauth_echo_headers;
        var verifyData = {
          authHeader: oAuthHeaders['X-Verify-Credentials-Authorization'],
          apiUrl: oAuthHeaders['X-Auth-Service-Provider']
        };

        $.ajax({
            url: '/sessions',
            type: 'POST',
            data: verifyData,
            success: function(data) {
                  //redirect somewhere
              // window.location = '/organizations';
            },
            error: function(xhr, textStatus, errorThrown) {
              console.log('no login data received', xhr, textStatus);
            }
        });
      })
    .fail(function(error) {
      console.log('Login failed. Error:', error);
    });
  });
  $('#signup-button').click(function(event) {
    event.preventDefault();

    Digits.logIn()
      .done(function(response) {
        // Send headers to your server and validate user by calling Digits’ API
        var oAuthHeaders = loginResponse.oauth_echo_headers;
        var verifyData = {
          authHeader: oAuthHeaders['X-Verify-Credentials-Authorization'],
          apiUrl: oAuthHeaders['X-Auth-Service-Provider']
        };

        $.ajax({
            url: '/users',
            type: 'POST',
            data: verifyData,
            success: function(data) {
                //redirect somewhere
              //window.location = '/organizations';
            },
            error: function(xhr, textStatus, errorThrown) {
              console.log('signup data not received', xhr, textStatus);
            }
        });
      })
    .fail(function(error) {
      console.log('Signup failed. Error:', error);
    });
  });
});