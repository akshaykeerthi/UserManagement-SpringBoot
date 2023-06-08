<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>





<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<style>
.logo {
	font-size: 40px;
	color: aliceblue;
	margin-left: 30px;
	margin-top: 10px;
	font-family: Copperplate Gothic Light;
}

.back {
	background-color: transparent;
	color: aliceblue;
	font-size: 20px;
	font-family: Bahnschrift SemiBold;
	margin-top: 30px;
	margin-left: 1000px;
	border: transparent;
}

.nation {
	width: 315px;
}

.card-registration {
	width: 700px;
}
form .error{
  color: red;
  border-color: red;
  
}
form .valid{
  border:2px solid green;
}
</style>

</head>

<body style="background-color: rgb(9, 9, 9);">
	<div style="display: flex;">
		<div class="logo">
			<p>
				<b>MEDI+</b>
			</p>
		</div>

		<div>
			<button class="back"><a href="index">BACK</button></a>
		</div>
	</div>
	<section class="vh-100 gradient-custom">
		<div class="container   box">
			<div class="row justify-content-center align-items-center h-100">
				<div>

					<div class="card-body p-4 p-md-5 ">
						<h3 class="mb-4 pb-2 pb-md-0 mb-md-5" style="color: aliceblue;">Registration
							Form</h3>
						<form id="registerForm" modelAttribute="login" action="/submit"
								method="post">

							<div class="row">
								<div class="col-md-4 mb-4">

									<div class="form-outline">
										<label class="form-label" for="fname"
											style="color: aliceblue;">First Name<span style="color: red;"> *</span></label> <input
											type="text" id="fname" name="fname"
											class="form-control form-control-lg" placeholder="First Name" />
                      <span id="error_fname" class="text-danger"></span>

									</div>

								</div>
								<div class="col-md-4 mb-4">

									<div class="form-outline">
										<label class="form-label" for="lname"
											style="color: aliceblue;">Last Name <span style="color: red;"> *</span></label> <input
											type="text" id="lname" name="lname"
											class="form-control form-control-lg" placeholder="Last Name" />
                      <span id="error_lname" class="text-danger"></span>

									</div>

								</div>

								<div class="col-md-4 mb-4 d-flex align-items-center">

									<div class="form-outline datepicker w-100">
										<label for="birthdayDate" class="form-label"
											style="color: aliceblue;">Date of Birth <span style="color: red;"> *</span></label> <input
											type="date" class="form-control form-control-lg" name="dob"
											id="dob" />
                      <span id="error_dob" class="text-danger"></span>

									</div>


								</div>

								<div class="row">

									<div class="col-md-4 mb-4">

										<h6 class="mb-2 pb-1" style="color: aliceblue;">Gender: <span style="color: red;"> *</span></h6>

										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio"
												name="gender" id="femaleGender" value="option1"
												checked /> <label class="form-check-label"
												for="femaleGender" style="color: aliceblue;">Female</label>
										</div>

										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio"
												name="gender" id="maleGender" value="option2" />
											<label class="form-check-label" for="maleGender"
												style="color: aliceblue;">Male</label>
										</div>

										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio"
												name="gender" id="otherGender" value="option3" />
											<label class="form-check-label" for="otherGender"
												style="color: aliceblue;">Other</label>
										</div>
									</div>

									<div class="col-md-4 ">
										<label class="form-label select-label"
											style="color: aliceblue;">Nationality <span style="color: red;"> *</span></label>
										<div class="col-12">
											<select class="select form-control-lg nation" name="nationality">
												<option value="1">Choose option</option>
												<option value="2">Indian</option>
												<option value="3">American</option>
												<option value="4">British</option>
											</select>


										</div>

									</div>

									<div class="col-md-4 ">

										<div class="form-outline">
											<label class="form-label" for="phonenumber"
												style="color: aliceblue;"> Contact Number <span style="color: red;"> *</span></label> <input
												type="tel" id="phonenumber" name="mobileno"
												class="form-control form-control-lg"
												placeholder="Mobile Number" />
                        <span id="error_number" class="text-danger"></span>

										</div>

									</div>

								</div>



								<div>
									<div class="form-outline">
										<label class="form-label" for="address"
											style="color: aliceblue;"> Address <span style="color: red;"> *</span></label> <input type="text"
											id="address" class="form-control form-control-lg" name="address"
											placeholder="Address" />
                      <span id="error_address" class="text-danger"></span>

									</div>
								</div>
								<div class="row" style="margin-top: 10px;">
									<div class="col-md-6 mb-4"
										style="width: 380px; margin-left: 155px;">

										<div class="form-outline">
											<label class="form-label" for="username"
												style="color: aliceblue;">User Name <span style="color: red;"> *</span></label> <input
												type="text" id="username" name = "username"
												class="form-control form-control-lg"
												placeholder="Username" />
                        <span id="error_username" class="text-danger"></span>

										</div>

									</div>
									<div class="col-md-6 mb-4"
										style="margin-left: 100px; width: 380px;">

										<div class="form-outline">
											<label class="form-label" for="password"
												style="color: aliceblue;"> Password <span style="color: red;"> *</span></label> <input
												type="text" id="password" name = "password"
												class="form-control form-control-lg" placeholder="Password" />
                        <span id="error_password" class="text-danger"></span>

										</div>

									</div>
								</div>

								<div class="mt-4 pt-2" style="margin-left: 510px;">
									<input class="btn btn-primary btn-lg" type="submit" id="submit"
										value="Submit" />
								</div>
						</form>
						<table align="center">
								<tr>
									<td style="font-style: italic; color: red;">${message}</td>
									
								</tr>
							</table>
					</div>
				</div>
			</div>
		</div>
		
	</section>

 <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>  
   
      <script type="application/javascript" src="https://code.jquery.com/jquery3.5.1.min.js"></script> 

      
      <script>
        $(document).ready(function(){
          jQuery.validator.addMethod("lettersonly", function(value, element) {
             return this.optional(element) || /^[a-z\s]+$/i.test(value);
          });
          jQuery.validator.addMethod("passwordupper", function(value, element) {
             return this.optional(element) || /^(?=.?[A-Z])(?=.?[a-z]).{5,}$/i.test(value);
          });
          jQuery.validator.addMethod("validemailid", function(value, element) {
             return this.optional(element) || /^[a-zA-Z0-9]+@[a-zA-Z0-9.-]+[.][a-z]{2,4}$/i.test(value);
          });
          
          jQuery.validator.addMethod("minDate", function (value, element) {
    var now = new Date();
    var myDate = new Date(value);
    return this.optional(element) || myDate < now;
          });

        });

        $(function() {
  
    $("form[name='regform']").validate({
  
      rules: {
        fname:{
          lettersonly:true,
          maxlength:20,
          required:true
        },
        lname:{
          lettersonly:true,
          maxlength:20,
          required:true
        },
        password:{
          /* passwordupper:true,
          minlength:8, */
          required:true
        },
        mobileno:{
          number:true,
          minlength:10,
          maxlength:10
        },
        email:{
          validemailid:true
          required:true
        },
        address:{
          lettersonly:true
          required:true
        },
        dob:{
          minDate:true
          required:true
        },
        username:{
          required:true,
          minlength:3,
          maxlength:20
        },
        
        
      },
      // Specify validation error messages
      messages: {
        fname:{
          lettersonly:"First Name should not contain numbers",
          maxlength:"First Name max length is 20",
        },
        fname:{
          lettersonly:"First Name should not contain numbers",
          maxlength:"First Name max length is 20",
        },
        
        mobileno:{
          number:"Enter the valid mobile number",
          minlength:"Enter the valid mobile number",
          maxlength:"Enter the valid mobile number"
        },
        password:{
          passwordupper:"Must contains one uppercase,one lowercase min 5 character",
          minlength:"Max Length is 5"
        },  
        confirmpassword:{
          equalTo:"Password is not matching"
        },
        email:{
          validemailid:"Enter the valid email"
        },
        username:{
          required:"This field is required",
          minlength:"Username min length is 2",
          maxlength:"Username max length is 20"
        },
        address:{
          lettersonly:"Enter the valid city"
        },
       
        dob:{
          minDate:"Enter the valid date"
        }
      },
      // Make sure the form is submitted to the destination defined
      // in the "action" attribute of the form when valid
      submitHandler: function(form) {
        form.submit();
      }
    });
  });
      </script>
</body>
</html>