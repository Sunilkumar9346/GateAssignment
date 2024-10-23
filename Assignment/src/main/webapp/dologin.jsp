<%@page import="java.sql.*" %>

<jsp:useBean id="r" class="mts.dto.login">
   <jsp:setProperty name="r" property="*" />
</jsp:useBean>

<%
String role=null;
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	out.println("Driver is loaded");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3305/assignmentdb", "root","sunil123");
	out.println("Connection is established...");
	PreparedStatement pstmt=con.prepareStatement("select * from users where email=? and password=?");
	pstmt.setString(1, r.getEmail());
	pstmt.setString(2, r.getPassword());
	ResultSet rs= pstmt.executeQuery();
	
	if(rs.next())
	{
		role=rs.getString("role");
		System.err.println(role);
	}
	con.close();
	if(role!=null)
	{	
		session.setAttribute("email", r.getEmail());
		session.setAttribute("role", role);
		if(role.equalsIgnoreCase("Student"))
			response.sendRedirect("userhome.jsp");
		else if(role.equalsIgnoreCase("admin"))
		{
			response.sendRedirect("adminhome.jsp");
		}
	}
	else
	{	response.sendRedirect("login.jsp?msg=InvalidUseridOrPassword");
	}
}catch(Exception ex){
	out.println(ex);

	
}


%>