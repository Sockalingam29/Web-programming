<!-- //HTML file with Success message in green Color -->
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Success</title>
    <link rel="stylesheet" type="text/css" href="register.css" />
    <!-- <link rel="stylesheet" type="text/css" href="home.css" /> -->
  </head>
  <body>
    <%@ include file="header.jsp" %>
    <div class="success">
      <h1 style="text-align: center;">Registration Successful</h1>
      <h2>
        You have successfully registered. 
      </h2>
      <h2>Redirecting to Login page .... Please Wait</h2>
    </div>

   
  </body>
</html>

<%
  response.setHeader("Refresh", "3; URL=login.jsp");
%>