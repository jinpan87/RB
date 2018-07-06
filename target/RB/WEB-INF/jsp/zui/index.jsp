<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>zui</title>
<!-- zui -->
<link href="lib/zui/css/zui.min.css" rel="stylesheet">
<!-- jquery依赖 -->
<script src="lib/zui/lib/jquery/jquery.js" type="text/javascript"></script>
<!-- ZUI Javascript组件 -->
<script src="lib/zui/js/zui.min.js"></script>
<style>
#content{
   font-family:微软雅黑;
   overflow:hidden;
   width:100%;
}
.top{
   width:100%;
   height:74px;
   background:rgb(6,131,177);
}
.main{
   width:100%;
}
.bottom{
   width:100%;
   height:30px;
   background:yellowgreen;
   margin-bottom:0px;
}
.menu{
   padding:0px;
   width:300px;
   position:absolute;
   top: 74px;
   left:0px;
   background:white;
   border:1px solid rgb(203,203,203);
}
.contain{
   width:100%;
   height:100%;
   position:relative;
   left:300px;
}
.menuName{
   padding:1em;
   margin:0px;
   color:black;
   text-align:center;
}
.menuFirst{
   margin-top:0px;
   padding:0px;
}
.menuLi{
  margin-bottom:10px;
  background:rgb(212,230,240);
}
.menuFirstName{
   padding:0.5em;
   margin-bottom:0px;
   margin-top:0px;
   color:rgb(106,112,112);
   text-align:left;
   border-top:1px solid rgb(203,203,203);
   border-bottom:1px solid rgb(203,203,203);
}
.menuSecond li a h3{
   margin:0px;
   padding:0.5em;
}
a{
  text-decoration:none;
  color:rgb(106,112,112);
}
a:hover{
}
.breadcrumb li{
   font-size:20px;
   padding-top:10px;
}
</style>
</head>
<body>
<div id="content">
    <!-- top -->
	<div class="top">
	     <img src="lib/images/zui/logo.png">
	</div>
	<!-- top end -->
	
	<!-- main -->
	<div class="main">
	     
		 <!-- 主展示区-->
	     <div class="contain">
			  <div style="width:100%;height:64px;border-bottom:1px solid rgb(203,203,203)">
			      <ul class="breadcrumb">
				    <li>Home</li>
					<li>Library</li>
					<li>hello</li>
				  </ul>
			  </div>
			 
			  <iframe id="page" name="page" src='http://www.baidu.com' frameborder='0'></iframe>
			  
			  <button id="success" type="button" class="btn btn-success">成功</button>
			  <button id="failure" type="button" class="btn btn-danger">失败</button>
		 </div>
		 <!-- 主展示区 end-->
	</div>
	
	<!-- bottom -->
	<div class="bottom">
	     
	</div>
	<!-- bottom end -->
	
	<!-- 左侧菜单-->
	<div class="menu">
	     <h2 class="menuName">用户模块</h2>
		 <ul class="menuFirst">
		    <li class="menuLi">
		        <h2 class="menuFirstName"><i class="icon icon-film"></i>  DataDictionary</h2>
		        <ul class="menuSecond" style="list-style-type:circle;">
				   <li><a href="http://www.sina.com.cn" target="page"><h3><i class="icon icon-film"></i>  新浪</h3></a></li>
				   <li><a href="http://192.168.1.115:8080/zqibp" target="page"><h3><i class="icon icon-film"></i>  众擎</h3></a></li>
				</ul>
		    </li> 
		 </ul>
	</div>
	<!-- 左侧菜单 end-->
</div>
<script>
var height = $(window).height()-$(".top").height()-$(".bottom").height();
var width = $(window).width() - 4;
var iframeheight = height - 64;
$("#page").attr("height",iframeheight);
$("#page").attr("width",width);
$(".main").height(height);
$(".menu").height(height);
$("body").resize(function() {
  var height = $(window).height()-$(".top").height()-$(".bottom").height();
var width = $(window).width() - 4;
var iframeheight = height - 64;
$("#page").attr("height",iframeheight);
$("#page").attr("width",width);
$(".main").height(height);
$(".menu").height(height);
});

$("#success").click(function(){
    $(".menu").animate({left:"-300px"},500);
	$(".contain").animate({left:"0px"},500);
});

$("#failure").click(function(){
    $(".menu").animate({left:"0px"},500);
	$(".contain").animate({left:"300px"},500);
});
</script>
</body>
</html>