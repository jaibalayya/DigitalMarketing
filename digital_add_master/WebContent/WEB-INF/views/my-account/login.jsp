<style type="text/css">
	 .form-group label {
	     color: red; 
	}
</style>

<body class="off-canvas-sidebar">
    <div class="wrapper wrapper-full-page">
        <div class="full-page login-page" filter-color="black" data-image="../../assets/img/login.jpg">
            <!--   you can change the color of the filter page using: data-color="blue | purple | green | orange | red | rose " -->
            <div class="content">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-sm-6 col-md-offset-4 col-sm-offset-3">
                            <form name="loginForm" id="loginForm" method="POST" action="#">
                                <div class="card card-login card-hidden">
                                    <div class="card-header text-center" data-background-color="rose">
                                        <h4 class="card-title">Login</h4>
                                        <div class="social-line">
                                            <a href="#btn" class="btn btn-just-icon btn-simple">
                                                <i class="fa fa-facebook-square"></i>
                                            </a>
                                            <a href="#pablo" class="btn btn-just-icon btn-simple">
                                                <i class="fa fa-twitter"></i>
                                            </a>
                                            <a href="#eugen" class="btn btn-just-icon btn-simple">
                                                <i class="fa fa-google-plus"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <p class="category text-center" id="loginError" style="color: red;"></p>                                    
                                    <div class="card-content">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">face</i>
                                            </span>
                                            <div class="form-group label-floating">
                                                <label class="control-label">User Name</label>
                                                <input type="text" class="form-control" id="userName" name="userName">
                                                <span style="color: red" id="userNameError"></span>
                                            </div>
                                        </div>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">lock_outline</i>
                                            </span>
                                            <div class="form-group label-floating">
                                                <label class="control-label">Password</label>
                                                <input type="password" class="form-control" id="password" name="password">
                                                <span style="color: red" id="passwordError"></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="footer text-center">
                                        <button type="button" onclick="checkLogin()" class="btn btn-rose btn-simple btn-wd btn-lg">Let's go</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</body>
<script>
	function checkLogin(){
		var check = $('#loginForm').valid();
		
		if(check){		
			$.ajax({url : "<%=request.getContextPath()%>/check-user-login",
				data : {userName : $("#userName").val(), password : $("#password").val()},success : function(data){					
					if(data.status == true){
						window.location = '<%=request.getContextPath()%>/dashboard'
					}else if(data.status == "mobileNeedToVerify"){
						swal({
			                title: "Please Enter OTP",
			                html: '<div class="form-group"> <input id="otp" type="text" class="form-control" onkeydown="removeError()"/><div style="margin: 5px; color: red" id="otpError">'
			                	+'</div> <button class="btn btn-success" id="checkButton">Check</button>'
			                	+'<button class="btn btn-success" id="resendOtpButton">Resend OTP</button></div>',
			                buttonsStyling: false,
			                confirmButtonClass: "btn btn-success",
			                type: "success",
			                dismissible:false,
			                showConfirmButton: false
			            })
					}else if(data.status == false){
						$("#loginError").html('User Name Or Password Wrong');
					}else{
						$("#loginError").html('Some error occured, Please try again');
					}
			}
			});
		}
	}
	
	function removeError(){
		$('#otpError').html('');
	}
	
	$(document).on("click", "#checkButton", function(event){
		var otp = $("#otp").val();
		var mobile = $("#userName").val();
		
		if(otp == null || otp == ""){
			$("#otpError").html("Please Enter OTP");
			return;
		}
		$.ajax({url : "<%=request.getContextPath()%>/check-otp",
			data : {otp : otp, mobile : mobile},success : function(data){			
				if(data.status == true){
					swal.close();
					
				    swal({
		                title: "OK",
		                text: "Registration Completed Successfully.",
		                buttonsStyling: false,
		                confirmButtonClass: "btn btn-success",
		                type: "success"
		            }).then(function(result){
		            	window.location = '<%=request.getContextPath()%>/dashboard';
		            }); 
				}else if(data.status == false){
					$("#otpError").html("Incorrect OTP Entered, Please Check It Once");
				}else if(data.status == "exception"){
					$("#otpError").html("Error Occured, Please Try Again.");
				}
			}			
		});
	});

	$(document).on("click", "#resendOtpButton", function(event){
		var mobile = $("#userName").val();
		
		$.ajax({url : "<%=request.getContextPath()%>/resend-otp",
			data : {mobile : mobile},success : function(data){			
				if(data.status == true){
					$("#otpError").html("OTP Send to your mobile number successfully.");
				}else{
					$("#otpError").html("Error Occured, Please Try Again.");
				}
			}			
		});
	});
	
	// to validate customer form inputs 
	$('#loginForm').validate({
		    rules: {
			      	"userName": {
				        required: true
			      	},		      	
			      	"password": {
				        required: true
			      	}
		  		},
		    messages: {
				       "userName": {
					        required: 'Please Enter User Name'
				       },
				       "password": {
					        required: 'Please Enter Password'
				       }    
				 },
			    errorPlacement:
				    function(error, element){
					    if (element.attr("id") == "userName" ){
					    	document.getElementById("userNameError").innerHTML="";
				          	error.appendTo('#userNameError');
				        }else if (element.attr("id") == "password" ){
					    	document.getElementById("passwordError").innerHTML="";
				          	error.appendTo('#passwordError');
				        }
			        }
			});
</script>

