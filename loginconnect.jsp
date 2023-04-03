<%@ page import="java.sql.*" %>

<%
  String email = request.getParameter("email");
  String password = request.getParameter("password");

  try {
    // Class.forName("com.mysql.cj.jdbc.Driver");
    Class.forName("oracle.jdbc.driver.OracleDriver");   

    // Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webprog", "root", "");
    Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "oracle1");
    PreparedStatement ps = con.prepareStatement("SELECT * FROM users WHERE email=? AND password=?");
    ps.setString(1, email);
    ps.setString(2, password);
    ResultSet rs = ps.executeQuery();

    if (rs.next()) {
      out.println("Login successful!");
      response.sendRedirect("home.jsp");
    }else{
        response.sendRedirect("login.jsp");
        out.println("Login failed!");
    }

    con.close();
  } catch (Exception e) {
    out.println(e);
  }
%>