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
			colNames : ['序号','客户单位编号','提交人','客户','省份','地区','单位','性别','出生年月日','年龄','职务','行政级别','毕业学校','从警经历',
			            '手机号','办公电话','性格','爱好','吸烟情况','酒量','健康状况','家庭成员情况','客户关系定位','创建时间','更新时间'],		
			colModel : [
						{ name : 'id', index:'id',width:80,hidden:false,defval:0,
							editable:true,editrules:{edithidden:true,required:true} }, 
						{ name : 'cCode', index : 'cCode', hidden :false,
							editable:true,editrules:{edithidden:true,required:true}},
						{ name : 'cSubmitter', index : 'cSubmitter',editable:true,
							editrules:{edithidden:false,required:true} },
						{ name : 'cName', index : 'cName',editable:true },
						{ name : 'cProvince', index : 'cProvince',editable:true },
						{ name : 'cDistrict', index : 'cDistrict',editable:true,hidden : false},
						{ name : 'cCorporation', index : 'cCorporation',editable:true,hidden : false},
						{ name : 'cSex', index : 'cSex',hidden :true,editable:true,edittype:'select',editoptions:{value:'男:男;女:女'}},
						{ name : 'cBirthday', index : 'cBirthday',editable:true},
						{ name : 'cAge', index : 'cAge',editable: true,
							editrules:{edithidden:false,integer:true}},
						{ name : 'cDuty', index : 'cDuty',editable: true},
						{ name : 'cAdministrativeLevel', index : 'cAdministrativeLevel',editable: true},
						{ name : 'cSchool', index : 'cSchool',editable : true},
						{ name : 'cExperience', index : 'cExperience',editable : true},
						{ name : 'cMobilePhone', index : 'cMobilePhone',editable : true},
						{ name : 'cPhone', index : 'cPhone',editable : true},
						{ name : 'cCharacter', index : 'cCharacter',editable : true},
						{ name : 'cHobby', index : 'cHobby',editable : true},
						{ name : 'cSmoke', index : 'cSmoke',editable : true},
						{ name : 'cDrink', index : 'cDrink',editable : true},
						{ name : 'cHealth', index : 'cHealth',editable : true},
						{ name : 'cFamily', index : 'cFamily',editable : true},
						{ name : 'cCustomerRelations', index : 'cCustomerRelations',editable : true,edittype:'select', editoptions:{value:'0:决策人;1:接口人'},
							 formatter:function(cellvalue, options, rowObject){
							cellvalue=cellvalue==0?'决策人':'接口人';
							return cellvalue; }
						},
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
			editurl:'statement/editClient.do',
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