$(document).ready(function () {
  $("#user-form").validate({
      rules: {
        "user[first_name]": {
          required: true, 
          maxlength: 255 
        },
        "user[last_name]": {
          required: true, 
          maxlength: 255 
        },
        "user[username]": {
          required: true, 
          minlength: 2,
          maxlength: 25 
        },
        "user[email]": {
          required: true, 
          email: true
        }, 
        "user[password]": {
          required: true, 
          minlength: 6, 
          maxlength: 30 
        }
      },
      messages: {
        "user[first_name]": {
         required: "Please enter your first name", 
         maxlength: "Must be less than 255 characters" 
        },
        "user[last_name]": {
         required: "Please enter your last name", 
         maxlength: "Must be less than 255 characters" 
        },
        "user[username]": {
         required: "Please enter your username", 
         minlength: "Username must be 2 characters or longer",
         maxlength: "Username must be 25 characters or less" 
        },
        "user[email]": {
         required: "Please enter your email", 
         email: "Not a valid email address"
        }, 
        "user[password]": {
         required: "Please enter your password", 
         minlength: "Password must be between 6 and 30 characters", 
         maxlength: "Password must be between 6 and 30 characters" 
        }
      }
    
    });

  $("#new_login").validate({
      rules: {
        "user[email]": {
          required: true, 
          email: true, 
      },
        "user[password]": {
          required: true, 
          maxlength: 30 }
      },
      messages: {
        "user[email]": {
          required: "Please enter your email",
          email: "Please enter a valid email"
        },
        "user[password]": {
          required: "Please enter your password",
          maxlength: "Password must be between 6 and 30 characters"
        }
      }
    
    });

  $("#simplify-payment-form").validate({

    rules: {
      "user[first_name]": {
        maxlength: 255 
      },
      "user[last_name]": {
        maxlength: 255 
      },
      "user[username]": {
        minlength: 2,
        maxlength: 25 
      },
      "user[email]": {
        email: true
      }, 
      "user[password]": {
        maxlength: 30 
      }
    },
    messages: {
      "user[first_name]": {
       maxlength: "Must be less than 255 characters" 
      },
      "user[last_name]": {
       maxlength: "Must be less than 255 characters" 
      },
      "user[username]": {
       minlength: "Username must be 2 characters or longer",
       maxlength: "Username must be 25 characters or less" 
      },
      "user[email]": {
       email: "Not a valid email address"
      }, 
      "user[password]": {
       maxlength: "Password must be between 6 and 30 characters" 
      }
    }
  
  });
});
