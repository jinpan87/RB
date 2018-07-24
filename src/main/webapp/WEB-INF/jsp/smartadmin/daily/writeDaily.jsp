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
						</span> 填写日报
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
											value="${record.rKssj}"  maxlength="30"
											name="rKssj" id="rKssj" type="text"></label>
									</div>
									<div class="col col-1"  id="kssj" style="display: none;text-align: center">
									<sup class="required" style="color: red;">不能为空 </sup>
									</div>
									
									<div class="col col-2" style="text-align: right">
										结束时间：<sup class="required" style="color: red;">* </sup>
									</div>
									<div class="col-sm-2">
										<label class="input"><input class="input-sm" value="${record.rJssj}" type="text" maxlength="30" name="rJssj" id="rJssj"></label>
									</div>
									<div class="col col-1"  id="jssj" style="display: none;text-align: center">
									<sup class="required" style="color: red;">不能为空 </sup>
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
											name="pManager" id="pManager"></label> --%>
											<%-- <select id="selectType">
											<c:forEach items="${typeList }" var="type">
											<option value="${type.id }">${type.tName }</option>
											</c:forEach>
											</select> --%>
											<select name="rXmlb" class="form-control input-sm"
											id="rXmlb" value="" onchange="selectTyep(this.value)">
											<option value="1">销售</option>
											<option value="2">市场拓展</option>
											<option value="3">回款</option>
											<option value="4">关系维护</option>
											<option value="6">自营</option>
											<option value="7">专项</option>
											<option value="8">日常</option>
											</select>
									</div>
									<div class="col col-2" style="text-align: right">
										项目阶段：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
										<%-- <label class="input"> <input class="input-sm"
											value="${project.pProduct }" type=text maxlength="20"
											name="pProduct" id="pProduct"></label> --%>
											<select id="rXmjd" value="${record.rXmjd }" class="form-control input-sm">
											<c:forEach items="${stageList }" var="stage">
											<option value="${stage }">${stage }</option>
											</c:forEach> 
											</select>
									</div>
								</div>
								<br>
								<div class="row">
									<div class="col col-2" style="text-align: right">
										项目编号：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
										<%-- <label class="input"> <input class="input-sm"
											value="${record.rXmbh }" type=text maxlength="20"
											name="rXmbh" id="rXmbh"></label> --%>
									 <select id="rXmbh" value="${record.rXmbh }" onchange="selectProject(this.value)" class="form-control input-sm">
									 <c:forEach items="${projectList }" var="project">
											<option value="${project.pCode }">${project.pCode }</option>
									 </c:forEach> 
									</select>
									</div>
									<div class="col col-2" style="text-align: right">
										项目名称：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
										<%-- <label class="input"> <input class="input-sm"
											value="${record.rXmmc }" type=text maxlength="20"
											name="rXmmc" id="rXmmc"></label> --%>
									<select id="rXmmc" value="${record.rXmmc }" class="form-control input-sm">
									 <c:forEach items="${projectList }" var="project">
									 <option value="${project.pName }">${project.pName }</option>
									 </c:forEach>
									</select>
									</div>
								</div>
								<br>
								
								<!-- 不显示的字段值 -->
								 <div class="row" style="display:none">
									<div class="col col-2" style="text-align: right">
										员工编号：<sup class="required" style="color: red;"></sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${record.rUid }" type=text maxlength="20"
											name="rUid" id="rUid"></label>
									</div>
									<div class="col col-2" style="text-align: right">
										日报编号：<sup class="required" style="color: red;"></sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${record.id }" type=text maxlength="20"
											name="id" id="id"></label>
									</div>
								</div>
								<br> 
								
								<div class="row">
									<div class="col col-2" style="text-align: right">
										工时(小时)：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${record.rGs }" type=text maxlength="20"
											name="rGs" id="rGs" onfocus="jsgs()"></label>
									</div>
									<div class="col col-2" style="text-align: right">
										完成情况：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
										<%-- <label class="input"> <input class="input-sm"
											value="${record.rWcqk }" type=text maxlength="20"
											name="rWcqk" id="rWcqk"></label> --%>
											<select id="rWcqk" value="${record.rWcqk }" class="form-control input-sm">
											<option>完成</option>
											<option>保持跟进</option>
											<option>未完成</option>
											</select>
									</div>
								</div>
								<br>
								<div class="row">
									<div class="col col-2" style="text-align: right">
										报销金额：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${record.rBxje }" type="text" maxlength="20"
											name="rBxje" id="rBxje"></label>
									</div>
									<div class="col col-2" style="text-align: right">
										发票后四位：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${record.rFphsw }" type=text maxlength="20"
											name="rFphsw" id="rFphsw"></label>
									</div>
								</div>
								<br>
								<div class="row">
									<div class="col col-2" style="text-align: right">
										开票单位：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-6">
										<label class="input"> <input class="input-sm"
											value="${record.rKpdw }" type=text maxlength="20"
											name="rKpdw" id="rKpdw"></label>
									</div>
								</div>
								<br>

								<div class="row">

									<div class="col col-2" style="text-align: right">
										详细工作：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-6">
										<label class="textarea"> <textarea cols="100" rows="8"
												value="${record.rXxgz }" id="rXxgz" name="rXxgz">${record.rXxgz }</textarea></label>
									</div>


								</div>
								<br>
								<div class="row">
									<div class="col col-2" style="text-align: right">
										自评分：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
										<%-- <label class="input"> <input class="input-sm"
											value="${record.rZpf }" type="text" maxlength="20"
											name="rZpf" id="rZpf"></label> --%>
											<select id="rZpf" value="${record.rZpf }" class="form-control input-sm">
											<option>A</option>
											<option>B</option>
											<option>C</option>
											</select>
									</div>
									<div class="col col-2" style="text-align: right">
										评审分：<sup class="required" style="color: red;"> </sup>
									</div>
									<div class="col-sm-2">
										<%-- <label class="input"> <input class="input-sm"
											value="${record.rSpf }" type=text maxlength="20"
											name="rSpf" id="rSpf"></label> --%>
									</div>
								</div>
								<br>
								<div class="row">
									<div class="col col-2" style="text-align: right">
									<button type="button" class="btn btn-primary" onclick="radioMethod()">
									<i class="fa fa-save"></i> 拜访
								</button>
										<!-- <input type="radio" id="radio" name="radio" value="" onchange="">拜访 -->
									</div>
								</div>
								<br>
								<!--  <div class="tabmy_box" style="display:none" id="websevid1">  -->
								<div class="row" style="display: none" id="yuanyin">
									<div class="row">
									<div class="col col-2" style="text-align: right">地市名称：</div>
									<div class="col-sm-2">
											
											<select id="rCsmc" value="${record.rCsmc }" onchange="selectCounty(this.value)" class="form-control input-sm">
											<c:forEach items="${cityList }" var="city">
											<option value="${city.id }">${city.cityname }</option>
											</c:forEach>
											</select>
									</div>
									<div class="col col-2" style="text-align: right">区县名称：</div>
									<div class="col-sm-2">
											<select id="rQxmc" value="${record.rQxmc }" class="form-control input-sm">
											<c:forEach items="${countyList }" var="county">
											<option value="${county.countyname }">${county.countyname }</option>
											</c:forEach>
											</select>
									</div>
									</div>
									<div class="row">
									<div class="col col-2" style="text-align: right">客户单位：</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${record.rKhdw }" type=text maxlength="20"
											name="rKhdw" id="rKhdw"></label>
									</div>
									<div class="col col-2" style="text-align: right">拜访人员：</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${record.rBfry }" type=text maxlength="20"
											name="rBfry" id="rBfry"></label>
									</div>
									</div>
									<div class="row">
									<div class="col col-2" style="text-align: right">拜访方式：</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${record.rBffs }" type=text maxlength="20"
											name="rBffs" id="rBffs"></label>
									</div>
									<div class="col col-2" style="text-align: right">拜访时间：</div>
									<div class="col-sm-2">
										<label class="input"> <input class="input-sm"
											value="${record.rBfsj }" type="text" maxlength="20"
											name="rBfsj" id="rBfsj"></label>
									</div>
									</div>
								</div>
								<br>
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
		  elem: '#rKssj',
		  type: 'datetime'//指定元素
		});
	laydate.render({
		  elem: '#rJssj',
		  type: 'datetime'//指定元素
		});
	laydate.render({
		  elem: '#rBfsj',
		  type: 'datetime'//指定元素
		});
}

	
 var ss = 0;

 a();
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

	
 }
 var selectTyep=function(str){
	var id = $("#id").val();
	var rUid = $("#rUid").val();
 	var rKssj = $("#rKssj").val()+'';
 	var rJssj = $("#rJssj").val()+'';
 	var rGs = $("#rGs").val();	
 	var rXmlb = $("#rXmlb").val();	
 	var rXmmc = $("#rXmmc").val();	
 	var rXmbh = $("#rXmbh").val(); 
 	var rXmjd=$("#rXmjd").val(); 
    var rXxgz = $("#rXxgz").val();
 	var rWcqk = $("#rWcqk").val(); 
 	var rBxje=$("#rBxje").val(); 
 	var rFphsw=$("#rFphsw").val();
 	var rKpdw=$("#rKpdw").val();
 	var rZpf=$("#rZpf").val(); 
 	
 	var rCsmc=$("#rCsmc").val(); 
 	var rQxmc=$("#rQxmc").val(); 
 	var rKhdw=$("#rKhdw").val(); 
 	var rBfry=$("#rBfry").val(); 
 	var rBffs=$("#rBffs").val(); 
 	var rBfsj=$("#rBfsj").val()+'';
 	
 	
	var state=ss;
		$.post("daily/projectList.do",
			{"id":id,"rUid":rUid,"rKssj":rKssj,"rJssj":rJssj,"rGs":rGs,"rXmlb":rXmlb,"rXmmc":rXmmc,"rXmbh":rXmbh,
			"rXmjd":rXmjd,"rXxgz":rXxgz,"rWcqk":rWcqk,"rBxje":rBxje,"rFphsw":rFphsw,"rKpdw":rKpdw,
			"rZpf":rZpf,"rCsmc":rCsmc,"rKhdw":rKhdw,"rBfry":rBfry,"rBffs":rBffs,"rBfsj":rBfsj},
	           	
	            function(data) {
	            $('#widget-grid').html(data);  
	            var rXmlb=document.getElementById("rXmlb");
	            /* alert("state:"+ss); */
	            if(state==1){
	            	document.getElementById("yuanyin").style="display:lock";
	            }
	           	 for(i=0;i<rXmlb.length;i++){
	           		
	           	        if(rXmlb.options[i].value==str)
	           	        	rXmlb.options[i].selected = 'selected';  
	           	    } 
	            });  
		} 
 var selectCounty=function(str){
	 
	 var id = $("#id").val();
	 var rUid = $("#rUid").val();
	 	var rKssj = $("#rKssj").val()+'';
	 	var rJssj = $("#rJssj").val()+'';
	 	var rGs = $("#rGs").val();	
	 	var rXmlb = $("#rXmlb").val();	
	 	var rXmmc = $("#rXmmc").val();	
	 	var rXmbh = $("#rXmbh").val(); 
	 	var rXmjd=$("#rXmjd").val(); 
	    var rXxgz = $("#rXxgz").val();
	 	var rWcqk = $("#rWcqk").val(); 
	 	var rBxje=$("#rBxje").val(); 
	 	var rFphsw=$("#rFphsw").val();
	 	var rKpdw=$("#rKpdw").val();
	 	var rZpf=$("#rZpf").val(); 
	 	
	 	var rCsmc=$("#rCsmc").val(); 
	 	var rQxmc=$("#rQxmc").val(); 
	 	var rKhdw=$("#rKhdw").val(); 
	 	var rBfry=$("#rBfry").val(); 
	 	var rBffs=$("#rBffs").val(); 
	 	var rBfsj=$("#rBfsj").val()+'';
	 
		$.post("daily/selectCounty.do",
			{"id":id,"rUid":rUid,"rKssj":rKssj,"rJssj":rJssj,"rGs":rGs,"rXmlb":rXmlb,"rXmmc":rXmmc,"rXmbh":rXmbh,
			"rXmjd":rXmjd,"rXxgz":rXxgz,"rWcqk":rWcqk,"rBxje":rBxje,"rFphsw":rFphsw,"rKpdw":rKpdw,
			"rZpf":rZpf,"rCsmc":rCsmc,"rKhdw":rKhdw,"rBfry":rBfry,"rBffs":rBffs,"rBfsj":rBfsj},
	            function(data) {
	            	$('#widget-grid').html(data);
	            	var obj=document.getElementById("rCsmc");
	            	/* var radio=document.getElementById("radio");
	            	radio.checked=true; */
	            	$("#yuanyin").show();
	            	/* document.getElementById("yuanyin").style="display:lock"; */
	            	ss=1;
	           	 for(i=0;i<obj.options.length;i++){
	           	        if(obj.options[i].value==str)
	           	        obj.options[i].selected = 'selected';  
	           	    }
	           	 
	           	 var rXmlb=document.getElementById("rXmlb");
	           	for(i=0;i<rXmlb.length;i++){
	           		
           	        if(rXmlb.options[i].value==rXmlb)
           	        	rXmlb.options[i].selected = 'selected';  
           	    } 
	            });  
		} 
 
 var selectProject=function(str){
		
	 var obj=document.getElementById("rXmbh");
	 var rXmmc=document.getElementById("rXmmc");
	 for(i=0;i<obj.options.length;i++){
	 if(obj.options[i].value==str){
		 obj.options[i].selected = 'selected';  
		 rXmmc.options[i].selected = 'selected';  
	 }
		
	 }
	           
} 
 



function radioMethod(){
	console.log("进入方法"+"ss"+ss);
	if(ss==1){
		console.log("ss"+ss);
		$("#yuanyin").hide();
		ss=0;
	}else if(ss==0){
		console.log("ss"+ss);
		$("#yuanyin").show();
        ss=1;
	}
}

/*计算工时  */
function jsgs(){
	var rKssj=document.getElementById("rKssj").value;
	var rJssj=document.getElementById("rJssj").value;
	$.post("daily/checkTime.do",{"rKssj":rKssj,"rJssj":rJssj},function(data){
		if(data.code==0){
			document.getElementById("rGs").value=data.hour;
		}else{
			document.getElementById("rGs").value='';
		}
		
	});
	
}
 
 
   /* drawBreadCrumb(['数据消息','消息管理','修改消息']); */
 
  pageSetUp(); 
var pagefunction = function() {
	  
      $("#soption_addSoption_form_0").validate({
    	  
    	  
        submitHandler: function(form) {
        	
        	var id = $("#id").val();
        	var rUid = $("#rUid").val();
        	var rKssj = $("#rKssj").val()+'';
        	var rJssj = $("#rJssj").val()+'';
        	var rGs = $("#rGs").val();	
        	var rXmlb = $("#rXmlb").val();	
        	var rXmmc = $("#rXmmc").val();	
        	var rXmbh = $("#rXmbh").val(); 
        	var rXmjd=$("#rXmjd").val(); 
            var rXxgz = $("#rXxgz").val();
        	var rWcqk = $("#rWcqk").val(); 
        	var rBxje=$("#rBxje").val(); 
        	var rFphsw=$("#rFphsw").val();
        	var rKpdw=$("#rKpdw").val();
        	var rZpf=$("#rZpf").val(); 
        	
        	var rCsmc=$("#rCsmc").val(); 
        	var rQxmc=$("#rQxmc").val(); 
        	var rKhdw=$("#rKhdw").val(); 
        	var rBfry=$("#rBfry").val(); 
        	var rBffs=$("#rBffs").val(); 
        	var rBfsj=$("#rBfsj").val()+''; 
        	
        	console.log("城市名称"+rCsmc);
        	/* 非空判断 */
        	 
        	var bool1=rKssj.length==0;
        	var bool2=rJssj.length==0;
        	
        	if(bool1||bool2){
        	 if(bool1){
        		 
        		 document.getElementById("kssj").style="display:lock";
        	 }else{
        		 document.getElementById("kssj").style="display:none";
        	 }
        	 if(bool2){
        		
        		 document.getElementById("jssj").style="display:lock";
        	 }else{
        		 document.getElementById("jssj").style="display:none";
        	 }
        	}else{
        		document.getElementById("kssj").style="display:none";
        		document.getElementById("jssj").style="display:none";
			if(ss==0){
				$.post("daily/addRecord.do",
					{"id":id,"rUid":rUid,"rKssj":rKssj,"rJssj":rJssj,"rGs":rGs,"rXmlb":rXmlb,"rXmmc":rXmmc,"rXmbh":rXmbh,
					"rXmjd":rXmjd,"rXxgz":rXxgz,"rWcqk":rWcqk,"rBxje":rBxje,"rFphsw":rFphsw,"rKpdw":rKpdw,
					"rZpf":rZpf},
						function(data){
						alert("添加更新成功");
					});
				
			} else if(ss==1){
				
				$.post("daily/addRecord.do",
						{"id":id,"rUid":rUid,"rKssj":rKssj,"rJssj":rJssj,"rGs":rGs,"rXmlb":rXmlb,"rXmmc":rXmmc,"rXmbh":rXmbh,
						"rXmjd":rXmjd,"rXxgz":rXxgz,"rWcqk":rWcqk,"rBxje":rBxje,"rFphsw":rFphsw,"rKpdw":rKpdw,
						"rZpf":rZpf,"rCsmc":rCsmc,"rQxmc":rQxmc,"rKhdw":rKhdw,"rBfry":rBfry,"rBffs":rBffs,"rBfsj":rBfsj},
						function(data){
						alert("添加更新成功");
					});
				
			}      	
			
        	}	
        }
				});
    	}
loadScript("lib/js/laydate/laydate.js",windowDateTime);
 	pagefunction(); 
 	
</script>
