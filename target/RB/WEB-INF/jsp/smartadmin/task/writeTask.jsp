<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/basepath.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- widget grid -->
<section id="widget-grid" class="">
	<!-- row -->
	<div class="row">
		<!-- NEW WIDGET START -->
		<article class="col-sm-12">
			<!-- Widget ID (each widget will need unique ID)-->
			<div class="jarviswidget" id="wid-id-8"
				data-widget-editbutton="false">
				<header>
					<h2>
						<span class="widget-icon"> <i class="fa fa-edit"></i>
						</span> 创建任务
					</h2>
				</header>
				<!-- widget div-->
				<div>

					<!-- widget edit box -->
					<div class="jarviswidget-editbox">
						<!-- This area used as dropdown edit box -->
						<input class="form-control" type="text">
					</div>
					<!-- end widget edit box -->
					<!-- widget content -->
					<div class="widget-body">
						<!-- this is what the user will see -->
						<form action="<%=basePath %>/addProject.do" method="post"
							id="soption_addSoption_form_0" class="smart-form"
							novalidate="novalidate">
							<div class="alert alert-danger fade in" style="display: none;">
							</div>
							<fieldset>
								<div class="row">
									<div class="col col-2" style="text-align: right">
										开始时间：<sup class="required" style="color: red;">* </sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${task.startTime}"  maxlength="30"
											name="startTime" id="startTime" type="text"></label>
									</div>
									<div class="col col-1"  id="start" style="display: none;text-align: center">
									<sup class="required" style="color: red;">不能为空 </sup>
									</div>
									
									<div class="col col-2" style="text-align: right">
										结束时间：<sup class="required" style="color: red;">* </sup>
									</div>
									<div class="col-sm-2">
										<label class="input"><input class="input-sm" value="${task.endTime}" type="text" maxlength="30" name="endTime" id="endTime"></label>
									</div>
									<div class="col col-1"  id="end" style="display: none;text-align: center">
									<sup class="required" style="color: red;">不能为空 </sup>
									</div>
								</div>
								<br>
								<div class="row">
									<div class="col col-2" style="text-align: right">
										客户单位：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-6">
										<label class="input"> <input class="input-sm"
											value="${task.customer }" type=text maxlength="20"
											name="customer" id="customer"></label>
								</div>
								<br>
								<br>
								<div class="row">
									<div class="col col-2" style="text-align: right">
										任务执行人：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
									<select id="doPerson" value="${task.doPerson }" class="form-control input-sm">
									 <c:forEach items="${userList }" var="user">
									 <option value="${user.id }">${user.realname }</option>
									 </c:forEach>
									</select>
									</div>
									<div class="col col-2" style="text-align: right">
										任务关联人：<sup class="required"  style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
									 <select id="relevancePerson" multiple="multiple" size="4" value="${task.relevancePerson }" class="form-control input-sm">
									 <c:forEach items="${userList }" var="user">
									 <option value="${user.id }">${user.realname }</option>
									 </c:forEach>
									</select>
									</div>
								</div>
								<br>
								<div class="row">

									<div class="col col-2" style="text-align: right">
										任务内容：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-6">
										<label class="textarea">
										<textarea cols="100" rows="10"
										value="${task.content}" id="contents" name="contents"></textarea>
										</label>
									</div>
								</div>
								<br>
								<!-- 不显示的字段值 -->
								 <div class="row" style="display:none">
									<div class="col col-2" style="text-align: right">
										任务发起人编号：<sup class="required" style="color: red;"></sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${task.initiator }" type=text maxlength="20"
											name="initiator" id="initiator"></label>
									</div>
								</div>
								<br> 
							</fieldset>
							<br>
							<footer>
								<button type="submit" class="btn btn-primary">
									<i class="fa fa-save"></i> 添加任务
								</button>
							</footer>
						</form>
					</div>
					<!-- end widget content -->
				</div>
				<!-- end widget div -->
			</div>
			<!-- end widget -->
		</article>
		<!-- WIDGET END -->
	</div>
	<!-- end row -->
</section>
<!-- end widget grid -->

<script type="text/javascript">
var windowDateTime=function(){
	laydate.render({
		  elem: '#startTime',
		  type: 'datetime'//指定元素
		});
	laydate.render({
		  elem: '#endTime',
		  type: 'datetime'//指定元素
		});
}

	
 
  pageSetUp(); 
var pagefunction = function() {
	  
      $("#soption_addSoption_form_0").validate({
    	  
    	  
        submitHandler: function(form) {
        	var startTime = $("#startTime").val()+'';
        	var endTime = $("#endTime").val()+'';
        	var customer = $("#customer").val();
        	var contents = $("#contents").val();	
        	var initiator = $("#initiator").val();	
        	var doPerson = $("#doPerson").val();	
        	var relevancePerson = $("#relevancePerson").val()+''; 
        	
        	/* 非空判断 */
        	 
        	var bool1=startTime.length==0;
        	var bool2=endTime.length==0;
        	
        	if(bool1||bool2){
        	 if(bool1){
        		 
        		 document.getElementById("start").style="display:lock";
        	 }else{
        		 document.getElementById("end").style="display:none";
        	 }
        	 if(bool2){
        		
        		 document.getElementById("end").style="display:lock";
        	 }else{
        		 document.getElementById("end").style="display:none";
        	 }
        	}else{
        		document.getElementById("start").style="display:none";
        		document.getElementById("end").style="display:none";
			
				//alert("startTime:"+startTime+"endTime:"+endTime+"customer:"+customer+"content："+contents+"initiator："+initiator+"doPerson："+doPerson+"relevancePerson："+relevancePerson);
				$.post("task/addTask.do",
					{"startTime":startTime,"endTime":endTime,"customer":customer,"content":contents,
					"initiator":initiator,"doPerson":doPerson,"relevancePerson":relevancePerson},
						function(data){
						if(data.code==0){
							alert("创建任务成功");
						}else{
							alert("创建任务失败");
						}
						
					});
				
        	}	
        }
				});
    	}
		loadScript("lib/js/laydate/laydate.js",windowDateTime);
 		pagefunction(); 
 	
</script>