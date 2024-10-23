<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz Result</title>
</head>
<body>

<%
String email = (String) session.getAttribute("email");
String role = (String) session.getAttribute("role");
if (email == null) {
  response.sendRedirect("index.jsp?msg=YouHaveToLoginFirst");
}

  int score=0;
  String assginment="Assignment_1";
    // Retrieve the selected option from the form
    String selectedOption1 = request.getParameter("q1");
    String selectedOption2= request.getParameter("q2");
    String selectedOption3= request.getParameter("q3");
    String selectedOption4= request.getParameter("q4");
    String selectedOption5= request.getParameter("q5");
    String selectedOption6= request.getParameter("q6");
    String selectedOption7= request.getParameter("q7");
    String selectedOption8= request.getParameter("q8");
    String selectedOption9= request.getParameter("q9");
    String selectedOption10= request.getParameter("q10");

   
        
        // You can add more logic to check the answer
        if (selectedOption1.equals("Interchanging operators and identity elements")) {
            score++;
        }
        if(selectedOption2.equalsIgnoreCase("POS form")){
        	score++;
        }
        if(selectedOption3.equalsIgnoreCase("X+YZ")){
        	score++;
        }
        if(selectedOption4.equalsIgnoreCase("PQ’")){
        	score++;
        }
        if(selectedOption5.equalsIgnoreCase("A+B+C")){
        	score++;
        }
        if(selectedOption6.equalsIgnoreCase("P-4,Q-2,R-3,S-1")){
        	score++;
        }
        if(selectedOption7	.equalsIgnoreCase("1, 3 and 4")){
        	score++;
        }
        if(selectedOption8.equalsIgnoreCase("D")){
        	score++;
        }
        if(selectedOption9.equalsIgnoreCase("10")){
        	score++;
        }
        if(selectedOption10.equalsIgnoreCase("1100")){
        	score++;
        }
        //out.println( "<h3>"+score+"</h3>");
        
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            out.println("Driver is loaded");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3305/assignmentdb", "root", "sunil123");
            out.println("Connection is established...");

            PreparedStatement pstmt = con.prepareStatement("INSERT INTO assignment1(email,assignment,marks ) VALUES(?,?,?)");
            pstmt.setString(1, email);
            pstmt.setString(2, assginment);
            pstmt.setString(3, String.valueOf(score));            
            pstmt.executeUpdate();

          
            con.close();
            
            response.sendRedirect("userhome.jsp?ExamSubmittedSucessfully");
        }catch(Exception ex){
        	ex.printStackTrace();  // Log the error to the console
            //response.sendRedirect("examcard.jsp?errorDuringSubmission");
        }
        
        

%>

</body>
</html>