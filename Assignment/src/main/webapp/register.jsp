<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        /* Additional styling for better appearance */
        .register-container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            border-radius: 5px;
            background-color: #f8f9fa;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }

        .bg-dark input {
            color: #fff;
        }
    </style>
</head>

<body>
<jsp:include page="navbar.jsp"></jsp:include>
<%
    String msg=request.getParameter("msg");
    if(msg==null)
    {
        msg="";
    }
%>
    <div class="container register-container">
        <form action="doregister.jsp" class="p-4" method="post" onsubmit="return validateForm()">
            <h2 class="text-center mb-4">Register</h2>

            <!-- Name Field -->
            <div class="mb-3">
                <label for="name" class="form-label">Full Name</label>
                <input type="text" id="name" name="fullname" class="form-control" placeholder="Enter your full name" required>
            </div>

            <!-- Email Field -->
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" id="email" name="email" class="form-control" placeholder="Enter your email" required>
            </div>

            <!-- Phone Number Field -->
            <div class="mb-3">
                <label for="phone" class="form-label">Phone Number</label>
                <input type="tel" id="phone" name="phone" class="form-control" placeholder="Enter your phone number" required>
            </div>

            <!-- Password Field -->
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" id="password" name="password" class="form-control" placeholder="Enter your password" required>
            </div>

            <!-- Confirm Password Field -->
            <div class="mb-3">
                <label for="confirm-password" class="form-label">Confirm Password</label>
                <input type="password" id="confirm-password" name="cpassword" class="form-control" placeholder="Confirm your password" required>
            </div>

            <!-- Role Field -->
            <div class="mb-3">
                <label for="role" class="form-label">Role</label>
                <select name="role" class="form-control" required>
                    <option value="" disabled selected>Select your role</option>
                    <option value="Student">Student</option>
                </select>
            </div>

            <!-- Submit Button -->
            <div class="d-flex justify-content-between">
                <button type="submit" class="btn btn-primary">Register</button>
                <button type="reset" class="btn btn-danger">Reset</button>
                <span><%=msg%></span>
            </div>
        </form>
    </div>

    <script>
        function validateForm() {
            const password = document.getElementById('password').value;
            const confirmPassword = document.getElementById('confirm-password').value;
            const name = document.getElementById('name').value.trim();
            const email = document.getElementById('email').value.trim();
            const phone = document.getElementById('phone').value.trim();

            if (!name || !email || !phone) {
                alert('Please fill out all fields.');
                return false;
            }

            if (password !== confirmPassword) {
                alert('Passwords do not match.');
                return false;
            }

            return true; // Form is valid
        }
    </script>
</body>

</html>
