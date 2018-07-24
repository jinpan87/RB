<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/basepath.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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
						</span> 填写报销
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
						<form action="" method="post"
							id="soption_addSoption_form_0" class="smart-form"
							novalidate="novalidate">
							<div class="alert alert-danger fade in" style="display: none;">
							</div>
							<fieldset>
								 <div class="row">
									<div class="col col-2" style="text-align: right">
										开票时间：<sup class="required" style="color: red;">* </sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${apply.updateTime}"  maxlength="30"
											name="updateTime" id="updateTime" type="text"></label>
									</div>
									<div class="col col-1"  id="updte" style="display: none;text-align: center">
									<sup class="required" style="color: red;">不能为空 </sup>
									</div>
									
									<div class="col col-2" style="text-align: right">
										费用类型：<sup class="required" style="color: red;">* </sup>
									</div>
									<div class="col-sm-2">
										<%-- <label class="input"><input class="input-sm" value="${apply.aType}" type="text" maxlength="30" name="rJssj" id="rJssj"></label> --%>
									<select id="aType" value="${apply.aType }" class="form-control input-sm">
											<option value="1">差旅</option>
											<option value="2">招待</option>
									</select> 
									</div>
									
								</div>
								<br> 
								 <div class="row">
									<div class="col col-2" style="text-align: right">
										项目类别：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2"> 
										 <%-- <label class="input"> <input class="input-sm"
											value="${project.pManager }" type=text maxlength="20"
											name="pManager" id="pManager"></label>  --%>
									 		<select id="selectType" value="" class="form-control input-sm" onchange="selectTyep(this.value)">
											<c:forEach items="${typeList }" var="type">
											<option value="${type.id }">${type.name }</option>
											</c:forEach>
											</select> 
											
									</div>
									<div class="col col-2" style="text-align: right">
										项目名称：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
											<select id="aProjectCode" value="${apply.aProjectCode }" class="form-control input-sm">
											<c:forEach items="${projectList }" var="project">
											<option value="${project.pCode }">${project.pName }</option>
											</c:forEach> 
											</select>
									</div>
								</div>
								<br> 
								 <div class="row">
									<div class="col col-2" style="text-align: right">
										报销编号：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${apply.id }" type=text maxlength="20"
											name="id" id="id"></label>
									 
									</div>
									<div class="col col-2" style="text-align: right">
										报销名称：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
									   <label class="input"> 
									   <input class="input-sm" value="${apply.aName }" type=text maxlength="20" name="aName" id="aName">
									   </label> 
									</div>
								</div>
								<br> 
								<div class="row">
									<div class="col col-2" style="text-align: right">
										发票编号：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
										<label class="input">
										 <input class="input-sm"
											value="${apply.aInvoiceNumber }" type=text maxlength="20"
											name="aInvoiceNumber" id="aInvoiceNumber" >
										</label>
									</div>
									<div class="col col-2" style="text-align: right">
										开票单位：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> 
										<input class="input-sm"
											value="${apply.aInvoiceName }" type=text maxlength="20"
											name="aInvoiceName" id="aInvoiceName">
										</label> 
									</div>
								</div>
								<br> 
								 <div class="row" style="display:none">
									<div class="col col-2" style="text-align: right">
										申请人：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
										<label class="input">
										<input class="input-sm"
											value="${apply.aProposer }" type="text" maxlength="20"
											name="aProposer" id="aProposer">
											</label>
									</div>
									<div class="col col-2" style="text-align: right">
										审批人：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${apply.aApprover }" type=text maxlength="20"
											name="aApprover" id="aApprover"></label>
									</div>
								</div>
								<br> 
								<div class="row">
									<div class="col col-2" style="text-align: right">
										报销金额：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-6">
										<label class="input"> <input class="input-sm"
											value="${apply.aMoney }" type=text maxlength="20"
											name="aMoney" id="aMoney"></label>
									</div>
								</div>
								<br> 
								 <div class="row">
									<div class="col col-2" style="text-align: right">
										费用用途说明：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-6">
										<label class="textarea">
										<textarea cols="100" rows="8"
										value="${apply.aInvoiceUse }" id="aInvoiceUse" name="aInvoiceUse">${apply.aInvoiceUse }</textarea>
										</label>
									</div>
								</div> 
							</fieldset>
							<br>
							<footer>
								<button type="submit" class="btn btn-primary">
									<i class="fa fa-save"></i> 添加和更新
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


<!-- <script src="lib/js/laydate/laydate.js"></script> -->
<script type="text/javascript">
var windowDateTime=function(){
	laydate.render({
		  elem: '#updateTime',
		  type: 'datetime'//指定元素
		});
}
 var ss = 0;
 pageSetUp();
 /* a();
function a(){
	
	 var obj=document.getElementById("rCsmc");
 
 	
	 for(i=0;i<obj.options.length;i++){
	        if(obj.options[i].value=='${record.rCsmc }')
	        obj.options[i].selected = 'selected';  
	    }
	 
	 var rXmlb=document.getElementById("rXmlb");
	for(i=0;i<rXmlb.length;i++){
		
        if(rXmlb.options[i].value=='${record.rXmlb }')
        	rXmlb.options[i].selected = 'selected';  
    } 

	
 }  */
   var selectTyep=function(str){
	var updateTime = $("#updateTime").val();
	var aType = $("#aType").val();
 	var aApprover = $("#selectType").val()+'';//项目类型编号通过审批人字段传给控制层
 	var aProjectCode = $("#aProjectCode").val()+'';
 	var id = $("#id").val();	
 	var aName = $("#aName").val();	
 	var aInvoiceNumber = $("#aInvoiceNumber").val();	
 	var aInvoiceName = $("#aInvoiceName").val(); 
 	var aProposer=$("#aProposer").val(); 
 	var aMoney = $("#aMoney").val(); 
 	var aInvoiceUse=$("#aInvoiceUse").val(); 
 	
		$.post("apply/refreshApplyByType.do",
			{"id":id,"updateTime":updateTime,"aType":aType,"aApprover":aApprover,"aProjectCode":aProjectCode,"aName":aName,
			"aInvoiceNumber":aInvoiceNumber,"aInvoiceName":aInvoiceName,
			"aProposer":aProposer,"aMoney":aMoney,"aInvoiceUse":aInvoiceUse},
	        function(data) {
	            $('#widget-grid').html(data);  
	            var selectType=document.getElementById("selectType");
	           	 for(i=0;i<selectType.length;i++){
	           	     if(selectType.options[i].value==str)
	           	    	selectType.options[i].selected = 'selected';
	           	    } 
	            });
		}

var pagefunction = function() {
	  
      $("#soption_addSoption_form_0").validate({
    	  
        submitHandler: function(form) {
        	
        	var updateTime = $("#updateTime").val();
        	var aType = $("#aType").val();
         	var aProjectCode = $("#aProjectCode").val()+'';
         	var id = $("#id").val();	
         	var aName = $("#aName").val();	
         	var aInvoiceNumber = $("#aInvoiceNumber").val();	
         	var aInvoiceName = $("#aInvoiceName").val(); 
         	var aProposer=$("#aProposer").val(); 
         	var aMoney = $("#aMoney").val(); 
         	var aInvoiceUse=$("#aInvoiceUse").val(); 
        	
				$.post("apply/addOrUpdateApply.do",
					{"id":id,"updateTime":updateTime,"aType":aType,"aProjectCode":aProjectCode,"aName":aName,
					"aInvoiceNumber":aInvoiceNumber,"aInvoiceName":aInvoiceName,
					"aProposer":aProposer,"aMoney":aMoney,"aInvoiceUse":aInvoiceUse},
					function(data){
						alert("添加更新成功");
					});
        		 }
			});
    	}
loadScript("lib/js/laydate/laydate.js",windowDateTime);
 pagefunction(); 
 	
</script>
