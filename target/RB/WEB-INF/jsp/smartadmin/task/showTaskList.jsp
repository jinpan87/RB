<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/basepath.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section id="width_jqgrid">
	<!-- row -->
	<div class="row">
		<!-- NEW WIDGET START -->
		<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

		<form id="search_user" class="form-horizontal" role="form">
				<div class="form-group">
					<div class="col-sm-2">
						<label><input type="radio" value="0" name="radio" >未完成</label>
						<label><input type="radio" value="1" name="radio">已完成</label>
						<!-- <label><input type="radio" value="" name="radio">全部</label> -->
					</div>
					<!-- <label for="roleName" class="col-sm-2 control-label">姓名：</label>
					<div class="col-sm-2">
						<input type="text" value="" id="userName">
					</div> -->
					<div class="col-sm-3">
					
					<!-- <button class="btn btn-primary " data-toggle="modal" data-target="#myModal" onclick="addproject()">立项</button> -->
						<!-- &nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;
						 <a class="btn btn-primary" href="javascript:queryRecord();">
		              <i class="fa fa-plus"></i> 查询
		            </a>  -->
					</div>
				</div>
			</form>
			<table id="jqgrid"></table>
			<div id="pjqgrid" style="height: 35px; background: #e5e5e5;"></div>
		</article>
		<!-- WIDGET END -->

	</div>
</section>

			<iframe id="iframe" src="" scrolling="auto" frameborder="yes" border="1" height="240"></iframe>
			
<script type="text/javascript">
	  $(":radio").click(function(){
		  var state=$(this).val();
		  var userId='${userId}';
		  var roleId='${roleId}';
	   $.post("task/searchTask.do",{"state":state,"userId":userId,"roleId":roleId},function(data){
		   $('#width_jqgrid').html(data);
		   
	   });
	  });
	  
	  //结束任务
var editRow=function(code,state){
	 var initiator='${userId}';
	  var roleId='${roleId}';
		  if(state==1){
			  alert("任务已结束");
		  }else if(state==0){
			  state=1;
			  $.post("task/updateState.do",{"code":code,"initiator":initiator,"state":state},function(data){
					if(data.code==0){
						alert("结束任务成功");
						window.location.hash="task/queryTaskList.do?userId="+initiator+"&roleId="+roleId;
					}else{
						alert("结束任务失败");
					}
				});
		  }
}
	  //更新任务进度
var addProgress=function(code,state){
		  if(state==1){
			  alert("任务已结束不能更新进度");
		  }else{
			  var doPerson='${userId}';
			  window.location.hash="task/upProgress.do?code="+code+"&doPerson="+doPerson;
		  }
	  }
	  //展示任务进度列表
var showRow=function(code,progress){
		  console.log("progress:"+progress);
		  if(progress.length>0){
			  window.location.hash="task/showProgress.do?code="+code;
		  }else{
			  console.log("任务进度计划暂时为空");
		  }
		  
		  
	
};
pageSetUp();
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
		               <%--  window.location.hash="<%=basePath%>/mediaWords/queryMediaList.jhtml?s="+s; --%>
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
		var jqgrid_data = ${data};
		var roleId='${roleId}';
		jQuery("#jqgrid").jqGrid({
			data : jqgrid_data,
			datatype : "local",
			height : 'auto',
			colNames : ['操作','编号','发起人','执行人','开始时间','结束时间','最新工作进度','任务状态'],		
			colModel : [
						{ name : 'act', index:'act',width:80,hidden:false }, 
						{ name : 'code', index:'code',width:80,hidden:false }, 
						{ name : 'initiator', index : 'initiator', hidden :false },
						{ name : 'doPerson', index : 'doPerson' },
						{ name : 'startTime', index : 'startTime' },
						{ name : 'endTime', index : 'endTime' },
						{ name : 'progress', index : 'progress' },
						{ name : 'state', index : 'state', hidden :false },
					  ], 	
			rowNum : 10,
			rowList : [10, 20, 30],
			pager : '#pjqgrid',
			pagerpos : 'center',
			pgbuttons :true,
			pginput : true,
			pgtext : "第 {0} / {1}页",
			recordtext : "第 {0} ~ {1} 共 {2} 条",
			sortname : 'createDate',
			toolbarfilter: true,
			viewrecords : true,
			sortorder : "desc",
			gridComplete: function(){
				var ids = jQuery("#jqgrid").jqGrid('getDataIDs');
				//var typeCode=document.getElementById("projecttyep").value;
				for(var i=0;i < ids.length;i++){
					var cl = ids[i];
					var item = $("#jqgrid").jqGrid('getRowData', cl);
				    var code = item.code;
				    var initiator = item.initiator;
				    var doPerson = item.doPerson;
				    var state = item.state;
				    var progress = item.progress;
					be = "<button class='btn btn-xs btn-default' title='结束任务' onclick=\"editRow('"+code+"','"+state+"');\"><i class='fa fa-pencil'></i></button>"; 
					se = "<button class='btn btn-xs btn-default' title='删除' onclick=\"deleteRow('"+code+"');\"><i class='fa fa-times'></i></button>";
					ss = "<button class='btn btn-xs btn-default' title='查看工作进度' onclick=\"showRow('"+code+"','"+progress+"');\"><i class='fa fa-search'></i></button>";
					ce = "<button class='btn btn-xs btn-default' title='添加工作进度' onclick=\"addProgress('"+code+"','"+state+"');\"><i class='fa fa-lock'></i></button>";
					//jQuery("#jqgrid").jqGrid('setRowData',ids[i],{act:be+se+ce});
					if(roleId==2){
						jQuery("#jqgrid").jqGrid('setRowData',ids[i],{act:be+ss});
					}else if(roleId==5){
						jQuery("#jqgrid").jqGrid('setRowData',ids[i],{act:ce+ss});
					}else{
						jQuery("#jqgrid").jqGrid('setRowData',ids[i],{act:ss});
					}
					
				}	
			},
			caption : "任务汇总",				
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
	
</script>