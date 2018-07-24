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
					<!-- <label for="roleName" class="col-sm-2 control-label">项目类别：</label> -->
					<div class="col-sm-4">
						<!-- <label><input type="radio" value="0" name="radio" >未审批</label>
						<label><input type="radio" value="1" name="radio">已审批</label>
						<label><input type="radio" value="2" name="radio">拒绝</label>
						<label><input type="radio" value="" name="radio">全部</label> -->
						<%-- <input type="date" name="WaterDetail" class="form-control" id="WaterDetail" placeholder="时间" value="${WaterDetail.fdcreatetime}"> --%>
						<%-- <select name="projecttyep" class="form-control input-sm"
							id="projecttyep" value="${json.typeId }" onchange="selectTyep(this.value)">
							<option value="1">销售</option>
							<option value="2">市场拓展</option>
							<option value="3">回款</option>
							<option value="4">关系维护</option>
							<!-- <option value="5">售后</option> -->
							<option value="6">自营</option>
							<option value="7">专项</option>
						</select> --%>
					</div>
					<div class="col-sm-3">
					
					 <!-- <button class="btn btn-primary " data-toggle="modal" data-target="#myModal" onclick="addApply()">报销申请</button> -->
						&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;
					<!-- <a class="btn btn-primary" href="javascript:addApply();">
		              <i class="fa fa-plus"></i> 报销申请
		            </a> -->
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

$(":radio").click(function(){
	 var state=$(this).val();
	 console.log("state:"+state);
	 window.location.hash="apply/queryApplyList.do?aProposer=${userId}&aState="+state;
});

/*添加报销  */
var addApply=function(){
	
	window.location.hash="apply/initApply.do?userId=${userId}";
} 
 
var editRow=function(id,stateInt){
	  if(stateInt==1){
		  alert("审批通过不能修改");
	  }else{
		window.location.hash="apply/updateApply.do?id="+id;
	  }
 	}
 var deleteRow=function(id,stateInt,proposerInt){
	 if(stateInt==1){
		  alert("审批通过不能删除");
	  }else{
		  $.post("apply/deleteApply.do",{"id":id,"aProposer":proposerInt},function(data){
			  window.location.hash="apply/queryApplyList.do?aProposer="+proposerInt;
		  });
	  }
 }

 var showRow=function(proposerInt){
	 window.location.hash="apply/applyCheck.do?aProposer="+proposerInt+"&userId=${userId}";
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
			colNames : ['操作','报销序号','报销名称','开票单位','发票编号','报销金额','发票类型','发票用途','项目名称','申请人','审批人','审批结果','说明',
			            '开票时间','申报时间','申请人ID','审批人ID','项目ID','类型ID','状态ID'],		
			colModel : [
						{ name : 'act', index:'act',width:90,hidden:false }, 
						{ name : 'id', index : 'id', hidden : true },
						{ name : 'name', index : 'name', hidden : true },
						{ name : 'invoiceName', index : 'invoiceName' },
						{ name : 'invoiceNumber', index : 'invoiceNumber' },
						{ name : 'money', index : 'money' },
						{ name : 'type', index : 'type'},
						{ name : 'invoiceUse', index : 'invoiceUse'},
						{ name : 'projectName', index : 'projectName' },
						{ name : 'proposer', index : 'proposer'},
						{ name : 'approver', index : 'approver'},
						{ name : 'state', index : 'state'},
						{ name : 'reason', index : 'reason'},
						{ name : 'updateTime', index : 'updateTime'},
						{ name : 'createTime', index : 'createTime'},
						{ name : 'proposerInt', index : 'proposerInt', hidden : true},
						{ name : 'approverInt', index : 'approverInt', hidden : true},
						{ name : 'projectCodeInt', index : 'projectCodeInt', hidden : true},
						{ name : 'typeInt', index : 'typeInt', hidden : true},
						{ name : 'stateInt', index : 'stateInt', hidden : true},
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
				for(var i=0;i < ids.length;i++){
					var cl = ids[i];
					var item = $("#jqgrid").jqGrid('getRowData', cl);
				    var id = item.id;
				    var stateInt = item.stateInt;
				    var proposerInt = item.proposerInt;
					be = "<button class='btn btn-xs btn-default' title='审批' onclick=\"editRow('"+id+"','"+stateInt+"');\"><i class='fa fa-pencil'></i></button>"; 
					se = "<button class='btn btn-xs btn-default' title='删除' onclick=\"deleteRow('"+id+"','"+stateInt+"','"+proposerInt+"');\"><i class='fa fa-times'></i></button>";
					ss = "<button class='btn btn-xs btn-default' title='查看详情' onclick=\"showRow('"+proposerInt+"');\"><i class='fa fa-search'></i></button>";
					ce = "<button class='btn btn-xs btn-default' title='添加' onclick=\"addApply();\"><i class='fa fa-lock'></i></button>";
					jQuery("#jqgrid").jqGrid('setRowData',ids[i],{act:ss});
				}	
			},
			caption : "我的报销单",				
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