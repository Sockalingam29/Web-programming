<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <script
      src="https://code.jquery.com/jquery-3.6.3.js"
      integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
      crossorigin="anonymous"
    ></script>
    <title>Registration</title>
    <link rel="stylesheet" type="text/css" href="register.css" />
    <!-- <link rel="stylesheet" type="text/css" href="home.css" /> -->
  </head>
  <body>
    <%@ include file="header.jsp" %>
    <form id="registration-form" method="post" action="registerconnect.jsp"  >
      <h2>Registration Page</h2>

      <p class="error"></p>
      <!-- NAME -->
      <label for="name">Name:</label>
      <input type="text" id="name" name="name" placeholder="Enter your name" />
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
      <!-- CONFIRM PASSWORD -->
      <label for="confirm-password">Confirm Password:</label>
      <input
        type="password"
        id="confirm-password"
        name="confirmPassword"
        placeholder="Confirm your password"
      />
      <div style="margin-bottom: 10px" id="password-match"></div>
      <!-- DATE OF BIRTH -->
      <label for="dob">Date of Birth:</label>
      <input type="date" id="dob" name="dob" />
      <br />
      <!-- GENDER -->
      <label for="gender">Gender:</label>
      <input type="radio" id="male" name="gender" value="male" />
      <label for="male">Male</label>
      <input type="radio" id="female" name="gender" value="female" />
      <label for="female">Female</label>
      <br />
      <!-- FAV PRODUCTS -->
      <label for="interested-products">Interested Products:</label>
      <input
        type="checkbox"
        id="product1"
        name="interestedProducts"
        value="product1"
      />
      <label for="product1">Product 1</label>
      <input
        type="checkbox"
        id="product2"
        name="interestedProducts"
        value="product2"
      />
      <label for="product2">Product 2</label>
      <br /><br />
      <!-- PROFESSION -->
      <label for="profession">Profession:</label>
      <select id="professions" name="profession">
        <option value="Business">Business</option>
        <option value="Private">Private</option>
        <option value="Govt">Govt.</option>
        <option value="Others">Others</option>
      </select>
      <br />
      <br />
      <!-- DESCRIPTION -->
      <label for="description">Description:</label>
      <textarea id="description" name="description"></textarea>

      <!-- <label for="color">Color:</label>
      <input type="color" /> -->

      <input type="submit" value="Submit" />
    </form>
    <script src="register.js"></script>
  </body>
  
</html>

