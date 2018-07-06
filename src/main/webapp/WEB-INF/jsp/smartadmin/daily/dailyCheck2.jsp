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
						<label><input type="radio" value="0" name="radio" >未审核</label>
						<label><input type="radio" value="1" name="radio">已审核</label>
						<label><input type="radio" value="" name="radio">全部</label>
					</div>
					<label for="roleName" class="col-sm-2 control-label">姓名：</label>
					<div class="col-sm-2">
						<input type="text" value="" id="userName">
					</div>
					<div class="col-sm-3">
					
					<!-- <button class="btn btn-primary " data-toggle="modal" data-target="#myModal" onclick="addproject()">立项</button> -->
						&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;
						 <a class="btn btn-primary" href="javascript:queryRecord();">
		              <i class="fa fa-plus"></i> 查询
		            </a> 
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

pageSetUp();
<%-- chenckType();
 var selectTyep=function(str){
	$.ajax({type : "GET",
            url : "<%=basePath%>/type.do?typeId="+str,
            success : function(data) {
            	$('#width_jqgrid').html(data);
            	var obj=document.getElementById("projecttyep");
           	 for(i=0;i<obj.options.length;i++){
           	        if(obj.options[i].value==str)
           	        	obj.options[i].selected = 'selected';  
           	    }
            }});  
	 
	} 
 function chenckType(){
	 var obj=document.getElementById("projecttyep");
	 var typeId=${json.typeId };
   	 for(i=0;i<obj.options.length;i++){
   	        if(obj.options[i].value==typeId)
   	        	obj.options[i].selected = 'selected';  
   	    }
 }--%>
 var queryRecord=function(id){
	var name=document.getElementById("userName").value;
	/* alert("name"+name); */
	document.get
	var radios=document.getElementsByName("radio");
	var state="";
	for(var i=0;i<radios.length;i++){
		   //如果当前有选中
		   if(radios[i].checked == true){
		   //赋值
		   state = radios[i].value;
		   //结束循环
		   break;
		   }
	}
	
	$.post("daily/dailyCheck2.do",{name:name,state:state,userName:"${userName}"},function(data){
		$('#width_jqgrid').html(data);
		  
	});
 }
 
 var editRow=function(id){
	
	 $.post("daily/dailyUpdate.do",{id:id,rState:"${userName}"},function(data){
		 
		alert("更新成功");
		 window.location.hash="daily/dailyCheck.do?roleId="+data.roleId+"&userName="+data.userName;
	 },"json"
	 );
 }
 
 /* var showRow=function(id){
	 window.location.hash="showProject.do?id="+id;
 }
 var deleteRow=function(id){
	 window.location.hash="deleteProject.do?id="+id;
 }  */
 
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
		jQuery("#jqgrid").jqGrid({
			data : jqgrid_data,
			datatype : "local",
			height : 'auto',
			colNames : ['编号','姓名','开始时间','结束时间','工时','工作内容','项目类别','项目名称','项目编号','项目阶段','完成情况','填写时间','审批人','审批'],		
			colModel : [
						{ name : 'id', index:'id',width:80,hidden:false }, 
						{ name : 'realName', index : 'realName', hidden : false },
						{ name : 'kssj', index : 'kssj' },
						{ name : 'jssj', index : 'jssj' },
						{ name : 'gs', index : 'gs' },
						{ name : 'xxgz', index : 'xxgz' },
						{ name : 'xmlb', index : 'xmlb' },
						{ name : 'xmmc', index : 'xmmc' },
						{ name : 'xmbh', index : 'xmbh' },
						{ name : 'xmjd', index : 'xmjd' },
						{ name : 'wcqk', index : 'wcqk' },
						{ name : 'createDate', index : 'createDate' },
						{ name : 'state', index : 'state' },
						{ name : 'act', index:'act',width:80,hidden:false }, 
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
				    var id = item.id;
					be = "<button class='btn btn-xs btn-default' title='审批' onclick=\"editRow('"+id+"');\"><i class='fa fa-pencil'></i></button>"; 
					se = "<button class='btn btn-xs btn-default' title='删除' onclick=\"deleteRow('"+id+"');\"><i class='fa fa-times'></i></button>";
					ss = "<button class='btn btn-xs btn-default' title='查看详情' onclick=\"showRow('"+id+"');\"><i class='fa fa-search'></i></button>";
					ce = "<button class='btn btn-xs btn-default' title='添加' onclick=\"addproject('"+id+"');\"><i class='fa fa-lock'></i></button>";
					//jQuery("#jqgrid").jqGrid('setRowData',ids[i],{act:be+se+ce});
					jQuery("#jqgrid").jqGrid('setRowData',ids[i],{act:be});
				}	
			},
			caption : "日报列表",				
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