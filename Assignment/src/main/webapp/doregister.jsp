<%@page import="java.sql.*" %>

<jsp:useBean id="r" class="mts.dto.register">
  <jsp:setProperty name="r" property="*" />
</jsp:useBean>


<%
String name = r.getFullname().replaceAll("\\s+", "_"); // replace spaces with underscores to ensure valid table name
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    out.println("Driver is loaded");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3305/assignmentdb", "root", "sunil123");
    out.println("Connection is established...");

    PreparedStatement pstmt = con.prepareStatement("INSERT INTO users(email, fullname, phonenum, password, role) VALUES(?,?,?,?,?)");
    pstmt.setString(1, r.getEmail());
    pstmt.setString(2, name);
    pstmt.setString(3, r.getPhone());
    pstmt.setString(4, r.getPassword());
    pstmt.setString(5, r.getRole());
    pstmt.executeUpdate();

  
    con.close();
    response.sendRedirect("login.jsp?msg=RegistrationSuccessful");
} catch (Exception ex) {
    ex.printStackTrace();  // Log the error to the console
    response.sendRedirect("register.jsp?msg=RegistrationFailed");
}
%>

