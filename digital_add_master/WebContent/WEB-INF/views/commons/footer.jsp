<!--   Core JS Files   -->
<script
	src="<%=request.getContextPath()%>/assets/js/jquery-3.2.1.min.js"
	type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"
	type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/assets/js/material.min.js"
	type="text/javascript"></script>
<script
	src="<%=request.getContextPath()%>/assets/js/perfect-scrollbar.jquery.min.js"
	type="text/javascript"></script>
<!-- Library for adding dinamically elements -->
<script src="<%=request.getContextPath()%>/assets/js/arrive.min.js"
	type="text/javascript"></script>
<!-- Forms Validations Plugin -->
<script
	src="<%=request.getContextPath()%>/assets/js/jquery.validate.min.js"></script>
<!-- Promise Library for SweetAlert2 working on IE -->
<script
	src="<%=request.getContextPath()%>/assets/js/es6-promise-auto.min.js"></script>
<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
<script src="<%=request.getContextPath()%>/assets/js/moment.min.js"></script>
<!--  Charts Plugin, full documentation here: https://gionkunz.github.io/chartist-js/ -->
<script src="<%=request.getContextPath()%>/assets/js/chartist.min.js"></script>
<!--  Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
<script
	src="<%=request.getContextPath()%>/assets/js/jquery.bootstrap-wizard.js"></script>
<!--  Notifications Plugin, full documentation here: http://bootstrap-notify.remabledesigns.com/    -->
<script
	src="<%=request.getContextPath()%>/assets/js/bootstrap-notify.js"></script>
<!--   Sharrre Library    -->
<script src="<%=request.getContextPath()%>/assets/js/jquery.sharrre.js"></script>
<!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
<script
	src="<%=request.getContextPath()%>/assets/js/bootstrap-datetimepicker.js"></script>
<!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
<script
	src="<%=request.getContextPath()%>/assets/js/jquery-jvectormap.js"></script>
<!-- Sliders Plugin, full documentation here: https://refreshless.com/nouislider/ -->
<script src="<%=request.getContextPath()%>/assets/js/nouislider.min.js"></script>
<!--  Google Maps Plugin    -->
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAFPQibxeDaLIUHsC6_KqDdFaUdhrbhZ3M"></script>
<!--  Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
<script
	src="<%=request.getContextPath()%>/assets/js/jquery.select-bootstrap.js"></script>
<!--  DataTables.net Plugin, full documentation here: https://datatables.net/    -->
<script
	src="<%=request.getContextPath()%>/assets/js/jquery.datatables.js"></script>
<!-- Sweet Alert 2 plugin, full documentation here: https://limonte.github.io/sweetalert2/ -->
<script src="<%=request.getContextPath()%>/assets/js/sweetalert2.js"></script>
<!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
<script
	src="<%=request.getContextPath()%>/assets/js/jasny-bootstrap.min.js"></script>
<!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
<script
	src="<%=request.getContextPath()%>/assets/js/fullcalendar.min.js"></script>
<!-- Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
<script
	src="<%=request.getContextPath()%>/assets/js/jquery.tagsinput.js"></script>
<!-- Material Dashboard javascript methods -->
<script
	src="<%=request.getContextPath()%>/assets/js/material-dashboard5438.js?v=1.2.0"></script>
<!-- Material Dashboard DEMO methods, don't include it in your project! -->
<script src="<%=request.getContextPath()%>/assets/js/demo.js"></script>
<script type="text/javascript">
	$().ready(function() {
		demo.checkFullPageBackgroundImage();

		setTimeout(function() {
			// after 1000 ms we add the class animated to the login/register card
			$('.card').removeClass('card-hidden');
		}, 700)
	});
</script>

<footer class="footer">
	<div class="container">
		<nav class="pull-left">
			<ul>
				<li><a href="#"> Home </a></li>
				<li><a href="#"> Company </a></li>
				<li><a href="#"> Portfolio </a></li>
				<li><a href="#"> Blog </a></li>
			</ul>
		</nav>
		<p class="copyright pull-right">
			&copy;
			<script>
				document.write(new Date().getFullYear())
			</script>
			<a href="http://www.creative-tim.com/">Creative Tim</a>, made with
			love for a better web
		</p>
	</div>
</footer>

</html>