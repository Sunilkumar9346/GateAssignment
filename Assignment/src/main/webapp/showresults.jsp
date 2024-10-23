<%@page import="mts.dto.Assignment1"%>
<%@page import="mts.dao.Daoservice" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Results Page</title>
</head>
<body>
<% 
	String email=(String)session.getAttribute("email"); 
	String role=(String)session.getAttribute("role");
	if(email==null)
		response.sendRedirect("index.jsp?msg=YouHaveToLoginFirst");
%>
<%
   Daoservice dao=new Daoservice();
   ArrayList<Assignment1> al=dao.getresults();
    
%>
<jsp:include page="usermenu.jsp"></jsp:include>

<div class="container-fluid mt-5 mb-3">	
	<div class="row">
		<div class="col-sm-12">
		<h1 style="text-align: center;" class="mb-5">Results</h1>
		<table class="table table-hover">
		<tr class="alert alert-info">
            <th style="text-align: center;" >Email</th>
            <th style="text-align: center;" >Assignment</th>
            <th style="text-align: center;" >Marks</th>
       </tr>

       	<%for(Assignment1 e:al){ %>
		<form action="" method="post">
		
        
       
			<tr>
				<td>
					<input style="text-align: center;" class="bg-info form-control " name="email" value="<%=e.getEmail()%>">
				</td>
				<td>
					<input style="text-align: center;" class="form-control bg-info"  name="Assignment" value="<%=e.getAssignment()%>">
				</td>
				<td>
					<input style="text-align: center;" class="form-control bg-info" name="marks" value="<%=e.getMarks()%>">
				</td>
		
			
			</tr>
			</form>
		<%} %>
		</table>
		</div>
</body>
</html>