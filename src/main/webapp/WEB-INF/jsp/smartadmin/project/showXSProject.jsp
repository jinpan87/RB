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
						</span> 展示详细信息
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
										项目名称：<sup class="required" style="color: red;"> *</sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${project.pName}" type=text maxlength="30"
											name="pName" id="pName"></label>
									</div>
									<div class="col col-2" style="text-align: right">
										项目编号：<sup class="required" style="color: red;"> *</sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="	${project.pCode }" type=text maxlength="30"
											name="pCode" id="pCode"></label>
									</div>
								</div>
								<br>
								<div class="row">
									<div class="col col-2" style="text-align: right">
										项目经理：<sup class="required" style="color: red;"> *</sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${project.pManager }" type=text maxlength="20"
											name="pManager" id="pManager"></label>
									</div>
									<div class="col col-2" style="text-align: right">
										产品名称：<sup class="required" style="color: red;"> *</sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${project.pProduct }" type=text maxlength="20"
											name="pProduct" id="pProduct"></label>
									</div>
								</div>
								<br>
								<div class="row">
									<div class="col col-2" style="text-align: right">
										项目省份：<sup class="required" style="color: red;"> *</sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${project.pProvince }" type=text maxlength="20"
											name="pProvince" id="pProvince"></label>
									</div>
									<div class="col col-2" style="text-align: right">
										项目地市：<sup class="required" style="color: red;"> *</sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${project.pCity }" type=text maxlength="20"
											name="pCity" id="pCity"></label>
									</div>
								</div>
								<br>
								
								<!-- 不显示的字段值 -->
								<div class="row" style="display:none">
									<div class="col col-2" style="text-align: right">
										项目主键ID：<sup class="required" style="color: red;"> *</sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${project.id }" type=text maxlength="20"
											name="id" id="id"></label>
									</div>
									<div class="col col-2" style="text-align: right">
										项目类型编号：<sup class="required" style="color: red;"> *</sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${project.pType }" type=text maxlength="20"
											name="pType" id="pType"></label>
									</div>
								</div>
								<br>
								
								<div class="row">
									<div class="col col-2" style="text-align: right">
										项目区县：<sup class="required" style="color: red;"> *</sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${project.pCounty }" type=text maxlength="20"
											name="pCounty" id="pCounty"></label>
									</div>
									<div class="col col-2" style="text-align: right">
										预计合同额：<sup class="required" style="color: red;"> *</sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${project.pPlanAmount }" type=text maxlength="20"
											name="pPlanAmount" id="pPlanAmount"></label>
									</div>
								</div>
								<br>
								<div class="row">
									<div class="col col-2" style="text-align: right">
										预计签单时间：<sup class="required" style="color: red;"> *</sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${project.pWrittenDay }" type="text" maxlength="20"
											name="pWrittenDay" id="pWrittenDay"></label>
									</div>
									<div class="col col-2" style="text-align: right">
										成交率：<sup class="required" style="color: red;"> *</sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${project.pPlanMake }" type=text maxlength="20"
											name="pPlanMake" id="pPlanMake"></label>
									</div>
								</div>
								<br>
								<div class="row">
									<div class="col col-2" style="text-align: right">
										项目成员：<sup class="required" style="color: red;"> *</sup>
									</div>
									<div class="col-sm-6">
										<label class="input"> <input class="input-sm"
											value="${project.pGrew }" type=text maxlength="20"
											name="pGrew" id="pGrew"></label>
									</div>
								</div>
								<br>
								<div class="row">

									<div class="col col-2" style="text-align: right">
										项目描述：<sup class="required" style="color: red;"> *</sup>
									</div>
									<div class="col-sm-6">
										<label class="textarea"> <textarea cols="100" rows="8"
												value="${project.pSummary }" id="pSummary" name="pSummary">${project.pSummary }</textarea></label>
									</div>


								</div>
								<br>
								<div class="row">
									<div class="col col-2" style="text-align: right">
										<input type="radio" id="radio" "radio" value="${project.pState}">结项
									</div>
								</div>
								<br>
								
								<!--  <div class="tabmy_box" style="display:none" id="websevid1">  -->
								<div class="row"  id="yuanyin" style="display:none">
									<div class="col col-2" style="text-align: right">结项原因：</div>
									<div class="col-sm-6">
										<label class="textarea"> 
										<textarea cols="40" rows="4" id="pOverCause" name="pOverCause" value="${project.pOverCause }">${project.pOverCause }</textarea>
										</label>
									</div>
								</div>
								<br>
							</fieldset>
							<br>
							<footer>
								<button type="button" class="btn btn-default"
									onclick="javascript:window.location.hash = '<%=basePath%>/type.do';">
									<i class="fa fa-mail-reply"></i> 返回
								</button>
								<!-- <button type="submit" class="btn btn-primary">
									<i class="fa fa-save"></i> 保存
								</button> -->
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
  var ss = 0;
$(function(){
	var state = $("#radio").val();
	/* alert("状态码："+state); */
	if(state==1){
		document.getElementById("radio").checked="checked";
		document.getElementById("yuanyin").style="display:lock";
	}
});

   /* drawBreadCrumb(['数据消息','消息管理','修改消息']); */
 
  pageSetUp(); 
 var pagefunction = function() {
	  
      $("#soption_addSoption_form_0").validate({
    	  
        submitHandler: function(form) {
        	var pName = $("#pName").val();
        	var pCode = $("#pCode").val();
        	var pManager = $("#pManager").val();
        	var pProduct = $("#pProduct").val();	
        	var pProvince = $("#pProvince").val();	
        	var pCity = $("#pCity").val();	
        	var pCounty = $("#pCounty").val(); 
        	var pPlanAmount=$("#pPlanAmount").val(); 
            var pWrittenDay = $("#pWrittenDay").val()+'';
        	var pPlanMake = $("#pPlanMake").val(); 
        	var pGrew=$("#pGrew").val(); 
        	var pSummary=$("#pSummary").val();
        	var pType=$("#pType").val();
        	var id=$("#id").val();
        	var state=ss;  
        	var pOverCause=$("#pOverCause").val(); 
        	/* alert("pName："+pName+"pCode："+pCode+"pManager："+pManager+"pProduct："+pProduct+"pProvince："+pProvince+
        			"pCity："+pCity+"pCounty："+pCounty+"pPlanAmount："+pPlanAmount+"pWrittenDay："+pWrittenDay+
        			"pPlanMake："+pPlanMake+"pGrew："+pGrew+"pSummary："+pSummary+"state："+state+"pOverCause："+pOverCause); */
        	
				$.post("<%=basePath%>/addProject.do", {
					"id" : id,
					"pName" : pName,
					"pCode" : pCode,
					"pType" : pType,
					"pManager" : pManager,
					"pProduct" : pProduct,
					"pProvince" : pProvince,
					"pCity" : pCity,
					"pCounty" : pCounty,
					"pPlanAmount" : pPlanAmount,
					"pWrittenDay":pWrittenDay, 
					"pPlanMake" : pPlanMake,
					"pGrew" : pGrew, 
					"pSummary" : pSummary, 
					"state" : state,
					"pOverCause" : pOverCause 
				},function(data){
					<%-- windows.location.href="<%=basePath%>/list.do"; --%>
				});
        }
				});
    	} 
		    			
	
 	pagefunction(); 
</script>
