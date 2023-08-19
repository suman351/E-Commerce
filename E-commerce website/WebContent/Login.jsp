<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<input type="hidden" id ="status" value="<%= request.getAttribute("status") %>">
    <div class="container">
        <div class="image">
            <img src="side_image.png" alt="Side Image" width="100%">
        </div>
        <div class="form">
            <h2 style="margin-top:20%;">Login </h2>
            <form action="login" method="POST">
                <div class="form-group">
                    <label for="username">User Name:</label>
                    <input type="text" id="username" name="username">
                </div>
                
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password">
                </div>
                <button type="submit">Login</button>
                <a href="forgotPassword.jsp">Forgot Password</a>
                <p>Don't have an Account?<a href="Register.jsp">Register</a></p>
            </form>
        </div>
    </div>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "invalidEmail"){
		swal("Sorry","please enter valid name","error");
	}
	if(status == "invalidPassword"){
		swal("Sorry","please enter valid password","error");
	}
	if(status == "failed"){
		swal("Sorry","Wrong username or password","error");
	}
	
	</script>
</body>
</html>
