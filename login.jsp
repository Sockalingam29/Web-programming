<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="register.css" />
    <!-- <link rel="stylesheet" type="text/css" href="home.css" /> -->
  </head>
  <body>
    <%@ include file="header.jsp" %>

    <form id="registration-form">
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
    <script src="register.js"></script>
  </body>
</html>