<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="register.css" />
  </head>
  <body>
    <%@ include file="header.jsp" %>

    <form id="registration-form" action="loginconnect.jsp">
      <h2>Login Page</h2>

      <p class="error"></p>

      <!-- EMAIL -->
      <label for="email">Email:</label>
      <input
        type="email"
        id="email"
        name="email"
        placeholder="Enter your email"
      />
      <!-- PASSWORD -->
      <label for="password">Password:</label>
      <input
        type="password"
        id="password"
        name="password"
        placeholder="Enter your password"
      />
      <input type="submit" value="Login" />
    </form>
    <script>
      
      document.getElementById("registration-form").addEventListener("submit", (e) => {
        e.preventDefault();
        const email = document.getElementById("email").value;
        const password = document.getElementById("password").value;

        function validateEmail(e) {
          const re = /\S+@\S+\.\S+/;
          return re.test(e);
        }

        if(email === "" || password === "") {
          document.querySelector(".error").innerHTML = "Please fill all the fields";
        } else if(!validateEmail(email)) {
          document.querySelector(".error").innerHTML = "Please enter a valid email";
        } else {
          document.querySelector(".error").innerHTML = "";
          document.getElementById("registration-form").submit();
        }
      });

    </script>
  </body>
</html>

