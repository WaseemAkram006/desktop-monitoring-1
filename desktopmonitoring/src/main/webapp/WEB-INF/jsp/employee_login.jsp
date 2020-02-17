<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"
	type="text/javascript"></script>

<!--===============================================================================================-->
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="employee_login/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="employee_login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="employee_login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="employee_login/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="employee_login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="employee_login/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="employee_login/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="employee_login/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="employee_login/css/util.css">
<link rel="stylesheet" type="text/css"
	href="employee_login/css/main.css">
<!--===============================================================================================-->
<script type="text/javascript">
$(document).ready(function(){

      $.ajax({
        type:'get',
        url:'${pageContext.request.contextPath}/CurrentTime',
        success:function(response) {
          document.getElementById("total_items").value=response;
          alert(respose);
        }
      });
    });
</script>

<style type="text/css">
#success_message {
	display: none;
}
</style>
</head>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title"
					style="background-image: url(employee_login/images/bg-01.jpg);">
					<span class="login100-form-title-1"> Sign In </span>
				</div>

				<form class="login100-form validate-form"
					action="${pageContext.request.contextPath}/loginProcess"
					method="post">
					<h1 id="total_items"></h1>
					<div class="wrap-input100 validate-input m-b-26"
						data-validate="Username is required">
						<span class="label-input100">Username</span> <input
							class="input100" type="text" name="username" id=total_items
							placeholder="Enter username"> <span
							class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18"
						data-validate="Password is required">
						<span class="label-input100">Password</span> <input
							class="input100" type="password" name="Password"
							placeholder="Enter password"> <span
							class="focus-input100"></span>
					</div>
					<div>
						<b class="txt12" style="color:red;">${msg}</b>
					</div>


					<div class="container-login100-form-btn m-t-40 m-l-70 ">
						<button class="login100-form-btn">Login</button>
					</div>

					<div class="flex-sb-m w-full m-t-50">
						<div>
							<a href="#" class="txt12" data-toggle="modal"
								data-target="#myModal"> sign Up </a>
						</div>
						<div>
							<a href="#" class="txt12"> Forgot Password? </a>
						</div>
					</div>


				</form>

			</div>
		</div>
	</div>
	<!-- Modal -->
	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">
						<b>Registration Form</b>
					</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>

				</div>
				<form class="well form-horizontal"
					action="${pageContext.request.contextPath}/signup" method="post"
					id="contact_form">

					<div class="modal-body">

						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label">Manager Id</label>
							<div class="col-md-5 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-user"></i></span> <input name="Managerid"
										placeholder="Manager Id" class="form-control" type="text">
								</div>

							</div>
						</div>
						<!-- Text input-->

						<div class="form-group">
							<label class="col-md-4 control-label">Department</label>
							<div class="col-md-5 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-user"></i></span> <input name="department"
										placeholder="Username" class="form-control" type="text">
								</div>
							</div>
						</div>

						<!-- Text input-->

						<div class="form-group">
							<label class="col-md-4 control-label">First Name</label>
							<div class="col-md-5 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-user"></i></span> <input name="first_name"
										placeholder="First Name" class="form-control" type="text">
								</div>
							</div>
						</div>

						<!-- Text input-->

						<div class="form-group">
							<label class="col-md-4 control-label">Last Name</label>
							<div class="col-md-5 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-user"></i></span> <input name="last_name"
										placeholder="Last Name" class="form-control" type="text">
								</div>
							</div>
						</div>
						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label">E-Mail</label>
							<div class="col-md-5 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-envelope"></i></span> <input name="email"
										placeholder="E-Mail Address" class="form-control" type="text">
								</div>
							</div>
						</div>


						<!-- Text input-->

						<div class="form-group">
							<label class="col-md-4 control-label">Password</label>
							<div class="col-md-5 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-user"></i></span> <input
										name="user_password" placeholder="Password"
										class="form-control" type="password">
								</div>
							</div>
						</div>

						<!-- Text input-->

						<div class="form-group">
							<label class="col-md-4 control-label">Confirm Password</label>
							<div class="col-md-5 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-user"></i></span> <input
										name="confirm_password" placeholder="Confirm Password"
										class="form-control" type="password">
								</div>
							</div>
						</div>

						<!-- Text input-->

						<div class="form-group">
							<label class="col-md-4 control-label">Contact No.</label>
							<div class="col-md-5 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-earphone"></i></span> <input
										name="contact_no" placeholder="()" class="form-control"
										type="text">
								</div>
							</div>
						</div>

						<!-- Select Basic -->

						<!-- Success message -->
						<div class="alert alert-success" role="alert" id="success_message">
							Success <i class="glyphicon glyphicon-thumbs-up"></i> Success!.
						</div>
					</div>
					<div class="modal-footer">

						<label class="col-md-4 control-label"></label>
						<div class="col-md-4">
							<br>
							<button type="submit" class="btn btn-warning">
								SUBMIT<span class="glyphicon glyphicon-send"></span>
							</button>
						</div>
					</div>
				</form>
			</div>

		</div>
	</div>


	<!--===============================================================================================-->
	<script src="employee_login/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="employee_login/vendor/bootstrap/js/popper.js"></script>
	<!--===============================================================================================-->
	<script src="employee_login/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="employee_login/vendor/daterangepicker/moment.min.js"></script>
	<script src="employee_login/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="employee_login/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="employee_login/js/main.js"></script>

</body>
</html>