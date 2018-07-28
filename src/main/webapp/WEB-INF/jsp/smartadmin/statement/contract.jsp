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
			caption : "毛利率列表",				
			autowidth : false,
			datatype : "local",
			height : 'auto',
			colNames : ['序号','合同号','项目编号','项目名称','项目负责人','省','市','区县','合同名称','签订日期',
			            '合同总额','合同成本','合同维修年限费用','特殊培训费用','HZ','毛利率','备注','质保期',
			            '解决方案负责人','施工部门','维护部门','创建时间','更新时间'],		
			colModel : [
						{ name : 'id', index:'id',width:80,hidden:false,defval:0,editable:true }, 
						{ name : 'cCode', index : 'cCode', hidden :false,editable:true},
						{ name : 'pName', index : 'pName',editable:true,edittype:'select', editoptions:{value: {'请选择': '请选择'}},
								formatter:function(cellvalue, options, rowObject){
									cellvalue=rowObject.pCode;
									return cellvalue;
								} },
						{ name : 'pCode', index : 'pCode',editable:true,
							edittype:'select', editoptions:{
								value:customerCode(),dataEvents: [//给当前控件追加事件处理  
								                                {  
								                                    type: 'change',                 //下拉选择的时候  
								                                    fn: function (e) {              //触发方法  
								                                        //获取当前下拉框的id名字（这是点击编辑按钮时才需要的，因为点击编辑按钮后，schoolName的下拉框会变成1_roleid,其中”1“是行号）  
								                                        var itemName = this.id; 
								                                        var selectNum = itemName.split('_')[0];//（这是点击编辑按钮时才需要的）将id中的数字获取出来  
								                                        var roleid = this.value; //获取选中的角色名称 
								                                        getCustomerMsg(selectNum,roleid); //调用获取角色下对应用户信息data的方法  
								                                    }  
								                                }  
								                            ]
							}},
						{ name : 'pManager', index : 'pManager',editable:true,edittype:'select', editoptions:{value: {'请选择': '请选择'}} },
						{ name : 'pProvince', index : 'pProvince',editable:true,edittype:'select', editoptions:{value: {'请选择': '请选择'}}},
						{ name : 'pCity', index : 'pCity',editable:true,edittype:'select', editoptions:{value: {'请选择': '请选择'}}},
						{ name : 'pCounty', index : 'pCounty',hidden :false,editable:true,edittype:'select', editoptions:{value: {'请选择': '请选择'}}},
						{ name : 'cName', index : 'cName',editable:true},
						{ name : 'cSigningDate', index : 'cSigningDate',editable:true,
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
						{ name : 'cTotalAmount', index : 'cTotalAmount',editable:true},
						{ name : 'cCost', index : 'cCost',editable:true},
						{ name : 'cUpkeep', index : 'cUpkeep',editable:true},
						{ name : 'cTraining', index : 'cTraining',editable:true},
						{ name : 'cPay', index : 'cPay',editable:true},
						{ name : 'cGrossProfitRate', index : 'cGrossProfitRate',editable:true},
						{ name : 'cInfo', index : 'cInfo',editable:true},
						{ name : 'cGuaranteePeriod', index : 'cGuaranteePeriod',editable:true,hidden:true},
						{ name : 'cSolutionPeople', index : 'cSolutionPeople',editable:true,hidden:true},
						{ name : 'cWorkDepartment', index : 'cWorkDepartment',editable:true,hidden:true},
						{ name : 'cMaintainDepartment', index : 'cMaintainDepartment',editable:true,hidden:true},
						{ name : 'createTime', index : 'createTime',editable : true,hidden:true,
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
						{ name : 'updateTime', index : 'updateTime',editable : true,hidden:true,
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
			editurl:'statement/editContract.do',
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
		 	
		 	function customerCode(){
				var str = "请选择:请选择;";
		        	$.ajax({
		            	url: "statement/getProjectList.do",
		            	async: false,
		            	cache: true,
		            	type: "POST",
					data:{start:0,
						limit:10							
					},
		            	success: function(result){
		            		var jsonArray = eval(result.jsonArray);
					if(result.jsonArray != undefined && result.jsonArray.length > 0){
						window.jsonArray = jsonArray;
				            //将数据里面的roleid逐个取出，并且以”xxxx:xxxx“设置为select的option值，连接成String对象  
				            for (var i = 0; i < jsonArray.length; i++) {
				                if (i != jsonArray.length-1) {
				                	str+=jsonArray[i].pCode+":"+jsonArray[i].pName+";";
				                } else {  
				                	str+=jsonArray[i].pCode+":"+jsonArray[i].pName;
				                }
				            }  
				         }
				     }  
				 });
		        return str;
		  }

		  function getCustomerMsg(selectNum, param) {
		        //var str = ""; //决策人 
		        var str2 = ""; //决策人联系方式  
		        var str3 = ""; //接口人 
		        var str4 = ""; //接口人联系方式  
		        var str5 = ""; //接口人联系方式  
		        var str6 = ""; //接口人联系方式  
		        //将增加操作的弹出菜单中的roleid的下拉框内容清空（因为每次切换内容都需要变更）  
		        //$("select#pCode").empty();  
		        $("select#pName").empty();  
		        $("select#pManager").empty();  
		        $("select#pProvince").empty();  
		        $("select#pCity").empty();  
		        $("select#pCounty").empty();  
		  
		        //将修改操作中的1_roleid（1是行号）的下拉框内容清空（因为每次切换内容都需要变更）  
		      //  $("select#" + selectNum + "_pCode").empty(); 
		        $("select#" + selectNum + "_pName").empty(); 
		        $("select#" + selectNum + "_pManager").empty(); 
		        $("select#" + selectNum + "_pProvince").empty(); 
		        $("select#" + selectNum + "_pCity").empty(); 
		        $("select#" + selectNum + "_pCounty").empty(); 
		        
		        if (param == '请选择') {  
		          //  str += "<option>" + "请选择" + "</option>";  
		            str2 += "<option>" + "请选择" + "</option>";  
		            str3 += "<option>" + "请选择" + "</option>";  
		            str4 += "<option>" + "请选择" + "</option>";  
		            str5 += "<option>" + "请选择" + "</option>";  
		            str6 += "<option>" + "请选择" + "</option>";  
		        }  
		        else {  
		            for (var i = 0; i < jsonArray.length; i++) {  
	                    $.ajax({  
	                        url: "statement/queryContractMsg.do",  
	                        async: false,  
	                        cache: false,  
	                        dataType: "json",  
	                        data: {  
	                        	param: param  //传入角色id，到后台获取json  
	                        },  
	                        success: function (result) {
	                        	let json=eval(result.jsonArray);
	                            if (json.length > 0) {  
	                                for (var i = 0; i < json.length; i++) {   //循环生成option，并且连接成String对象  
	                                   // str += "<option value='" + json[i].pCode + "'>" + json[i].pCode + "</option>";  
	                                    str2 += "<option value='" + json[i].pName + "'>" + json[i].pName + "</option>";  
	                                    str3 += "<option value='" + json[i].pManager + "'>" + json[i].pManager + "</option>";  
	                                    str4 += "<option value='" + json[i].pProvince + "'>" + json[i].pProvince + "</option>";  
	                                    str5 += "<option value='" + json[i].pCity + "'>" + json[i].pCity + "</option>";  
	                                    str6 += "<option value='" + json[i].pCounty + "'>" + json[i].pCounty + "</option>";  
	                                }  
	                            }  
	                            else {  
	                               // str += "<option>" + "暂无数据" + "</option>";  
	                                str2 += "<option>" + "暂无数据" + "</option>";  
	                                str3 += "<option>" + "暂无数据" + "</option>";  
	                                str4 += "<option>" + "暂无数据" + "</option>";  
	                                str5 += "<option>" + "暂无数据" + "</option>";  
	                                str6 += "<option>" + "暂无数据" + "</option>";  
	                            }  
	                        }  
	                    });  
	                    break;  
		            }  
		        } 
		        //获取下面下拉框username对象  
		       // var pCode = $("select#pCode");     
		       // pCode.append(str);//渲染option  
		        //获取下面下拉框selectNum_username对象  
		      //  var pCode2 = $("select#" + selectNum + "_pCode");     
		       // pCode2.append(str);//渲染option 
		        
		        
		        var pName = $("select#pName");     
		        pName.append(str2);//渲染option  
		        //获取下面下拉框selectNum_username对象  
		       var pName2 = $("select#" + selectNum + "_pName");     
		       pName2.append(str2);//渲染option 
		        
		        
		        var pManager = $("select#pManager");     
		        pManager.append(str3);//渲染option  
		        //获取下面下拉框selectNum_username对象  
		        var pManager2 = $("select#" + selectNum + "_pManager");     
		        pManager2.append(str3);//渲染option 
		        
		        
		        var pProvince = $("select#pProvince");     
		        pProvince.append(str4);//渲染option  
		        //获取下面下拉框selectNum_username对象  
		        var pProvince2 = $("select#" + selectNum + "_pProvince");     
		        pProvince2.append(str4);//渲染option 
		        
		        
		        var pCity = $("select#pCity");     
		        pCity.append(str5);//渲染option  
		        //获取下面下拉框selectNum_username对象  
		        var pCity2 = $("select#" + selectNum + "_pCity");     
		        pCity2.append(str5);//渲染option 
		        
		        
		        var pCounty = $("select#pCounty");     
		        pCounty.append(str6);//渲染option  
		        //获取下面下拉框selectNum_username对象  
		        var pCounty2 = $("select#" + selectNum + "_pCounty");     
		        pCounty2.append(str6);//渲染option 
		  }
		  
		  
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