<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>User home</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="index.css">
  <script src="timer.js" defer></script>
</head>
<body>
<% 
  String email = (String) session.getAttribute("email");
  String role = (String) session.getAttribute("role");
  if (email == null) {
    response.sendRedirect("index.jsp?msg=YouHaveToLoginFirst");
  }
%>
<jsp:include page="usermenu.jsp"></jsp:include>

<div class="container mt-5">
  <div class="row justify-content-center">
    <!-- First Card (Left) -->
    <div class="col-12 col-md-6 col-lg-4 mb-4">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Assignments</h5>
          <a href="examcard.jsp" class="btn btn-primary">Click</a>
        </div>
      </div>
    </div>

    <!-- Second Card (Right) -->
    <div class="col-12 col-md-6 col-lg-4 mb-4">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Assignment 1 Results</h5>
          <a href="showresults.jsp" class="btn btn-primary">Click</a>
        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>
