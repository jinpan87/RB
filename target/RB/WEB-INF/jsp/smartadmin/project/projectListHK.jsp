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
					<label for="roleName" class="col-sm-2 control-label">项目类别：</label>
					<div class="col-sm-2">
						<%-- <input type="date" name="WaterDetail" class="form-control" id="WaterDetail" placeholder="时间" value="${WaterDetail.fdcreatetime}"> --%>
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
					<div class="col-sm-3">
					
					<!-- <button class="btn btn-primary " data-toggle="modal" data-target="#myModal" onclick="addproject()">立项</button> -->
						&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;
						<!--  <a class="btn btn-primary" href="javascript:addproject();">
		              <i class="fa fa-plus"></i> 新增立项
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

pageSetUp();
chenckType();
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
 }
 var addproject=function(id){
	 var typeId=document.getElementById("projecttyep").value;
	 /* alert('typeId'+typeId); */
	 window.location.hash="<%=basePath%>/addHK.do?id="+id+"&typeId="+typeId;
	 
 }
 
 var editRow=function(id){
	 $.post("updateProject.do",{id:id},function(data){
		/*  alert(111);
		 alert(data.state); */
		 if(data.state==1){
			 alert("此项目已结项,不能修改");
		 }else{
			 window.location.hash="project/updateProjectThree.do?id="+data.id;
		 }
	 },"json"
		 
	 );
	 /* window.location.hash="updateProject.do?id="+id; */
 }
 var showRow=function(id){
	 window.location.hash="showProject.do?id="+id;
 }
 var deleteRow=function(id){
	 window.location.hash="deleteProject.do?id="+id;
 }
 
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
			colNames : ['操作','序号','项目编号','项目名称','项目经理','项目类型','创建时间'],		
			colModel : [
						{ name : 'act', index:'act',width:80,hidden:false }, 
						{ name : 'id', index : 'id', hidden : true },
						{ name : 'code', index : 'code' },
						{ name : 'name', index : 'name' },
						{ name : 'manager', index : 'manager' },
						{ name : 'typeName', index : 'typeName' },
						{ name : 'createTime', index : 'createTime',formatter:'date', formatoptions: {srcformat:'Y-m-d H:i:s',newformat:'Y-m-d H:i:s'} },
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
					
					jQuery("#jqgrid").jqGrid('setRowData',ids[i],{act:ce});
					
					
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
	
</script>