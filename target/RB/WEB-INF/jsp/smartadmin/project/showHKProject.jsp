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
						</span> 查看项目
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
						<form action="<%=basePath %>/addProjectHK.do" method="post"
							id="soption_addSoption_form_0" class="smart-form"
							novalidate="novalidate">
							<div class="alert alert-danger fade in" style="display: none;">
							</div>
							<fieldset>
								<div class="row">
									<div class="col col-2" style="text-align: right">
										销售项目名称：<sup class="required" style="color: red;"> *</sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${project.pSname}" type=text maxlength="30"
											name="pSname" id="pSname"></label>
									</div>
									<div class="col col-2" style="text-align: right">
										销售项目编号：<sup class="required" style="color: red;"> *</sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="	${project.pScode }" type=text maxlength="30"
											name="pScode" id="pScode"></label>
									</div>
								</div>
								<br>
								<div class="row">
									<div class="col col-2" style="text-align: right">
										项目经理：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${project.pManager }" type=text maxlength="20"
											name="pManager" id="pManager"></label>
									</div>
									<div class="col col-2" style="text-align: right">
										合同编号：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${contract.cCode }" type=text maxlength="20"
											name="cCode" id="cCode"></label>
									</div>
								</div>
								<br>
								<div class="row">
									<div class="col col-2" style="text-align: right">
										合同名称：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${contract.cName }" type=text maxlength="20"
											name="cName" id="cName"></label>
									</div>
									<div class="col col-2" style="text-align: right">
										合同金额：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${contract.cTotalAmount }" type=text maxlength="20"
											name="cTotalAmount" id="cTotalAmount"></label>
									</div>
								</div>
								<br>
								
								<!-- 不显示的字段值 -->
								<div class="row" style="display:none">
									<div class="col col-2" style="text-align: right">
										项目类型编号：<sup class="required" style="color: red;"></sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${project.pType }" type=text maxlength="20"
											name="pType" id="pType"></label>
									</div>
									<div class="col col-2" style="text-align: right">
										项目主键：<sup class="required" style="color: red;"></sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${project.id }" type=text maxlength="20"
											name="pId" id="pId"></label>
									</div>
									<div class="col col-2" style="text-align: right">
										合同主键：<sup class="required" style="color: red;"></sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${contract.id }" type=text maxlength="20"
											name="cId" id="cId"></label>
									</div>
									<div class="col col-2" style="text-align: right">
										回款主键：<sup class="required" style="color: red;"></sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${returnMoney.id }" type=text maxlength="20"
											name="rId" id="rId"></label>
									</div>
								</div>
								<br>
								
								<div class="row">
									<div class="col col-2" style="text-align: right">
										合同未回款：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${returnMoney.rUnreturnMoney }" type=text maxlength="20"
											name="rUnreturnMoney" id="rUnreturnMoney"></label>
									</div>
									<div class="col col-2" style="text-align: right">
										催款项目名称：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${project.pName }" type=text maxlength="20"
											name="pName" id="pName"></label>
									</div>
								</div>
								<br>
								<div class="row">
									<div class="col col-2" style="text-align: right">
										催款项目编号：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${project.pCode }" type="text" maxlength="20"
											name="pCode" id="pCode"></label>
									</div>
									<div class="col col-2" style="text-align: right">
										催款金额：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${returnMoney.rBackAmount }" type=text maxlength="20"
											name="rBackAmount" id="rBackAmount"></label>
									</div>
								</div>
								<br>
								<div class="row">
									<div class="col col-2" style="text-align: right">
										催款笔数：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${returnMoney.rCount }" type="text" maxlength="20"
											name="rCount" id="rCount"></label>
									</div>
									<div class="col col-2" style="text-align: right">
										应回款日期：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${returnMoney.rBackDay }" type=date maxlength="20"
											name="rBackDay" id="rBackDay"></label>
									</div>
								</div>
								<br>
								<div class="row">
									<div class="col col-2" style="text-align: right">
										项目成员：<sup class="required" style="color: red;"> </sup>
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
										项目描述：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-6">
										<label class="textarea"> <textarea cols="100" rows="8"
												value="${project.pSummary }" id="pSummary" name="pSummary">${project.pSummary }</textarea></label>
									</div>
								</div>
								<br>
								<div class="row">
									<div class="col col-2" style="text-align: right">
										<input type="radio" id="radio" name="radio" value="${project.pState }">结项
									</div>
								</div>
								<br>
								<!--  <div class="tabmy_box" style="display:none" id="websevid1">  -->
								<div class="row" style="display: none" id="yuanyin">
									<div class="col col-2" style="text-align: right">结项原因：</div>
									<div class="col-sm-6" >
										<label class="textarea"> 
										<textarea cols="40" rows="4" id="pOverCause" style="align:left" name="pOverCause" value="${project.pOverCause }">${project.pOverCause }</textarea>
										</label>
									</div>
								</div>
								<br>
								
							</fieldset>
							<br>
							<footer>
								<button type="button" class="btn btn-default"
									onclick="javascript:window.location.hash = 'type.do?typeId=${project.pType }'"';">
									<i class="fa fa-mail-reply"></i> 返回
								</button>
								<button type="submit" class="btn btn-primary">
									<i class="fa fa-save"></i> 查看
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
 var ss = 0;
 $(function(){
		var state = $("#radio").val();
		/* alert("状态码："+state); */
		if(state==1){
			document.getElementById("radio").checked="checked";
			document.getElementById("yuanyin").style="display:lock";
		}
	});
 
 $(function(){
    $('input:radio').click(function(){
        //alert(this.checked);
        //
        var domName = $(this).attr('name');
        var $radio = $(this);
        // if this was previously checked
        if ($radio.data('waschecked') == true){
            $radio.prop('checked', false);
            $("input:radio[name='" + domName + "']").data('waschecked',false);
            document.getElementById("yuanyin").style="display:none";
            //$radio.data('waschecked', false);
        } else {
            $radio.prop('checked', true);
            $("input:radio[name='" + domName + "']").data('waschecked',false);
            $radio.data('waschecked', true);
            document.getElementById("yuanyin").style="display:lock";
            ss=1;
        }
    });
}); 

   /* drawBreadCrumb(['数据消息','消息管理','修改消息']); */
 
  pageSetUp(); 
var pagefunction = function() {
	  
      $("#soption_addSoption_form_0").validate({
    	  
        submitHandler: function(form) {
        	var pName = $("#pName").val();
        	var pCode = $("#pCode").val();
        	var pManager = $("#pManager").val();
        	var cCode = $("#cCode").val();
        	var cName = $("#cName").val();
        	var cTotalAmount = $("#cTotalAmount").val();
        	var rUnreturnMoney = $("#rUnreturnMoney").val();
        	var pSname = $("#pSname").val();
        	var pScode = $("#pScode").val();
        	var rBackAmount = $("#rBackAmount").val();
        	var rCount = $("#rCount").val();
        	var rBackDay = $("#rBackDay").val();
        	var pGrew=$("#pGrew").val(); 
        	var pSummary=$("#pSummary").val();
        	var pType=$("#pType").val();
        	var pOverCause=$("#pOverCause").val();
        	var pId=$("#pId").val();
        	var cId=$("#cId").val();
        	var rId=$("#rId").val();
        	var pState=ss;  
        	/* alert("pName:"+pName+"/pCode:"+pCode+"/pManager:"+pManager+"/cCode:"+cCode+"/cName:"+cName+"/cTotalAmount:"+cTotalAmount
        			+"/rUnreturnMoney:"+rUnreturnMoney+"/pSname:"+pSname+"/pScode:"+pScode+"/rBackAmount:"+rBackAmount+"/rCount:"+rCount
        			+"/rBackDay:"+rBackDay+"/pGrew:"+pGrew+"/pSummary:"+pSummary+"/pType:"+pType+"/pState:"+pState); */
				$.post("<%=basePath%>/updateProjectHK.do", {
					"pName" : pName,
					"pCode" : pCode,
					"pType" : pType,
					"pManager" : pManager,
					"cCode" : cCode,
					"cName" : cName,
					"cTotalAmount" : cTotalAmount, 
					"rUnreturnMoney" : rUnreturnMoney, 
					"pSname" : pSname,
					"pScode":pScode, 
					"rBackAmount" : rBackAmount,
					"rCount" : rCount,
					"rBackDay" : rBackDay, 
					"pGrew" : pGrew, 
					"pSummary" : pSummary, 
					"pOverCause":pOverCause,
					"pState" : pState,
					"pId":pId,
					"cId":cId,
					"rId":rId
				},function(data){
					/* alert(data.msg); */
				});
        }
				});
    	}
		    			
	
 	pagefunction();
</script>
