<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="index.css">
  <script src="timer.js" defer></script>
</head>
<body >
<% 
	String email=(String)session.getAttribute("email"); 
	String role=(String)session.getAttribute("role");
	if(email==null)
		response.sendRedirect("index.jsp?msg=YouHaveToLoginFirst");
%>
<jsp:include page="usermenu.jsp"></jsp:include>
<div class="container mt-5">
  <div class="card text-center">
    <div class="card-header">
      <h4>Exam</h4>
    </div>
    <div class="card-body">
      <h5 class="card-title">Demo Assessment</h5>
      <p class="card-text">Click the button below to begin your exam. All the best :) </p>
      <a href="questions.jsp" class="btn btn-primary" onclick="startExam()">Start Exam</a>
    </div>
    <div class="card-footer text-muted">
       Good luck!
    </div>
  </div>
</div>


</body>
</html>

