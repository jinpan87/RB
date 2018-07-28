<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Use the correct meta names below for your web application
		 Ref: http://davidbcalhoun.com/2010/viewport-metatag 
		 
<meta name="HandheldFriendly" content="True">
<meta name="MobileOptimized" content="320">-->

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Basic Styles -->
<link rel="stylesheet" type="text/css" media="screen" href="lib/smartadmin/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" media="screen" href="lib/smartadmin/css/font-awesome.min.css">

<!-- SmartAdmin Styles : Please note (smartadmin-production.css) was created using LESS variables -->
<link rel="stylesheet" type="text/css" media="screen" href="lib/smartadmin/css/smartadmin-production.css">
<link rel="stylesheet" type="text/css" media="screen" href="lib/smartadmin/css/smartadmin-skins.css">


<link rel="stylesheet" href="http://jqueryui.com/resources/demos/style.css">

<!-- SmartAdmin RTL Support is under construction
<link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-rtl.css"> -->

<!-- We recommend you use "your_style.css" to override SmartAdmin
     specific styles this will also ensure you retrain your customization with each SmartAdmin update.
<link rel="stylesheet" type="text/css" media="screen" href="css/your_style.css"> -->

<!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->

<link rel="stylesheet" type="text/css" media="screen" href="lib/smartadmin/css/demo.css">



<link rel="stylesheet" type="text/css" media="screen" href="lib/jquery/jquery-ui-1.12.1.custom/jquery-ui.min.css">
<link rel="stylesheet" type="text/css" media="screen" href="lib/jquery/jquery-ui-1.12.1.custom/jquery-ui.theme.min.css">
<link rel="stylesheet" type="text/css" media="screen" href="lib/jquery/jquery-ui-1.12.1.custom/jquery-ui.structure.min.css">
<link rel="stylesheet" type="text/css" media="screen" href="lib/js/bootstrap-datetimepicker-master/css/bootstrap-datetimepicker.min.css">
<link rel="stylesheet/less" type="text/css" href='lib/js/bootstrap-datetimepicker-master/less/datetimepicker.less'/>

<link rel="stylesheet" type="text/css" media="screen" href="lib/js/jqGrid-5.1.0/jqGrid-master/css/ui.jqgrid.css">
<link rel="stylesheet" type="text/css" media="screen" href="lib/js/jqGrid-5.1.0/jqGrid-master/css/ui.jqgrid-bootstrap-ui.css"> 
<link rel="stylesheet" type="text/css" media="screen" href="lib/js/jqGrid-5.1.0/jqGrid-master/css/ui.jqgrid-bootstrap.css"> 

<!-- FAVICONS -->
<link rel="shortcut icon" href="lib/smartadmin/img/favicon/favicon.ico" type="image/x-icon">
<link rel="icon" href="lib/smartadmin/img/favicon/favicon.ico" type="image/x-icon">

<!-- GOOGLE FONT -->
<!--<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">-->

<script src="lib/jquery/html5shiv.js"></script>

<script src="lib/jquery/jquery.js"></script>
<script src="lib/jquery/jquery-2.1.1.min.js"></script>



<script src="lib/smartadmin/js/libs/jquery-ui-1.10.3.min.js"></script>
	
<!-- BOOTSTRAP JS -->
<script src="lib/smartadmin/js/bootstrap/bootstrap.min.js"></script>

<!-- CUSTOM NOTIFICATION -->
<script src="lib/smartadmin/js/notification/SmartNotification.min.js"></script>

<!-- JARVIS WIDGETS -->
<script src="lib/smartadmin/js/smartwidgets/jarvis.widget.min.js"></script>

<!-- EASY PIE CHARTS -->
<script src="lib/smartadmin/js/plugin/easy-pie-chart/jquery.easy-pie-chart.js"></script>

<!-- SPARKLINES -->
<script src="lib/smartadmin/js/plugin/sparkline/jquery.sparkline.min.js"></script>

<!-- JQUERY VALIDATE -->
<script src="lib/smartadmin/js/plugin/jquery-validate/jquery.validate.min.js"></script>

<!-- JQUERY MASKED INPUT -->
<script src="lib/smartadmin/js/plugin/masked-input/jquery.maskedinput.min.js"></script>

<!-- JQUERY SELECT2 INPUT -->
<script src="lib/smartadmin/js/plugin/select2/select2.min.js"></script>

<!-- JQUERY UI + Bootstrap Slider -->
<script src="lib/smartadmin/js/plugin/bootstrap-slider/bootstrap-slider.min.js"></script>

<!-- browser msie issue fix -->
<script src="lib/smartadmin/js/plugin/msie-fix/jquery.mb.browser.min.js"></script>

<!-- FastClick: For mobile devices -->
<script src="lib/smartadmin/js/plugin/fastclick/fastclick.js"></script>

<!-- 更改主题s -->
<script src="lib/smartadmin/js/demo.js"></script>

<!-- MAIN APP JS FILE -->
<script src="lib/smartadmin/js/app.js"></script>
<!--[if IE 7]>

<h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>

<![endif]-->

<!-- PAGE RELATED PLUGIN(S) -->

<!-- Flot Chart Plugin: Flot Engine, Flot Resizer, Flot Tooltip -->
<script src="lib/smartadmin/js/plugin/flot/jquery.flot.cust.js"></script>
<script src="lib/smartadmin/js/plugin/flot/jquery.flot.resize.js"></script>
<script src="lib/smartadmin/js/plugin/flot/jquery.flot.tooltip.js"></script>

<!-- Vector Maps Plugin: Vectormap engine, Vectormap language -->
<script src="lib/smartadmin/js/plugin/vectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="lib/smartadmin/js/plugin/vectormap/jquery-jvectormap-world-mill-en.js"></script>

<!-- Full Calendar -->
<script src="lib/smartadmin/js/plugin/fullcalendar/jquery.fullcalendar.min.js"></script>
<script src="lib/js/echarts3/echarts.min.js"></script>

<!-- jqgrid -->
<script src="lib/jquery/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>

<script src="lib/smartadmin/js/plugin/jqgrid/grid.locale-en.min.js"></script>
<script src="lib/smartadmin/js/plugin/jqgrid/jquery.jqGrid.min.js"></script>
<script src="lib/js/bootstrap-datetimepicker-master/js/bootstrap-datetimepicker.min.js"></script>

<script src="lib/js/jqGrid-5.1.0/jqGrid-master/js/i18n/grid.locale-cn.js"></script>
<!-- 兼容ie8的样式 -->
<style>
      article,aside,dialog,footer,header,section,footer,nav,figure,menu{display:block}
</style>