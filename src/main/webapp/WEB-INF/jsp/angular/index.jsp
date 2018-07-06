<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AngularJs</title>
<!-- zui -->
<link href="lib/zui/css/zui.css" rel="stylesheet">
<link href="lib/zui/lib/datetimepicker/datetimepicker.min.css" rel="stylesheet">
<style> 
.content{
   width:1400px;
   min-width:1400px;
   margin:0 auto;
   padding:30px;
   overflow:hidden;
}
.leftPanel{
   width:80%;
}   
.rightPanel{
   width:20%;
   height:1000px;
}
.fixContent{
  position:fixed;
  min-width:400px;
  overflow:hidden;
  font-size:16px;
  font-family:微软雅黑;
  border:1px solid rgb(203,203,203);
}
.clear{
  overflow:hidden;
}
.fontWeightBold{
  font-weight: bold;
}
.suggest{
  font-size:14px;color:red;
}
.order{
  height:400px;
}
.submit{
  text-align:center;
  width:100%;
}
.logo{
  width:100%;
  height:100px;
  background:pink;
}
.foodItem{
  width:350px;
  overflow:hidden;
}
</style>
</head>
<body ng-app="saleIndex">
<div class="content">
    <!-- 左边菜单栏 -->
    <div class="leftPanel pull-left">
        <div class="logo"><img src="lib/images/logo.jpg" class="logo"></div>
        <div class="panel">每天订餐时间：09:00-20:30   每天送餐时间：12:15-21:00  订餐电话：400-678-9977</div>
        
        <div class="example">
        <ul id="myTab2" class="nav nav-pills">
          <li class="active">
            <a href="#tab11" data-toggle="tab">川菜</a>
          </li>
          <li class="">
            <a href="#tab22" data-toggle="tab">鲁菜</a>
          </li>
          <li class="">
            <a href="#tab22" data-toggle="tab">鲁菜</a>
          </li>
          <li class="">
            <a href="#tab22" data-toggle="tab">鲁菜</a>
          </li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              Other tabs <b class="caret"></b>
            </a>
            <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
              <li>
                <a href="#tab33" tabindex="-1" data-toggle="tab">Tab3</a>
              </li>
              <li>
                <a href="#tab44" tabindex="-1" data-toggle="tab">Tab4</a>
              </li>
            </ul>
          </li>
        </ul>
        <div class="tab-content">
          <div class="tab-pane active" id="tab11">
             <div class="foodItem pull-left">
                 <img class="pull-left" style="width:50%" src="lib/images/food.jpg"/>
                 <div class="pull-left" style="width:50%;margin-top:15px;height:70px;border:1px solid dashed">
                     <div style="font-size:15px;font-family:微软雅黑;text-align:center">台式卤肉双拼</div>
                     <div style="font-size:15px;font-family:微软雅黑;text-align:center">￥16.00</div>
                     <div style="width:100%;margin-top:10px;text-align:center"><button type="button" class="btn btn-warning">添加</button></div>
                 </div>
             </div>
             <div class="foodItem pull-left">
                 <img class="pull-left" style="width:50%" src="lib/images/food.jpg"/>
                 <div class="pull-left" style="width:50%;margin-top:15px;height:70px;border:1px solid dashed">
                     <div style="font-size:15px;font-family:微软雅黑;text-align:center">台式卤肉双拼</div>
                     <div style="font-size:15px;font-family:微软雅黑;text-align:center">￥16.00</div>
                     <div style="width:100%;margin-top:10px;text-align:center"><button type="button" class="btn btn-warning">添加</button></div>
                 </div>
             </div>
             <div class="foodItem pull-left">
                 <img class="pull-left" style="width:50%" src="lib/images/food.jpg"/>
                 <div class="pull-left" style="width:50%;margin-top:15px;height:70px;border:1px solid dashed">
                     <div style="font-size:15px;font-family:微软雅黑;text-align:center">台式卤肉双拼</div>
                     <div style="font-size:15px;font-family:微软雅黑;text-align:center">￥16.00</div>
                     <div style="width:100%;margin-top:10px;text-align:center"><button type="button" class="btn btn-warning">添加</button></div>
                 </div>
             </div>
          </div>
          <div class="tab-pane" id="tab22">
            <p>星火燎原我热情的眼眸</p>
            <p>曾点亮最灿烂的天空</p>
            <p>晴天霹雳你绝情的放手</p>
            <p>在我最需要你的时候</p>
            <p>于是爱恨交错人消瘦</p>
          </div>

          <div class="tab-pane" id="tab33">
            <p>怕是怕这些苦没来由</p>
            <p>于是悲欢起落人静默</p>
            <p>等一等这些伤会自由</p>
            <p>于是爱恨交错人消瘦</p>
            <p>怕是怕这些苦没来由</p>
            <p>于是悲欢起落人静默</p>
            <p>等一等这些伤会自由</p>
          </div>
          <div class="tab-pane" id="tab44">
            <p>口是心非你矫情的面容</p>
            <p>都烙印在心灵的角落</p>
            <p>无话可说我纵情的结果</p>
            <p>就像残破光秃的山头</p>
            <p>浑然天成我纯情的悸动</p>
            <p>曾奔放最滚烫的节奏</p>
            <p>不可收拾你滥情的抛空</p>
          </div>
        </div>
      </div>


    </div>
    <!-- 左边菜单栏 end-->
    
    <!-- 右边订餐栏 -->
    <div class="rightPanel pull-left">
        <!-- 固定面板 -->
        <div class="fixContent panel panel-primary">
            
            <!-- 面板标题 -->
            <div class="panel-heading">订单详情</div>
            <!-- 面板标题 end -->
            
            <!-- 面板内容 -->
            <div class="panel-body">
                 <!-- 订单内容 -->
	                 <div class="clear"><div class="pull-left fontWeightBold">我的订单</div><div class="pull-right fontWeightBold">总计:￥100.00</div></div>
	                 <div class="form-control panel order"></div>
                <!-- 订单内容 end-->
                
                <!-- 提交按钮 -->
                <div class="submit"><button type="button" class="btn btn-warning" data-position="fit" data-toggle="modal" data-target="#order">提交订单</button></div>
                <!-- 提交按钮 end-->
                
            </div>
            <!-- 面板内容 end -->
        </div>
        <!-- 固定面板 end-->
    </div>
    <!-- 右边订餐栏  end-->
</div>

<table class="table datatable" ng-controller="tableController">
  <thead>
    <tr>
      <th>#</th>
      <th>时间</th>
    </tr>
  </thead>
  <tbody>
    <tr ng-repeat="y in users">
        <td>{{ y.name }}</td>
        <td>{{ y.country }}</td>
    </tr>
  </tbody>
</table>

<!-- 模态框 -->
<div class="modal fade" id="order">
<div class="modal-dialog">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">关闭</span></button>
      <h4 class="modal-title">标题</h4>
    </div>
    <div class="modal-body">
	      <!-- 面板内容 -->
	           <div class="fontWeightBold">路/小区(亲、以下地址才能配送哟！)</div>
	           <textarea class="form-control"></textarea>
	           <div class="suggest">例如：XX路、XX街道、XX大厦、XX小区、XX学校、XX公司、XX医院等</div>
	           
	           <div class="fontWeightBold">请继续填写</div>
	           <textarea class="form-control"></textarea>
	           <div class="suggest">例如：B栋23-15,23号门面，5楼办事处等。注意：只限填写一个详细送餐地址。</div>
	           
	           <div class="fontWeightBold">姓名</div>
	           <input type="text" class="form-control"/>
	           
	           <div class="fontWeightBold">联系电话</div>
	           <input type="text" class="form-control"/>
	           
	           <div class="fontWeightBold">送达时间</div>
	           <input type="text" datetimepicker id="datetimepicker" class="form-control form-datetime" placeholder="选择或者输入一个日期+时间：yyyy-MM-dd hh:mm">
	           <div class="suggest">默认下单后45分钟送达</div>
	      <!-- 面板内容 end-->
    </div>
    <div class="modal-footer">
      <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
      <button type="button" class="btn btn-primary">保存</button>
    </div>
  </div>
</div>
</div>
<!-- 模态框 end -->



<!-- jquery依赖 -->
<script src="lib/zui/lib/jquery/jquery.js" type="text/javascript"></script>
<!-- ZUI Javascript组件 -->
<script src="lib/zui/js/zui.js"></script>
<script src="lib/zui/lib/datetimepicker/datetimepicker.min.js"></script> 
<!-- angularJs -->
<script src="lib/angularJS/angular.js"></script>
<script src="lib/js/app.js"></script>
<script src="lib/js/service.js"></script>
<script src="lib/js/directive.js"></script>
<script src="lib/js/controller.js"></script>
</body>
</html>