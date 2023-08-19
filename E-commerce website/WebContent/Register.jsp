<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<input type="hidden" id ="status" value="<%= request.getAttribute("status") %>">
    <div class="container">
        <div class="image">
            <img src="side_image.png" alt="Side Image" width="100%">
        </div>
        
        <div class="form">
            <h2 style="text-align:center;">Create an Account</h2>
            <form action="register" method="POST">
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="name">
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email">
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password">
                </div>
                <div class="form-group">
                    <label for="confirmPassword">Confirm Password:</label>
                    <input type="password" id="con_Password" name="con_password">
                </div>
                <button type="submit">Register</button>
                
                <p>Already have an Account?<a href="Login.jsp">Login</a></p>
            </form>
        </div>
    </div>
    	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "invalidName"){
		swal("Sorry","please enter name","error");
	}
	
	if(status == "invalidEmail"){
		swal("Sorry","please enter email","error");
	}
	if(status == "invalidPassword"){
		swal("Sorry","please enter password","error");
	}
	
	if(status == "invalidConPassword"){
		swal("Sorry","password does not match","error");
	}
	if(status == "success"){
		swal("Congrats","Account Created Successfully","success");
	}
	</script>
</body>
</html>
