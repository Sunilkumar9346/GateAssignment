<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        /* Additional styling for better appearance */
        .login-container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            border-radius: 5px;
            background-color: #f8f9fa;
            box-shadow: 0px 4px 8px rgba(0, 0, 0.2, 0.1);
        }

        .bg-dark input {
            color: #fff;
        }
    </style>
</head>

<body>
<%
	String msg=request.getParameter("msg");
	if(msg==null)
	{
		msg="";
	}
%>
    <div class="container login-container">
        <form action="dologin.jsp" class="p-4" method="post">
            <h2 class="text-center mb-4">Login Form</h2>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" name="email" class="form-control" placeholder="Email/Phone number" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" name="password" class="form-control" placeholder="Password" required>
            </div>
            <div class="d-flex justify-content-between">
                <button type="submit" class="btn btn-primary">Login</button>
                <button type="reset" class="btn btn-danger">Reset</button>
            </div>
            <span><%=msg %></span>
        </form>
    </div>
</body>

</html>
