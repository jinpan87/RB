<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/basepath.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<section id="width_jqgrid">
	<!-- row -->
	<div class="row">
			<table id="jqgrid"></table>
			<div id="pjqgrid" style="height: 35px; background: #e5e5e5;"></div>
	</div>
</section>
<script type="text/javascript">
var pagefunction = function() {
	
	loadScript("lib/smartadmin/js/plugin/jqgrid/jquery.jqGrid.min.js", run_jqgrid_function);
	
	
	
	function run_jqgrid_function() {
		
		var jqgrid_data = ${jsonArray};
		jQuery("#jqgrid").jqGrid({
			data : jqgrid_data,
			caption : "客户信息表",				
			autowidth : false,
			datatype : "local",
			height : 'auto',
			colNames : ['序号','编号','产品','区域','竞争对手','合同份额','情报来源','精确度','情报','创建时间','更新时间'],		
			colModel : [
						{ name : 'id', index:'id',width:80,hidden:false,defval:0,
							editable:true,editrules:{edithidden:true,required:true} }, 
						{ name : 'rCode', index : 'rCode', hidden :false,
							editable:true,editrules:{edithidden:true,required:true}},
						{ name : 'rProduct', index : 'rProduct',editable:true,
							editrules:{edithidden:false,required:true} },
						{ name : 'rArea', index : 'rArea',editable:true },
						{ name : 'rName', index : 'rName',editable:true },
						{ name : 'rAmount', index : 'rAmount',editable:true,hidden : false,
							editrules:{edithidden:true,required:true,number:true}},
						{ name : 'rInformationSource', index : 'rInformationSource',editable:true,hidden : false},
						{ name : 'rPrecision', index : 'rPrecision',hidden :false,editable:true},
						{ name : 'rInformation', index : 'rInformation',editable:true},
						{ name : 'createTime', index : 'createTime',editable : true,
							editoptions:{
							dataInit:function(e){
								$(e).datetimepicker({
									language:"zh-CN",
									 autoclose: true,
									 todayBtn: "linked", 
								    format: 'yyyy-mm-dd hh:ii:00'
								});
			                    $(this).click(function(e){//选中时间后隐藏
			                        $(e).parent().datetimepicker('hide');
			                    });
			                }
			            },sortable : false},
						{ name : 'updateTime', index : 'updateTime',editable : true,
			            	editoptions:{
								dataInit:function(e){
									$(e).datetimepicker({
										language:"zh-CN",
										 autoclose: true,
										 todayBtn: "linked", 
									    format: 'yyyy-mm-dd hh:ii:00'
									});
				                    $(this).click(function(e){//选中时间后隐藏
				                        $(e).parent().datetimepicker('hide');
				                    });
				                }
				            },sortable : false},
						
					  ], 	
			rowNum : 10,
			editurl:'statement/editRival.do',
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
			width:500,
			height:"100%",
			//shrinkToFit:false,
			//autoScroll: true,
			gridComplete: function(){
				var ids = jQuery("#jqgrid").jqGrid('getDataIDs');
				for(var i=0;i < ids.length;i++){
					var cl = ids[i];
					var item = $("#jqgrid").jqGrid('getRowData', cl);
				    var id=item.id;
				    var project="\"id\":"+id;
					be = "<button class='btn btn-xs btn-default' title='修改' onclick=\"jQuery('#jqgrid').jqGrid('editGridRow','"+cl+"',{checkOnSubmit:true,checkOnUpdate:true,closeAfterEdit:true,closeOnEscape:true});\"><i class='fa fa-pencil'></i></button>"; 
					se = "<button class='btn btn-xs btn-default' title='删除' onclick=\"deleteRow('"+id+"');\"><i class='fa fa-times'></i></button>";
					ss = "<button class='btn btn-xs btn-default' title='查看详情' onclick=\"showRow('"+id+"');\"><i class='fa fa-search'></i></button>";
					ce = "<button class='btn btn-xs btn-default' title='添加' onclick=\"addproject('"+id+"');\"><i class='fa fa-lock'></i></button>";
					//jQuery("#jqgrid").jqGrid('setRowData',ids[i],{act:be});
						}	
					},
			
					
			});
	  		jQuery("#jqgrid").jqGrid('navGrid', "#pjqgrid", 
				 {edit : false,add : false,	del : false},
				 {height : 300,reloadAfterSubmit : false}, 
				 {height : 300,reloadAfterSubmit : false}, 
				 {height : 300,reloadAfterSubmit : false}); 
		 	jQuery("#jqgrid").jqGrid('inlineNav', "#pjqgrid"); 
		  
		  
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