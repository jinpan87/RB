<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/basepath.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<section id="width_jqgrid">
	<!-- row -->
	<div class="row">
		<!-- NEW WIDGET START -->
		<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

			<form id="search_user" class="form-horizontal" role="form" >
				<div class="form-group" >
					<label for="roleName" class="col-sm-2 control-label">项目类别：</label>
					<div class="col-sm-2">
						<select name="projecttyep" class="form-control input-sm"
							id="projecttyep" value="${json.typeId }" onchange="selectTyep(this.value)">
							<option value="1">销售</option>
							<option value="2">市场拓展</option>
							<option value="3">回款</option>
							<option value="4">关系维护</option>
							<!-- <option value="5">售后</option> -->
							<option value="6">自营</option>
							<option value="7">专项</option>
						</select>
					</div>
					<label for="roleName" class="col-sm-2 control-label">项目名称：</label>
					<div class="col-sm-2">
						<select id="rXmmc" value="" class="form-control input-sm" onchange="selectProject(this.value)">
						<c:forEach items="${json.list }" var="project">
						<option value="${project.name }">${project.name }</option>
						</c:forEach>
						</select>
					</div>
				</div>
				<div class="form-group" style="display:none;">
					<label for="roleName" class="col-sm-2 control-label">项目编号：</label>
					<div class="col-sm-2">
						<select id="rXmbh" value=""  class="form-control input-sm">
							<c:forEach items="${json.list }" var="project">
							<option value="${project.code }">${project.code }</option>
							</c:forEach> 
						</select>
					</div>
				</div>
				<%-- <div class="form-group" style="display:inline;">
					<label for="roleName" class="col-sm-2 control-label">项目名称：</label>
					<div class="col-sm-2">
						<select id="rXmmc" value="${record.rXmmc }" class="form-control input-sm" onchange="selectProject(this.value)">
						<c:forEach items="${projectList }" var="project">
						<option value="${project.pName }">${project.pName }</option>
						</c:forEach>
						</select>
					</div>
				</div> --%>
			</form>
		</article>
		<!-- WIDGET END -->
	<div class="col-sm-10">
					<div id="jqgridTable" style="height:40%;">
					<table id="jqgrid"></table>
					<div id="pjqgrid" style="height: 35px; background: #e5e5e5;"></div>
					</div>
					<div id="echartTable" style="height:400px;"></div>
					
					<!-- <button class="btn btn-primary " data-toggle="modal" data-target="#myModal" onclick="addproject()">立项</button> -->
						<!-- &nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;
						 <a class="btn btn-primary" href="javascript:addproject();">
		              <i class="fa fa-plus"></i> 新增立项
		            </a>  -->
					</div>
	</div>
</section>
<iframe id="iframe" src="" scrolling="auto" frameborder="yes" border="1" height="240"></iframe>
<script type="text/javascript">
pageSetUp();
/* chenckType(); */
 var selectTyep=function(str){
	
	$.post("statisticProject2.do",{"typeId":str},
        function(data) {
		$('#width_jqgrid').html(data);
		var jsonList='${json.list}';
		if(jsonList.length==0){
			alert("没有此类型的项目");
			document.getElementById("projecttyep").display="none";
		}
		var obj=document.getElementById("projecttyep");
      	 for(i=0;i<obj.options.length;i++){
      	        if(obj.options[i].value==str)
      	        	obj.options[i].selected = 'selected';  
      	    }
       });   
	} 
	
 var selectProject=function(str){
		
	 
	 var xmbh=document.getElementById("rXmbh").value;
	
	 var typeId=document.getElementById("projecttyep").value;
	 $.post("statisticProject2.do",{"code":xmbh,"typeId":typeId},
	 function(data){
		 $('#width_jqgrid').html(data);
		 var obj=document.getElementById("projecttyep");
      	 for(i=0;i<obj.options.length;i++){
      	        if(obj.options[i].value==typeId)
      	        	obj.options[i].selected = 'selected';  
      	    }
      	 var obj=document.getElementById("rXmbh");
      	 var rXmmc=document.getElementById("rXmmc");
      	 for(i=0;i<rXmmc.options.length;i++){
      	 if(rXmmc.options[i].value==str){
      			 obj.options[i].selected = 'selected';  
      			 rXmmc.options[i].selected = 'selected';  
      		 }
      		 }
		 
	 });
} 
 /* function chenckType(){
	 var obj=document.getElementById("projecttyep");
	 var typeId=${json.typeId };
   	 for(i=0;i<obj.options.length;i++){
   	        if(obj.options[i].value==typeId)
   	        	obj.options[i].selected = 'selected';  
   	    }
 } */
 <%-- var addproject=function(id){
	var typeId=document.getElementById("projecttyep").value;
	/* alert('项目类型id:'+typeId); */
	$.post("project/addcheck.do",{typeId:typeId,id:id},function(data){
		if(data.code==0){
			window.location.hash="<%=basePath%>/add.do?typeId="+typeId;
		}else if(data.code==1){
			window.location.hash="<%=basePath%>/typeHK.do?typeId="+typeId;
		}
	});
 } --%>
 
/*  var editRow=function(id){
	 $.post("updateProject.do",{id:id},function(data){
		 if(data.state==1){
			 alert("此项目已结项,不能修改");
		 }else{
			 window.location.hash="project/updateProjectThree.do?id="+data.id+"&typeId="+data.typeId;
		 }
	 },"json"
		 
	 );
	  window.location.hash="updateProject.do?id="+id; 
 } */
/*  var showRow=function(id){
	 window.location.hash="showProject.do?id="+id;
 }
 var deleteRow=function(id){
	 window.location.hash="deleteProject.do?id="+id;
 } */
 
 
  var pagefunction = function() {
	
	$('#dialog_delete').dialog({
	      autoOpen : false,
	      width : 600,
	      resizable : false,
	      modal : true,
	      title : "删除该项",
	      buttons : [{
	        html : "<i class='fa fa-trash-o'></i>&nbsp; 删除",
	        "class" : "btn btn-danger",
	        click : function() {
	          $('#dialog_delete').dialog('close');
	          $.ajax({
	            type : "GET",
	            url : $('#dialog_delete').attr('url'),
	            success : function(data) {
	              if(data != null){
		              if(data == 1) {
		                $.smallBox({
		                  title : "提示",
		                  content : "<i class='fa fa-clock-o'></i> <i>删除成功</i>",
		                  color : "#659265",
		                  iconSmall : "fa fa-check fa-2x fadeInRight animated",
		                  timeout : 4000
		                });
		                var s = Math.random();
		                window.location.hash="<%=basePath%>/mediaWords/queryMediaList.jhtml?s="+s;
		              } else {
		                $.smallBox({
		                  title : "出错信息",
		                  content : "<i class='fa fa-clock-o'></i> <i>删除失败</i>",
		                  color : "#C46A69",
		                  iconSmall : "fa fa-times fa-2x fadeInRight animated",
		                  timeout : 4000
		                });
		              }
	              }
	            },
	            dataType : 'json'
	          });
	        }
	      }, {
	        html : "<i class='fa fa-times'></i>&nbsp; 取消",
	        "class" : "btn btn-default",
	        click : function() {
	          $(this).dialog("close");
	        }
	      }]
	    });
	
	loadScript("lib/smartadmin/js/plugin/jqgrid/jquery.jqGrid.min.js", run_jqgrid_function);

	function run_jqgrid_function() {
		var jqgrid_data =${json.listMessage };
		jQuery("#jqgrid").jqGrid({
			data : jqgrid_data,
			datatype : "local",
			height : 'auto',
			colNames : ['操作','编号','姓名','开始时间','工时','项目类型','项目阶段','完成情况','报销金额'],		
			colModel : [
						{ name : 'act', index:'act',width:80,hidden:true }, 
						{ name : 'id', index : 'id', hidden : false },
						{ name : 'realName', index : 'realName' },
						{ name : 'kssj', index : 'kssj' },
						{ name : 'gs', index : 'gs' },
						{ name : 'xmlb', index : 'xmlb' },
						{ name : 'xmjd', index : 'xmjd'},
						{ name : 'wcqk', index : 'wcqk'},
						{ name : 'bxje', index : 'bxje'},
					  ], 	
			rowNum : 10,
			rowList : [10, 20, 30],
			pager : '#pjqgrid',
			pagerpos : 'center',
			pgbuttons :true,
			pginput : true,
			pgtext : "第 {0} / {1}页",
			recordtext : "第 {0} ~ {1} 共 {2} 条",
			sortname : 'createTime',
			toolbarfilter: true,
			viewrecords : true,
			sortorder : "desc",
			gridComplete: function(){
				var ids = jQuery("#jqgrid").jqGrid('getDataIDs');
				var typeCode=document.getElementById("projecttyep").value;
				for(var i=0;i < ids.length;i++){
					var cl = ids[i];
					var item = $("#jqgrid").jqGrid('getRowData', cl);
				    var id = item.id;
					be = "<button class='btn btn-xs btn-default' title='修改' onclick=\"editRow('"+id+"');\"><i class='fa fa-pencil'></i></button>"; 
					se = "<button class='btn btn-xs btn-default' title='删除' onclick=\"deleteRow('"+id+"');\"><i class='fa fa-times'></i></button>";
					ss = "<button class='btn btn-xs btn-default' title='查看详情' onclick=\"showRow('"+id+"');\"><i class='fa fa-search'></i></button>";
					ce = "<button class='btn btn-xs btn-default' title='添加' onclick=\"addproject('"+id+"');\"><i class='fa fa-lock'></i></button>";
					//jQuery("#jqgrid").jqGrid('setRowData',ids[i],{act:be+se+ce});
					jQuery("#jqgrid").jqGrid('setRowData',ids[i],{act:be+ss});
				}	
			},
			caption : "列表",				
			autowidth : true,
			});
			 // remove classes
			$(".ui-jqgrid").removeClass("ui-widget ui-widget-content");
		    $(".ui-jqgrid-view").children().removeClass("ui-widget-header ui-state-default");
		    $(".ui-jqgrid-labels, .ui-search-toolbar").children().removeClass("ui-state-default ui-th-column ui-th-ltr");
		    $(".ui-jqgrid-pager").removeClass("ui-state-default");
		    $(".ui-jqgrid").removeClass("ui-widget-content");
		    $("#lui_jqgrid").removeClass("ui-widget-overlay");  
		    
		    // add classes
		    $(".ui-jqgrid-htable").addClass("table table-bordered table-hover");
		    $(".ui-jqgrid-btable").addClass("table table-bordered table-striped");  

			 $( ".ui-icon.ui-icon-seek-prev" ).wrap( "<div class='btn btn-xs btn-default'></div>" );
			$(".ui-icon.ui-icon-seek-prev").removeClass().addClass("fa fa-backward");
			
			$( ".ui-icon.ui-icon-seek-first" ).wrap( "<div class='btn btn-xs btn-default'></div>" );
		  	$(".ui-icon.ui-icon-seek-first").removeClass().addClass("fa fa-fast-backward");		  	

		  	$( ".ui-icon.ui-icon-seek-next" ).wrap( "<div class='btn btn-xs btn-default'></div>" );
		  	$(".ui-icon.ui-icon-seek-next").removeClass().addClass("fa fa-forward");
		  	
		  	$( ".ui-icon.ui-icon-seek-end" ).wrap( "<div class='btn btn-xs btn-default'></div>" );
		  	$(".ui-icon.ui-icon-seek-end").removeClass().addClass("fa fa-fast-forward"); 
		  	
		    // update buttons
		    
		    $(window).on('resize.jqGrid', function () {
				jQuery("#jqgrid").jqGrid( 'setGridWidth', $("#content").width() );
			});

		} // end function

	}  
	
	   loadScript("lib/smartadmin/js/plugin/jqgrid/grid.locale-en.min.js", pagefunction);  
	
	var echarts_project = echarts.init(document.getElementById('echartTable'));
	
			var option = {
				    title : {
				        text: '项目工时费用统计',
				        subtext: '总工时：'+${json.zgs}+',总费用：'+${json.zbxje},
				        
				    },
				    tooltip : {
				        trigger: 'axis'
				    },
				    legend: {
				        data:['工时','费用']
				    },
				   /*  toolbox: {
				        show : true,
				        feature : {
				            dataView : {show: true, readOnly: false},
				            magicType : {show: true, type: ['line', 'bar']},
				            restore : {show: true},
				            saveAsImage : {show: true}
				        }
				    }, */
				    calculable : true,
				    xAxis : [
				        {
				            type : 'category',
				            data : [${json.name}],
				        }
				    ],
				    yAxis : [
				        {
				            type : 'value'
				        }
				    ],
				    series : [
				        {
				            name:'工时',
				            type:'bar',
				            data:[${json.gs}],
				           /*  markPoint : {
				                data : [
				                    {type : 'max', name: '最大值'},
				                    {type : 'min', name: '最小值'}
				                ]
				            },
				            markLine : {
				                data : [
				                    {type : 'average', name: '平均值'}
				                ]
				            } */
				        },
				        {
				            name:'费用',
				            type:'bar',
				            data:[${json.bxje}],
				           /*  markPoint : {
				                data : [
				                    {name : '年最高', value : 182.2, xAxis: 7, yAxis: 183},
				                    {name : '年最低', value : 2.3, xAxis: 11, yAxis: 3}
				                ]
				            },
				            markLine : {
				                data : [
				                    {type : 'average', name : '平均值'}
				                ]
				            } */
				        }
				    ]
				};
		
	
	echarts_project.setOption(option);
	
</script>
