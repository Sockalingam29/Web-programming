<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
      src="https://code.jquery.com/jquery-3.6.3.js"
      integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="home.css" />
    <title>Home</title>
  </head>

  <body onload="displayResult()">
    <%@ include file="header.jsp" %>

    <form id="search-form" onsubmit="submitHandler(event);">
      <input type="text" name="searchQuery" placeholder="Search products"/>
      <button type="submit"><img style="width:20px" src="./assets/magnifier.png"></button>
    </form>
    
    <div id="search-results"></div>

    <div id="products" ></div>
    
  </body>
  <script src="index.js"></script>
</html>
