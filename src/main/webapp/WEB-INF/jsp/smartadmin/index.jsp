<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html >
<html>
<head>
	<meta charset="utf-8">
    <!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/> -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title> 首页 </title>
	<meta name="description" content="首页">
	<meta name="author" content="lcy">
	<%@ include file="common/commonHeader.jsp"%> 
	
<link rel="stylesheet" type="text/css" href="lib/smartadmin/css/style.css">

</head>
 <!-- possible classes: minified, fixed-ribbon, fixed-header, fixed-width-->
<body class="fixed-navigation fixed-header fixed-ribbon">
	<!-- HEADER -->
	<header id="header"> 
		<div id="logo-group">

			<!-- PLACE YOUR LOGO HERE -->
			<span id="logo">
			<h1 class="txt-color-red login-header-big">日报管理系统</h1>
			 <!-- <img src="lib/smartadmin/img/logo.png" alt="SmartAdmin"> --> </span>
			<!-- END LOGO PLACEHOLDER -->

			<!-- Note: The activity badge color changes when clicked and resets the number to 0
			Suggestion: You may want to set a flag when this happens to tick off all checked messages / notifications -->
			<!-- <span id="activity" class="activity-dropdown"> <i class="fa fa-user"></i> <b class="badge"> 21 </b> </span> -->

			<!-- AJAX-DROPDOWN : control this dropdown height, look and feel from the LESS variable file -->
			<div class="ajax-dropdown">

				<!-- the ID links are fetched via AJAX to the ajax container "ajax-notifications" -->
				<!-- <div class="btn-group btn-group-justified" data-toggle="buttons">
					<label class="btn btn-default">
						<input type="radio" name="activity" id="ajax/notify/mail.html">
						Msgs (14) </label>
					<label class="btn btn-default">
						<input type="radio" name="activity" id="ajax/notify/notifications.html">
						notify (3) </label>
					<label class="btn btn-default">
						<input type="radio" name="activity" id="ajax/notify/tasks.html">
						Tasks (4) </label>
				</div> -->

				<!-- notification content -->
				<!-- <div class="ajax-notifications custom-scroll">

					<div class="alert alert-transparent">
						<h4>Click a button to show messages here</h4>
						This blank page message helps protect your privacy, or you can show the first message here automatically.
					</div>

					<i class="fa fa-lock fa-4x fa-border"></i>

				</div> -->
				<!-- end notification content -->

				<!-- footer: refresh area -->
				<span> Last updated on: 12/12/2013 9:43AM
					<button type="button" data-loading-text="<i class='fa fa-refresh fa-spin'></i> Loading..." class="btn btn-xs btn-default pull-right">
						<i class="fa fa-refresh"></i>
					</button> </span>
				<!-- end footer -->

			</div>
			<!-- END AJAX-DROPDOWN -->
		</div>

		<!-- projects dropdown -->
		<!-- <div id="project-context">

			<span class="label">Projects:</span>
			<span id="project-selector" class="popover-trigger-element dropdown-toggle" data-toggle="dropdown">Recent projects <i class="fa fa-angle-down"></i></span>

			Suggestion: populate this list with fetch and push technique
			<ul class="dropdown-menu">
				<li>
					<a href="javascript:void(0);">Online e-merchant management system - attaching integration with the iOS</a>
				</li>
				<li>
					<a href="javascript:void(0);">Notes on pipeline upgradee</a>
				</li>
				<li>
					<a href="javascript:void(0);">Assesment Report for merchant account</a>
				</li>
				<li class="divider"></li>
				<li>
					<a href="javascript:void(0);"><i class="fa fa-power-off"></i> Clear</a>
				</li>
			</ul>
			end dropdown-menu

		</div> -->
		<!-- end projects dropdown -->

		<!-- pulled right: nav area -->
		<div class="pull-right">

			<!-- collapse menu button -->
			<div id="hide-menu" class="btn-header pull-right">
				<span> <a href="javascript:void(0);" title="Collapse Menu"><i class="fa fa-reorder"></i></a> </span>
			</div>
			<!-- end collapse menu -->

			<!-- logout button -->
			<div id="logout" class="btn-header transparent pull-right">
				<span> <a href="login.jsp" title="Sign Out"><i class="fa fa-sign-out"></i></a> </span>
			</div>
			<!-- end logout button -->

			<!-- search mobile button (this is hidden till mobile view port) -->
			<div id="search-mobile" class="btn-header transparent pull-right">
				<span> <a href="javascript:void(0)" title="Search"><i class="fa fa-search"></i></a> </span>
			</div>
			<!-- end search mobile button -->

			<!-- input: search field -->
			<!-- <form action="#search.html" class="header-search pull-right">
				<input type="text" placeholder="Find reports and more" id="search-fld">
				<button type="submit">
					<i class="fa fa-search"></i>
				</button>
				<a href="javascript:void(0);" id="cancel-search-js" title="Cancel Search"><i class="fa fa-times"></i></a>
			</form> -->
			<!-- end input: search field -->

			<!-- multiple lang dropdown : find all flags in the image folder -->
			<!-- <ul class="header-dropdown-list hidden-xs">
				<li>
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"> <img alt="" src="lib/smartadmin/img/flags/us.png"> <span> US </span> <i class="fa fa-angle-down"></i> </a>
					<ul class="dropdown-menu pull-right">
						<li class="active">
							<a href="javascript:void(0);"><img alt="" src="lib/smartadmin/img/flags/us.png"> US</a>
						</li>
						<li>
							<a href="javascript:void(0);"><img alt="" src="lib/smartadmin/img/flags/es.png"> Spanish</a>
						</li>
						<li>
							<a href="javascript:void(0);"><img alt="" src="lib/smartadmin/img/flags/de.png"> German</a>
						</li>
					</ul>
				</li>
			</ul> -->
			<!-- end multiple lang -->

		</div>
		<!-- end pulled right: nav area -->

	</header>
	<!-- END HEADER -->
	
	<!-- Left panel : Navigation area -->
	<!-- Note: This width of the aside area can be adjusted through LESS variables -->
	<aside id="left-panel">

		<!-- User info -->
		<div class="login-info">
			<span><!--  User image size is adjusted inside CSS, it should stay as it  -->
				
				<a href="javascript:void(0);" id="show-shortcut">
					<!-- <img src="lib/smartadmin/img/avatars/sunny.png" alt="me" class="online" />  -->
					<span>
						${users.realname }
					</span>
					<!-- <i class="fa fa-angle-down"></i> -->
				</a> 
				
			</span>
		</div>
		<!-- end user info -->

		<!-- NAVIGATION : This navigation is also responsive

		To make this navigation dynamic please make sure to link the node
		(the reference to the nav > ul) after page load. Or the navigation
		will not initialize.
		-->
		<nav>
			<!-- NOTE: Notice the gaps after each icon usage <i></i>..
			Please note that these links work a bit different than
			traditional hre="" links. See documentation for details.
			-->

			<ul>
			    <li class="active">
					<a href="daily/dailyMsg.do?userId=${users.id }&roleId=${users.permission}" title="我的日报"><i class="fa fa-lg fa-fw fa-home"></i> <span class="menu-item-parent">我的日报</span></a>
				</li>
				<!-- <li class="">
					<a href="dashboard.do" title="Dashboard"><i class="fa fa-lg fa-fw fa-home"></i> <span class="menu-item-parent">仪表盘</span></a>
				</li>
				<li>
					<a href="inbox.do"><i class="fa fa-lg fa-fw fa-inbox"></i> <span class="menu-item-parent">收件箱</span><span class="badge pull-right inbox-badge">14</span></a>
				</li> -->
				<li>
					<a href="#"><i class="fa fa-lg fa-fw fa-bar-chart-o"></i> <span class="menu-item-parent">项目信息统计</span></a>
					<ul>
						<li>
							<a href="type.do">项目信息</a>
						</li>
						<li>
							<a href="project/projectProgressManager/type.do">项目进度管理</a>
						</li>
						 <li>
							<a href="statisticProject.do">项目统计</a>
						</li> 
						<!--<li>
							<a href="inlineCharts.do">内联图表</a>
						</li> -->
					</ul>
				</li>
				<li id="taskMenu">
					<a href="#"><i class="fa fa-lg fa-fw fa-bar-chart-o"></i> <span class="menu-item-parent">技术支持统计</span></a>
					<ul>
						<li id="addTask">
							<a href="task/writeTask.do?userId=${users.id }&roleId=${users.permission}">创建任务</a>
						</li>
						 <li>
							<a href="task/queryTaskList.do?userId=${users.id }&roleId=${users.permission}">任务汇总</a>
						</li> 
						<!--<li>
							<a href="inlineCharts.do">内联图表</a>
						</li> -->
					</ul>
				</li>
				<li>
					<a href="#"><i class="fa fa-lg fa-fw fa-table"></i> <span class="menu-item-parent">日报信息统计</span></a>
					<ul>
						<li>
							<a href="daily/writeDaily.do?userId=${users.id }">填写日报</a>
						</li>
						 <li style="display:none" >
							<a href="daily/dailyThreeDay.do?rUid=${users.id }" id="dailyThreeDay">三天内要拜访客户的日报信息</a>
						</li> 
						 <li style="display:none" >
							<a href="daily/dailyWeek.do?rUid=${users.id }" id="dailyWeek">一个星期没有日报的项目的最近一次日报</a>
						</li> 
						<li>
							<a href="daily/dailyCheck.do?userId=${users.id }&roleId=${users.permission}">日报审批</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="#"><i class="fa fa-lg fa-fw fa-table"></i> <span class="menu-item-parent">报销</span></a>
					<ul>
						<li>
							<a href="apply/queryApplyListTop.do?userId=${users.id }&roleId=${users.permission}">我的报销单据</a>
						</li>
						  <li style="display:lock" >
							<a href="apply/applyCheckTop.do?userId=${users.id }&roleId=${users.permission}">报销审核</a>
						</li> 
						<%--  <li style="display:none" >
							<a href="daily/dailyWeek.do?rUid=${users.id }" id="dailyWeek">一个星期没有日报的项目的最近一次日报</a>
						</li> 
						<li>
							<a href="daily/dailyCheck.do?userId=${users.id }&roleId=${users.permission}">日报审批</a>
						</li>  --%>
					</ul>
				</li>
				<!-- <li>
					<a href="#"><i class="fa fa-lg fa-fw fa-pencil-square-o"></i> <span class="menu-item-parent">表单</span></a>
					<ul>
						<li>
							<a href="formElements.do">表单组件</a>
						</li>
						<li>
							<a href="formTemplates.do">表单布局</a>
						</li>
						<li>
							<a href="validation.do">表单校验</a>
						</li>
						<li>
							<a href="bootstrapForms.do">Bootstrap表单元素</a>
						</li>
						<li>
							<a href="plugins.do">表单插件</a>
						</li>
						<li>
							<a href="wizard.do">向导</a>
						</li>
						<li>
							<a href="otherEditors.do">Bootstrap 编辑器</a>
						</li>
						<li>
							<a href="dropzone.do">Dropzone <span class="badge pull-right inbox-badge bg-color-yellow">new</span></a>
						</li>
					</ul>
				</li> -->
				<!-- <li>
					<a href="#"><i class="fa fa-lg fa-fw fa-desktop"></i> <span class="menu-item-parent">用户界面元素</span></a>
					<ul>
						<li>
							<a href="generalElements.do">普通元素</a>
						</li>
						<li>
							<a href="buttons.do">按钮</a>
						</li>
						<li>
							<a href="#">图标</a>
							<ul>
								<li>
									<a href="fa.do"><i class="fa fa-plane"></i> 字体</a>
								</li>	
								<li>
									<a href="glyph.do"><i class="glyphicon glyphicon-plane"></i> 图文 </a>
								</li>
							</ul>
						</li>
						<li>
							<a href="grid.do">网格</a>
						</li>
						<li>
							<a href="treeview.do">树形视图</a>
						</li>
						<li>
							<a href="nestableList.do">嵌套视图</a>
						</li>
						<li>
							<a href="jqueryUI.do">JQuery UI</a>
						</li>
					</ul>
				</li> -->
				<!-- <li>
					<a href="#"><i class="fa fa-lg fa-fw fa-folder-open"></i> <span class="menu-item-parent">六级导航</span></a>
					<ul>
						<li>
							<a href="#"><i class="fa fa-fw fa-folder-open"></i> 2nd Level</a>
							<ul>
								<li>
									<a href="#"><i class="fa fa-fw fa-folder-open"></i> 3ed Level </a>
									<ul>
										<li>
											<a href="#"><i class="fa fa-fw fa-file-text"></i> File</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-fw fa-folder-open"></i> 4th Level</a>
											<ul>
												<li>
													<a href="#"><i class="fa fa-fw fa-file-text"></i> File</a>
												</li>
												<li>
													<a href="#"><i class="fa fa-fw fa-folder-open"></i> 5th Level</a>
													<ul>
														<li>
															<a href="#"><i class="fa fa-fw fa-file-text"></i> File</a>
														</li>
														<li>
															<a href="#"><i class="fa fa-fw fa-file-text"></i> File</a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
									</ul>
								</li>
							</ul>
						</li>
						<li>
							<a href="#"><i class="fa fa-fw fa-folder-open"></i> Folder</a>

							<ul>
								<li>
									<a href="#"><i class="fa fa-fw fa-folder-open"></i> 3ed Level </a>
									<ul>
										<li>
											<a href="#"><i class="fa fa-fw fa-file-text"></i> File</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-fw fa-file-text"></i> File</a>
										</li>
									</ul>
								</li>
							</ul>

						</li>
					</ul>
				</li> -->
				<!-- <li>
					<a href="calendar.do"><i class="fa fa-lg fa-fw fa-calendar"><em>3</em></i> <span class="menu-item-parent">日程表</span></a>
				</li>
				<li>
					<a href="widgets.do"><i class="fa fa-lg fa-fw fa-list-alt"></i> <span class="menu-item-parent">小部件</span></a>
				</li>
				<li>
					<a href="gallery.do"><i class="fa fa-lg fa-fw fa-picture-o"></i> <span class="menu-item-parent">图库</span></a>
				</li>
				<li>
					<a href="gmapXml.do"><i class="fa fa-lg fa-fw fa-map-marker"></i> <span class="menu-item-parent">谷歌地图</span><span class="badge bg-color-greenLight pull-right inbox-badge">9</span></a>
				</li> -->
				<!-- <li>
					<a href="#"><i class="fa fa-lg fa-fw fa-windows"></i> <span class="menu-item-parent">杂项</span></a>
					<ul>
						<li>
							<a href="typography.do">排版</a>
						</li>
						<li>
							<a href="pricingTable.do">定价</a>
						</li>
						<li>
							<a href="invoice.do">发票</a>
						</li>
						<li>
							<a href="login.do" target="_top">登录</a>
						</li>
						<li>
							<a href="register.do" target="_top">注册</a>
						</li>
						<li>
							<a href="lock.do" target="_top">锁屏</a>
						</li>
						<li>
							<a href="error404.do">错误页面404</a>
						</li>
						<li>
							<a href="error500.do">错误页面500</a>
						</li>
						<li>
							<a href="blank_.do">空白页</a>
						</li>
						<li>
							<a href="emailTemplate.do">邮件模板</a>
						</li>
						<li>
							<a href="search.do">搜索页</a>
						</li>
						<li>
							<a href="ckeditor.do">CK Editor</a>
						</li>
					</ul>
				</li> -->
				<!-- <li>
					<a href="#"><i class="fa fa-lg fa-fw fa-file"></i> <span class="menu-item-parent">其他页</span></a>
					<ul>
						<li>
							<a href="forum.do">论坛</a>
						</li>
						<li>
							<a href="profile.do">个人中心</a>
						</li>
						<li>
							<a href="timeline.do">时间轴</a>
						</li>
					</ul>
				</li> -->
			</ul>
		</nav>
		<span class="minifyme"> <i class="fa fa-arrow-circle-left hit"></i> </span>

	</aside>
	<!-- END NAVIGATION -->
	
	<!-- MAIN PANEL -->
	<div id="main" role="main">
	    
	     <!-- RIBBON -->
		<div id="ribbon">

			<span class="ribbon-button-alignment"> <span id="refresh" class="btn btn-ribbon" data-title="refresh"  rel="tooltip" data-placement="bottom" data-original-title="<i class='text-warning fa fa-warning'></i> Warning! This will reset all your widget settings." data-html="true"><i class="fa fa-refresh"></i></span> </span>

			<!-- breadcrumb -->
			<ol class="breadcrumb">
				<li>Home</li><li>Dashboard</li>
			</ol>
			<!-- end breadcrumb -->

			<!-- You can also add more buttons to the
			ribbon for further usability

			Example below:

			<span class="ribbon-button-alignment pull-right">
			<span id="search" class="btn btn-ribbon hidden-xs" data-title="search"><i class="fa-grid"></i> Change Grid</span>
			<span id="add" class="btn btn-ribbon hidden-xs" data-title="add"><i class="fa-plus"></i> Add</span>
			<span id="search" class="btn btn-ribbon" data-title="search"><i class="fa-search"></i> <span class="hidden-mobile">Search</span></span>
			</span> -->

		</div>
		<!-- END RIBBON -->
		
		<!-- MAIN CONTENT -->
		<div id="content">
		
		</div>
		
		<!-- 弹出框 -->
		<div id="extbkbox" class="extbkbox" style="display:block;">
		<div class="extbkboxm">
		<strong style="float:left;padding-left:10px;">日报消息提醒</strong> 
		<div class="extmore">
			<span class="extbkboxnar" id="extbkboxnar" onclick="extbkboxnar();"></span>
		</div>
		</div>
		<div class="extbkboxb" id="extbkboxb" style="display:block;">
		<ul>
			<li><a href="javascript:changeClick();"  >三天内需要拜访的客户</a></li>
			<li><a href="javascript:changeClick2();">一周内没有日报信息的项目</a></li>
		</ul>
		</div>
		</div>
		<!-- END MAIN CONTENT -->
	</div>
	<!-- END MAIN PANEL -->
	
	<!-- SHORTCUT AREA : With large tiles (activated via clicking user name tag)
	Note: These tiles are completely responsive,
	you can add as many as you like
	-->
	<!-- <div id="shortcut">
		<ul>
			<li>
				<a href="#inbox.do" class="jarvismetro-tile big-cubes bg-color-blue"> <span class="iconbox"> <i class="fa fa-envelope fa-4x"></i> <span>邮件 <span class="label pull-right bg-color-darken">14</span></span> </span> </a>
			</li>
			<li>
				<a href="#calendar.do" class="jarvismetro-tile big-cubes bg-color-orangeDark"> <span class="iconbox"> <i class="fa fa-calendar fa-4x"></i> <span>日历</span> </span> </a>
			</li>
			<li>
				<a href="#gmapXml.do" class="jarvismetro-tile big-cubes bg-color-purple"> <span class="iconbox"> <i class="fa fa-map-marker fa-4x"></i> <span>地图</span> </span> </a>
			</li>
			<li>
				<a href="#invoice.do" class="jarvismetro-tile big-cubes bg-color-blueDark"> <span class="iconbox"> <i class="fa fa-book fa-4x"></i> <span>订单 <span class="label pull-right bg-color-darken">99</span></span> </span> </a>
			</li>
			<li>
				<a href="#gallery.do" class="jarvismetro-tile big-cubes bg-color-greenLight"> <span class="iconbox"> <i class="fa fa-picture-o fa-4x"></i> <span>画廊 </span> </span> </a>
			</li>
			<li>
				<a href="#profile.do" class="jarvismetro-tile big-cubes selected bg-color-pinkDark"> <span class="iconbox"> <i class="fa fa-user fa-4x"></i> <span>个人中心 </span> </span> </a>
			</li>
		</ul>
	</div> -->
	<!-- END SHORTCUT AREA -->
	<%@ include file="common/commonScript.jsp"%>
	<script>
	    $("aside").css("background","#333");
	    $(function(){
	    	var roleId=${users.permission};
	    	if(roleId==2){
	    		document.getElementById("addTask").style.display="inline";
	    		document.getElementById("taskMenu").style.display="inline";
	    	}else {
	    		document.getElementById("addTask").style.display="none";
	    		document.getElementById("taskMenu").style.display="inline";
	    	}
	    });
	    
	    //定时消息弹出框
	function extbkboxnar(){
	var narrowmen = document.getElementById("extbkboxnar");
	var narrowbox = document.getElementById("extbkboxb");
	if (narrowbox.style.display == "block"){
		narrowbox.style.display = "none";
		narrowmen.className = "extbkboxnarove";
		}
		else{
		narrowbox.style.display = "block";
		narrowmen.className = "extbkboxnar";
		}		
	}
	
	function extbkboxove(str){document.getElementById("extbkbox").style.display = "none";}
	
	function changeClick(){
		$("#dailyThreeDay").click();
	}
	function changeClick2(){
		
		$("#dailyWeek").click();
	}
	</script>
</body>
</html>