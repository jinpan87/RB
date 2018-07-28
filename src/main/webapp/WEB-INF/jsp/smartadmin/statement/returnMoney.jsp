<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/basepath.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<section id="width_jqgrid">
	<!-- row -->
	<div class="row">
	<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
	<table id="jqgrid"></table>
	<div id="pjqgrid" style="height: 35px; background: #e5e5e5;"></div>
	</article>
	</div>
</section>
<script type="text/javascript">
pageSetUp();
function tofunction() {
	
	loadScript("lib/smartadmin/js/plugin/jqgrid/jquery.jqGrid.min.js", query_function);
	
	function query_function() {
	
		var jqgrid_data = ${jsonArray};
		jQuery("#jqgrid").jqGrid({
			data : jqgrid_data,
			caption : "到期应回款数据",				
			autowidth : false,
			datatype : "local",
			height : 'auto',
			colNames : ['序号','合同号','合同名称','订单号','签订日期','合同总额','未回款额','已回款额（万元）','回款状态','首付条件','应回日期','应回金额','回款超期预警','进度情况','验收情况',
			            '催款进展状况','预计回款日期','客户接口人','已经采取过的措施','创建时间','更新时间'],		
			colModel : [
						{ name : 'id', index:'id',width:80,hidden:false,editable:true}, 
						{ name : 'cCode', index : 'cCode', hidden :false,
							editable:true,edittype:'select', editoptions:{
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
						{ name : 'cName', index : 'cName',editable:true,edittype:'select', editoptions:{value: {'请选择': '请选择'}}},
						{ name : 'rCode', index : 'rCode',editable:true
							},
						{ name : 'cSigningDate', index : 'cSigningDate',editable:true,edittype:'select', editoptions:{value: {'请选择': '请选择'}}},
						{ name : 'cTotalAmount', index : 'cTotalAmount',editable:true,edittype:'select', editoptions:{value: {'请选择': '请选择'}} },
						{ name : 'rUnreturnMoney', index : 'rUnreturnMoney',editable:true,hidden : false},
						{ name : 'rReturnedMoney', index : 'rReturnedMoney',editable:true,hidden : false},
						{ name : 'rReturnStatus', index : 'rReturnStatus',editable:true},
						{ name : 'rDownPaymentTerms', index : 'rDownPaymentTerms',editable:true},
						{ name : 'rBackDay', index : 'rBackDay',editable: true,
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
						{ name : 'rBackAmount', index : 'rBackAmount',editable: true},
						{ name : 'rAlarm', index : 'rAlarm',editable: true},
						{ name : 'pProgress', index : 'pProgress',editable: true,edittype:'select', editoptions:{value: {'请选择': '请选择'}}},
						{ name : 'pState', index : 'pState',editable: true,edittype:'select', editoptions:{value: {'请选择': '请选择'}}},
						{ name : 'rDept', index : 'rDept',editable : true},
						{ name : 'rPlantDay', index : 'rPlantDay',editable : true,
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
						{ name : 'rCustomer', index : 'rCustomer',editable : true},
						{ name : 'rMeasure', index : 'rMeasure',editable : true},
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
			editurl:'statement/editReturnMoney.do',
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
			//autoScroll:true,
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
		            	url: "statement/getContractList.do",
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
				                	str+=jsonArray[i].cCode+":"+jsonArray[i].cName+";";
				                } else {  
				                	str+=jsonArray[i].cCode+":"+jsonArray[i].cName;
				                }
				            }  
				         }
				     }  
				 });
		        return str;
		  }

		  function getCustomerMsg(selectNum, param) {
		        var str = ""; //决策人 
		        var str2 = ""; //决策人联系方式  
		        var str3 = ""; //接口人 
		        var str4 = ""; //接口人联系方式  
		        var str5 = ""; //接口人联系方式  
		       // var str6 = ""; //接口人联系方式  
		        //将增加操作的弹出菜单中的roleid的下拉框内容清空（因为每次切换内容都需要变更）  
		        $("select#cName").empty();  
		        $("select#cSigningDate").empty();  
		        $("select#cTotalAmount").empty();  
		        $("select#pProgress").empty();  
		        $("select#pState").empty();  
		       // $("select#pCounty").empty();  
		  
		        //将修改操作中的1_roleid（1是行号）的下拉框内容清空（因为每次切换内容都需要变更）  
		        $("select#" + selectNum + "_cName").empty(); 
		        $("select#" + selectNum + "_cSigningDate").empty(); 
		        $("select#" + selectNum + "_cTotalAmount").empty(); 
		        $("select#" + selectNum + "_pProgress").empty(); 
		        $("select#" + selectNum + "_pState").empty(); 
		       // $("select#" + selectNum + "_pCounty").empty(); 
		        
		        if (param == '请选择') {  
		            str += "<option>" + "请选择" + "</option>";  
		            str2 += "<option>" + "请选择" + "</option>";  
		            str3 += "<option>" + "请选择" + "</option>";  
		            str4 += "<option>" + "请选择" + "</option>";  
		            str5 += "<option>" + "请选择" + "</option>";  
		            //str6 += "<option>" + "请选择" + "</option>";  
		        }  
		        else {  
		            for (var i = 0; i < jsonArray.length; i++) {  
	                    $.ajax({  
	                        url: "statement/queryReturnMoneyMsg.do",  
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
	                                    str += "<option value='" + json[i].cName + "'>" + json[i].cName + "</option>";  
	                                    str2 += "<option value='" + json[i].cSigningDate + "'>" + json[i].cSigningDate + "</option>";  
	                                    str3 += "<option value='" + json[i].cTotalAmount + "'>" + json[i].cTotalAmount + "</option>";  
	                                    str4 += "<option value='" + json[i].pProgress + "'>" + json[i].pProgress + "</option>";  
	                                    str5 += "<option value='" + json[i].pState + "'>" + json[i].pState + "</option>";  
	                                    //str6 += "<option value='" + json[i].pCounty + "'>" + json[i].pCounty + "</option>";  
	                                }  
	                            }  
	                            else {  
	                                str += "<option>" + "暂无数据" + "</option>";  
	                                str2 += "<option>" + "暂无数据" + "</option>";  
	                                str3 += "<option>" + "暂无数据" + "</option>";  
	                                str4 += "<option>" + "暂无数据" + "</option>";  
	                                str5 += "<option>" + "暂无数据" + "</option>";  
	                                //str6 += "<option>" + "暂无数据" + "</option>";  
	                            }  
	                        }  
	                    });  
	                    break;  
		            }  
		        } 
		        //获取下面下拉框username对象  
		        var cName = $("select#cName");     
		        cName.append(str);//渲染option  
		        //获取下面下拉框selectNum_username对象  
		        var cName2 = $("select#" + selectNum + "_cName");     
		        cName2.append(str);//渲染option 
		        
		        
		        var cSigningDate = $("select#cSigningDate");     
		        cSigningDate.append(str2);//渲染option  
		        //获取下面下拉框selectNum_username对象  
		       var cSigningDate2 = $("select#" + selectNum + "_cSigningDate");     
		       cSigningDate2.append(str2);//渲染option 
		        
		        
		        var cTotalAmount = $("select#cTotalAmount");     
		        cTotalAmount.append(str3);//渲染option  
		        //获取下面下拉框selectNum_username对象  
		        var cTotalAmount2 = $("select#" + selectNum + "_cTotalAmount");     
		        cTotalAmount2.append(str3);//渲染option 
		        
		        
		        var pProgress = $("select#pProgress");     
		        pProgress.append(str4);//渲染option  
		        //获取下面下拉框selectNum_username对象  
		        var pProgress2 = $("select#" + selectNum + "_pProgress");     
		        pProgress2.append(str4);//渲染option 
		        
		        
		        var pState = $("select#pState");     
		        pState.append(str5);//渲染option  
		        //获取下面下拉框selectNum_username对象  
		        var pState2 = $("select#" + selectNum + "_pState");     
		        pState2.append(str5);//渲染option 
		        
		        
		        //var pCounty = $("select#pCounty");     
		        //pCounty.append(str6);//渲染option  
		        //获取下面下拉框selectNum_username对象  
		       // var pCounty2 = $("select#" + selectNum + "_pCounty");     
		        //pCounty2.append(str6);//渲染option 
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
	loadScript("lib/js/jqGrid-5.1.0/jqGrid-master/js/i18n/grid.locale-cn.js", tofunction);
</script>