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
								<div class="row" style="display:none">
									<div class="col col-2" style="text-align: right">
										报销编号：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-6">
									
										<label class="input"> <input class="input-sm"
											value="${apply.id}" type=text maxlength="20"
											name="id" id="id"></label>
									</div>
									<div class="col col-2" style="text-align: right">
										申请人ID：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-6">
										<label class="input"> <input class="input-sm"
											value="${apply.aProposer}" type=text maxlength="20"
											name="aProposer" id="aProposer"></label>
									</div>
									<div class="col col-2" style="text-align: right">
										审核人ID：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-6">
										<label class="input"> <input class="input-sm"
											value="${apply.aApprover}" type=text maxlength="20"
											name=aApprover id="aApprover"></label>
									</div>
								</div>
								<br> 
								 <div class="row">
									<div class="col col-2" style="text-align: right">
										审批说明：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-6">
										<label class="textarea">
										<textarea cols="100" rows="8"
										value="${apply.aReason }" id="aReason" name="aReason">${apply.aReason }</textarea>
										</label>
									</div>
								</div>
								<br>
								<div class="row">
									<div class="col col-2" style="text-align: right">
										<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
									<label><input type="radio" value="1" name="radio" >同意：</label>
										<!-- <label class="radio"> <input class="input-sm"
											value="1" type=radio maxlength="20"
											name="radio" id="aState1"></label> -->
									</div>
									<div class="col col-2" style="text-align: right">
										<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
									<label><input type="radio" value="2" name="radio">拒绝：</label>
									   <!-- <label class="radio"> 
									   <input class="input-sm" value="2" type=radio maxlength="20" name="radio" id="aState2">
									   </label>  -->
									</div>
								</div>
								<br> 
							</fieldset>
							<br>
							<footer>
								<button type="submit" class="btn btn-primary">
									<i class="fa fa-save"></i> 审    批
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
 pageSetUp();
 var aState;
 $(":radio").click(function(){
		aState=$(this).val();
	});
 var pagefunction = function() {
	  
      $("#soption_addSoption_form_0").validate({
    	  
        submitHandler: function(form) {
        	
         	var id = $("#id").val();	
         	var aApprover = $("#aApprover").val();	
         	var aProposer = $("#aProposer").val();	
         	var aReason = $("#aReason").val();	
         	console.log("id:"+id+"aReason:"+aReason+"aState:"+aState+"aApprover:"+aApprover);
         	
        	
				$.post("apply/checkedApply.do",
					{"id":id,"aReason":aReason,"aState":aState,"aApprover":aApprover},
					function(data){
						alert("审批完成");
					});
        		 }
			});
    	}
 pagefunction(); 
 	
</script>
