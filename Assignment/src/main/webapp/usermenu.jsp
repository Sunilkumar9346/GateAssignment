<% 
	String email=(String)session.getAttribute("email"); 
	String role=(String)session.getAttribute("role");
%>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <ul class="navbar-nav">
       <li class="nav-item">
          <a class="nav-link" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="register.jsp">Register</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="login.jsp">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="examcard.jsp">Assignments</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="showresults.jsp">Results</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="logout.jsp">Logout</a>
        </li>
        
      </ul>
      <span class="ms-auto" style="color:yellow;"><%=role%>&nbsp;:&nbsp;<%=email%>&nbsp;</span>
    </div>
  </div>
</nav>
