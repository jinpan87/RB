<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> -->

<title>日报管理系统</title>
<meta name="description" content="">
<meta name="author" content="">


<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Basic Styles -->
<link rel="stylesheet" type="text/css" media="screen"
	href="lib/smartadmin/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="lib/smartadmin/css/font-awesome.min.css">

<!-- SmartAdmin Styles : Please note (smartadmin-production.css) was created using LESS variables -->
<link rel="stylesheet" type="text/css" media="screen"
	href="lib/smartadmin/css/smartadmin-production.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="lib/smartadmin/css/smartadmin-skins.css">

<link rel="stylesheet" type="text/css" media="screen"
	href="lib/smartadmin/css/demo.css">

<!-- FAVICONS -->
<link rel="shortcut icon" href="lib/smartadmin/img/favicon/favicon.ico"
	type="image/x-icon">
<link rel="icon" href="lib/smartadmin/img/favicon/favicon.ico"
	type="image/x-icon">


<style>
article, aside, dialog, footer, header, section, footer, nav, figure,
	menu {
	display: block
}
</style>
<script>
	(function() {
		if (!
		/*@cc_on!@*/
		0)
			return;
		var e = "abbr, article, aside, audio, canvas, datalist, details, dialog, eventsource, figure, footer, header, hgroup, mark, menu, meter, nav, output, progress, section, time, video"
				.split(', ');
		var i = e.length;
		while (i--) {
			document.createElement(e[i]);
		}
	})()
</script>
</head>
<body id="login" class="animated fadeInDown">
	<header id="header"> <!--<span id="logo"></span>-->

	<div id="logo-group">
		<span id="logo"> 
		<h1 class="txt-color-red login-header-big">日报管理系统</h1>
		<!-- <img src="lib/smartadmin/img/logo.png" alt="日报管理系统">  --></span>

		<!-- END AJAX-DROPDOWN -->
	</div>
	</header>

	<div id="main" role="main">

		<!-- MAIN CONTENT -->
		<div id="content" class="container">

			<div class="row">
				<div
					class="col-xs-12 col-sm-12 col-md-3 col-lg-4 hidden-xs hidden-sm">
					<!-- <h1 class="txt-color-red login-header-big">日报管理系统</h1> -->

				</div>
				<div class="col-xs-12 col-sm-12 col-md-5 col-lg-4">
					<div class="well no-padding">
						<form action="login.do" method="post" class="smart-form client-form" id="loginForm">
							<header> 欢迎进入日报系统 </header>
							<fieldset>
								<section> <label class="label">用户名：</label> <label
									class="input"> <i class="icon-append fa fa-user"></i> <input
									type="text" name="username" id="uname" value="${users.uname }"> <b
									class="tooltip tooltip-top-right"><i
										class="fa fa-user txt-color-teal"></i> 请输入您的用户名</b></label> </section>
								<section> <label class="label">密码：</label> <label
									class="input"> <i class="icon-append fa fa-lock"></i> <input
									type="password" name="password" id="pwd" value="${users.pwd }"> <b
									class="tooltip tooltip-top-right"><i
										class="fa fa-lock txt-color-teal"></i> 请输入您的密码</b>
								</label> </section>
							</fieldset>
							<footer>
							<button type="submit" class="btn btn-primary">登 录</button>
							</footer>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--================================================== -->

	<!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)-->
	<script src="lib/smartadmin/js/plugin/pace/pace.min.js"></script>

	<!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
	<!--  <script src="lib/jquery/jquery-1.11.1.js"></script> -->
	<script src="lib/jquery/jquery-2.1.1.min.js"></script>

	<script src="lib/smartadmin/js/libs/jquery-ui-1.10.3.min.js"></script>

	<!-- BOOTSTRAP JS -->
	<script src="lib/smartadmin/js/bootstrap/bootstrap.min.js"></script>

	<!-- CUSTOM NOTIFICATION -->
	<script src="lib/smartadmin/js/notification/SmartNotification.min.js"></script>

	<!-- JARVIS WIDGETS -->
	<script src="lib/smartadmin/js/smartwidgets/jarvis.widget.min.js"></script>

	<!-- EASY PIE CHARTS -->
	<script
		src="lib/smartadmin/js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js"></script>

	<!-- SPARKLINES -->
	<script
		src="lib/smartadmin/js/plugin/sparkline/jquery.sparkline.min.js"></script>

	<!-- JQUERY VALIDATE -->
	<script
		src="lib/smartadmin/js/plugin/jquery-validate/jquery.validate.min.js"></script>

	<!-- JQUERY MASKED INPUT -->
	<script
		src="lib/smartadmin/js/plugin/masked-input/jquery.maskedinput.min.js"></script>

	<!-- JQUERY SELECT2 INPUT -->
	<script src="lib/smartadmin/js/plugin/select2/select2.min.js"></script>

	<!-- JQUERY UI + Bootstrap Slider -->
	<script
		src="lib/smartadmin/js/plugin/bootstrap-slider/bootstrap-slider.min.js"></script>

	<!-- browser msie issue fix -->
	<script
		src="lib/smartadmin/js/plugin/msie-fix/jquery.mb.browser.min.js"></script>

	<!-- FastClick: For mobile devices -->
	<script src="lib/smartadmin/js/plugin/fastclick/fastclick.js"></script>

	<!-- MAIN APP JS FILE -->
	<script src="lib/smartadmin/js/app.js"></script>
	<!-- <script src="lib/js/laydate/laydate.js"></script> -->
	<script type="text/javascript">
	 /* var pagefunction = function() {
		  
	      $("#loginForm").validate({
	    	  
	        submitHandler: function(form) {
	        	var uname = $("#uname").val();
	        	var pwd = $("#pwd").val();
	        	var users='{"uname":uname,"pwd":pwd}';
	        	
					$.post("loginCheck.do", {"uname":uname,"pwd":pwd},function(data){
						/* alert(data.code);
						alert("添加成功");
						alert(data.users.uname+data.users.pwd); */
						/* if(data.code==0){
							window.location.href="login.do";
						}else{
							alert(data.msg);
						} 
					 });
	        }
					});
	    	} */
			    			
		
	 	/* pagefunction();  */
	</script>
</body>
</html>