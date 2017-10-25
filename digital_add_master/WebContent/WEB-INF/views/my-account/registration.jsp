<body class="off-canvas-sidebar">

	<div class="wrapper wrapper-full-page">
		<div class="full-page register-page" filter-color="black"
			data-image="<%=request.getContextPath()%>/assets/img/register.jpg">
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-md-offset-1">
						<div class="card card-signup">
							<h2 class="card-title text-center">Register</h2>
							<div class="row">
								<div class="col-md-5 col-md-offset-1">
									<div class="card-content">
										<div class="info info-horizontal">
											<div class="icon icon-rose">
												<i class="material-icons">timeline</i>
											</div>
											<div class="description">
												<h4 class="info-title">Marketing</h4>
												<p class="description">We've created the marketing
													campaign of the website. It was a very interesting
													collaboration.</p>
											</div>
										</div>
										<div class="info info-horizontal">
											<div class="icon icon-primary">
												<i class="material-icons">code</i>
											</div>
											<div class="description">
												<h4 class="info-title">Fully Coded in HTML5</h4>
												<p class="description">We've developed the website with
													HTML5 and CSS3. The client has access to the code using
													GitHub.</p>
											</div>
										</div>
										<div class="info info-horizontal">
											<div class="icon icon-info">
												<i class="material-icons">group</i>
											</div>
											<div class="description">
												<h4 class="info-title">Built Audience</h4>
												<p class="description">There is also a Fully
													Customizable CMS Admin Dashboard for this product.</p>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-5">
									<div class="social text-center">
										<button class="btn btn-just-icon btn-round btn-twitter">
											<i class="fa fa-twitter"></i>
										</button>
										<button class="btn btn-just-icon btn-round btn-dribbble">
											<i class="fa fa-dribbble"></i>
										</button>
										<button class="btn btn-just-icon btn-round btn-facebook">
											<i class="fa fa-facebook"> </i>
										</button>
										<h4>or be classical</h4>
									</div>
									<form class="form" method="" action="#">
										<div class="card-content">
											<div class="input-group">
												<span class="input-group-addon"> <i
													class="material-icons">face</i>
												</span> <input id="firstName" type="text" class="form-control"
													placeholder="First Name">
											</div>
											<div class="input-group">
												<span class="input-group-addon"> <i
													class="material-icons">face</i>
												</span> <input id="lastName" type="text" class="form-control"
													placeholder="Last Name">
											</div>
											<div class="input-group">
												<span class="input-group-addon"> <i
													class="material-icons">email</i>
												</span> <input id="Email" type="text" class="form-control"
													placeholder="Email">
											</div>
											<div class="input-group">
												<span class="input-group-addon"> <i
													class="material-icons">email</i>
												</span> <input id="mobile" type="text" class="form-control"
													placeholder="Mobile Number">
											</div>
											<div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="material-icons">lock_outline</i>
                                                </span>
                                                <input id="password" type="password" placeholder="Password" class="form-control" />
                                            </div>
											<div class="input-group">
											<span class="input-group-addon"> <i class="material-icons">email</i></span>
											<div class="row" style="padding-left: 20px;">
												<select class="selectpicker" data-style="btn btn-primary btn-round" title="Single Select" data-size="7">
													<option disabled selected>Select Country</option>
													<option value="2">Foobar</option>
													<option value="3">Is great</option>
												</select>
											</div>
											</div>											
											<div class="input-group">
											<span class="input-group-addon"> <i class="material-icons">email</i></span>
											<div class="row" style="padding-left: 20px;">
												<select class="selectpicker" data-style="btn btn-primary btn-round" title="Single Select" data-size="7">
													<option disabled selected>Select State</option>
													<option value="2">Foobar</option>
													<option value="3">Is great</option>
												</select>
											</div>
											</div>
											<div class="input-group" >
											<span class="input-group-addon"> <i class="material-icons">email</i></span>
											<div class="row" style="padding-left: 20px;">
												<select class="selectpicker" data-style="btn btn-primary btn-round" title="Single Select" data-size="7">
													<option disabled selected>Select City</option>
													<option value="2">Foobar</option>
													<option value="3">Is great</option>
												</select>
											</div>
											</div>
											
									
										</div>
										<div class="footer text-center">
											<a href="javascript:void(0)" onclick="getCountries()" class="btn btn-primary btn-round">Register</a>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
<div class="fixed-plugin">
	<div class="dropdown show-dropdown">
		<a href="#" data-toggle="dropdown"> <i class="fa fa-cog fa-2x">
		</i>
		</a>
		<ul class="dropdown-menu">
			<li class="header-title">Background Style</li>
			<li class="adjustments-line"><a href="javascript:void(0)"
				class="switch-trigger">
					<p>Background Image</p>
					<div class="togglebutton switch-sidebar-image">
						<label> <input type="checkbox" checked="">
						</label>
					</div>
					<div class="clearfix"></div>
			</a></li>
			<li class="adjustments-line"><a href="javascript:void(0)"
				class="switch-trigger active-color">
					<p>Filters</p>
					<div class="badge-colors pull-right">
						<span class="badge filter active" data-color="black"></span> <span
							class="badge filter badge-blue" data-color="blue"></span> <span
							class="badge filter badge-green" data-color="green"></span> <span
							class="badge filter badge-orange" data-color="orange"></span> <span
							class="badge filter badge-red" data-color="red"></span> <span
							class="badge filter badge-purple" data-color="purple"></span> <span
							class="badge filter badge-rose" data-color="rose"></span>
					</div>
					<div class="clearfix"></div>
			</a></li>
			<li class="header-title">Background Images</li>
			<li class="active"><a class="img-holder switch-trigger"
				href="javascript:void(0)"> <img
					src="<%=request.getContextPath()%>/assets/img/sidebar-1.jpg"
					data-src="<%=request.getContextPath()%>/assets/img/login.jpeg"
					alt="" />
			</a></li>
			<li><a class="img-holder switch-trigger"
				href="javascript:void(0)"> <img
					src="<%=request.getContextPath()%>/assets/img/sidebar-2.jpg"
					data-src="<%=request.getContextPath()%>/assets/img/lock.jpeg"
					alt="" />
			</a></li>
			<li><a class="img-holder switch-trigger"
				href="javascript:void(0)"> <img
					src="<%=request.getContextPath()%>/assets/img/sidebar-3.jpg"
					data-src="<%=request.getContextPath()%>/assets/img/header-doc.jpeg"
					alt="" />
			</a></li>
			<li><a class="img-holder switch-trigger"
				href="javascript:void(0)"> <img
					src="<%=request.getContextPath()%>/assets/img/sidebar-4.jpg"
					data-src="<%=request.getContextPath()%>/assets/img/bg-pricing.jpeg"
					alt="" />
			</a></li>
			<li class="button-container">
				<div class="">
					<a
						href="http://www.creative-tim.com/product/material-dashboard-pro"
						target="_blank" class="btn btn-primary btn-block btn-fill">Buy
						Now!</a>
				</div>
				<div class="">
					<a href="http://www.creative-tim.com/product/material-dashboard"
						target="_blank" class="btn btn-info btn-block">Get Free Demo</a>
				</div>
			</li>
			<li class="header-title">Thank you for 95 shares!</li>
			<li class="button-container">
				<button id="twitter" class="btn btn-social btn-twitter btn-round">
					<i class="fa fa-twitter"></i> &middot; 45
				</button>
				<button id="facebook" class="btn btn-social btn-facebook btn-round">
					<i class="fa fa-facebook-square"></i> &middot; 50
				</button>
			</li>
		</ul>
	</div>
</div>
</body>

<script type="text/javascript">

function getCountries(){
	$.ajax({url : <%=request.getContextPath()%>"/getAllCountries",success : function(data){
		//data = JSON.parse(data);
		alert(data);
		/* $.each(data.cityList, function(i,val) {
			var cityId = val.cityId;
	 		var cityName = val.cityName;
	 		var globalCity = "Hyderabad"
			if(cityName.toLowerCase() == globalCity.toLowerCase()){
				$('#globalCityName').append('<option value ="'+cityName+'" id="'+cityId+'" selected>'+cityName+'</option>');
			}else{
				$('#globalCityName').append('<option value ="'+cityName+'" id="'+cityId+'">'+cityName+'</option>');
			}
		}); */
	}
	});	
}
</script>