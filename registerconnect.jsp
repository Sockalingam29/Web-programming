<%@ page import="java.sql.*" %>

<%
    // 1) Retrieve user input from form
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String confirm_password = request.getParameter("confirmPassword");
    String dob = request.getParameter("dob");
    String gender = request.getParameter("gender");
    String[] interested_products = request.getParameterValues("interested_products");
    String profession = request.getParameter("profession");
    String description = request.getParameter("description");
    String interested_products_str = "";
    
    if(name!=null)
      //out.println(name+" "+email+" "+password+" "+dob+" "+gender+" "+interested_products+" "+profession+" "+description);


    // 2) Validate password and confirm_password fields
    // out.println(password+" "+confirm_password);
    //if (!password.equals(confirm_password)) {
    //  out.println("Passwords do not match.");
    //  return;
    //}
  
    // 3)Convert the array of product IDs to a comma-separated string
    if (interested_products != null) {
      for (int i = 0; i < interested_products.length; i++) {
        interested_products_str += interested_products[i];
        if (i < interested_products.length - 1) {
          interested_products_str += ",";
        }
      }
    }
  
  if(!password.equals(confirm_password))
  {
    out.println("<p>Passwords do not match.</p>");
    out.println(password+" "+confirm_password);
    return;
  }
  else{
    try{
        // 4) Import necessary Java classes
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webprog", "root", "Haris@123");


        // 5) Insert user data into database
        String query = "INSERT INTO users (name, email, password, dob, gender, interested_products, profession, description) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement stmt = conn.prepareStatement(query);
        stmt.setString(1, name);
        stmt.setString(2, email);
        stmt.setString(3, password);
        stmt.setString(4, dob);
        stmt.setString(5, gender);
        stmt.setString(6, interested_products_str);
        stmt.setString(7, profession);
        stmt.setString(8, description);

        int rowsAffected = stmt.executeUpdate();

        if (rowsAffected == 1) {
        out.println("<h1>Registration successful.</h1>");
        out.println("<p>You will be redirected to the login page in 5 seconds.</p>");
        //response.setHeader("Refresh", "5; URL=login.jsp");
        } else {
        out.println("Registration failed.");
        }

        // 5) Close database connection
        conn.close();

    } catch (Exception e) {
        out.println(e);
    }
  }

  response.sendRedirect("success.jsp");
%>