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
					<label for="roleName" class="col-sm-2 control-label">项目进程管理：</label>
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
						 <a class="btn btn-primary" href="javascript:addproject();">
		              <i class="fa fa-plus"></i> 新增立项
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
chenckType();
 var selectTyep=function(str){
	$.ajax({type : "GET",
            url : "<%=basePath%>/project/projectProgressManager/type.do?typeId="+str,
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
	/* alert('项目类型id:'+typeId); */
	$.post("project/addcheck.do",{typeId:typeId,id:id},function(data){
		if(data.code==0){
			window.location.hash="<%=basePath%>/add.do?typeId="+typeId;
		}else if(data.code==1){
			window.location.hash="<%=basePath%>/typeHK.do?typeId="+typeId;
		}
	});
 }
 
 var editRow=function(project){
	 
	 console.log("project:"+project);
	 $.post("project/editProject.do",{typeName:project},function(data){
		 
	 });
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
			caption : "项目进度管理",				
			autowidth : false,
			datatype : "local",
			height : 'auto',
			colNames : ['操作','序号','项目编号','项目名称','项目 负责人','项目成员','项目类型编号','项目类型','创建时间','项目状态','省','市','区县','原承建厂家','预计落单时间',
			            '预计合同额','签单概率','报价','客户编号','客户方决策人','决策人联系方式','客户方接口人','接口人联系方式','资金来源','资金是否到位','竞争对手情况',
			            '成功经验/失败教训','最新进展'],		
			colModel : [
						{ name : 'act', index:'act',width:80,hidden:true }, 
						{ name : 'id', index : 'id', hidden : true,
							editrules:{edithidden:false,required:true},defval:0},
						{ name : 'code', index : 'code',editable:true,
							editrules:{edithidden:false,required:true} },
						{ name : 'name', index : 'name',editable:true },
						{ name : 'manager', index : 'manager',editable:true },
						{ name : 'grew', index : 'grew',editable:true,hidden : true},
						{ name : 'typeId', index : 'typeId',editable:true,hidden : false,
							editrules: {required:true},edittype:'select',editoptions:{value:gettypes()},formatter:function(cellvalue, options, rowObject){
								cellvalue=rowObject.typeName;
								return cellvalue;
							} },
						{ name : 'typeName', index : 'typeName',hidden :true,editable:true },
						{ name : 'createTime', index : 'createTime',editable:true,
							hidden:false,editoptions:{
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
				                }}},
						{ name : 'state', index : 'state',editable: true,
							editrules:{edithidden:false,required:true,integer:true},edittype:'select',editoptions:{value:'0:未结项;1:已结项'},formatter:function(cellvalue, options, rowObject){
								var temp = '';
								$.each(options.colModel.editoptions.value, function (key, value)
								{
								if (cellvalue == key || cellvalue == value)
								{
								temp = value;
								return false;
								}
								});
								return temp;
							}},
						{ name : 'province', index : 'province',editable: true},
						{ name : 'city', index : 'city',editable: true},
						{ name : 'county', index : 'county',editable : true},
						{ name : 'originalContractor', index : 'originalContractor',editable : true},
						{ name : 'writtenDay', index : 'writtenDay',editable : true,
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
						{ name : 'planAmount', index : 'planAmount',editable : true,
							editrules:{edithidden:false,required:true,number:true},defval:0},
						{ name : 'planMake', index : 'planMake',editable : true},
						{ name : 'money', index : 'money',editable : true,
							editrules:{edithidden:false,required:true,number:true},defval:0},
						{ name : 'customerCode', index : 'customerCode',editable : true, edittype:'select', editoptions:{
							value:customerCode(),dataEvents: [//给当前控件追加事件处理  
							                                {  
							                                    type: 'change',                 //下拉选择的时候  
							                                    fn: function (e) {              //触发方法  
							                                        //获取当前下拉框的id名字（这是点击编辑按钮时才需要的，因为点击编辑按钮后，schoolName的下拉框会变成1_roleid,其中”1“是行号）  
							                                        var itemName = this.id;       
							                                        var selectNum = itemName.match(/^\d+/);//（这是点击编辑按钮时才需要的）将id中的数字获取出来  
							                                        var roleid = this.value; //获取选中的角色名称 
							                                        getCustomerMsg(selectNum,roleid); //调用获取角色下对应用户信息data的方法  
							                                    }  
							                                }  
							                            ]
						}},
						{ name : 'decisionName', index : 'decisionName',editable : true,edittype:'select', editoptions:{value: {'请选择': '请选择'}}},
						{ name : 'decisionPhone', index : 'decisionPhone',editable : true,edittype:'select', editoptions:{value: {'请选择': '请选择'}}},
						{ name : 'buttName', index : 'buttName',editable : true,edittype:'select', editoptions:{value: {'请选择': '请选择'}}},
						{ name : 'buttPhone', index : 'buttPhone',editable : true,edittype:'select', editoptions:{value: {'请选择': '请选择'}}},
						{ name : 'sourceFund', index : 'sourceFund',editable : true},
						{ name : 'ready', index : 'ready',editable : true,
							editrules:{edithidden:false,required:true},edittype:'select',editoptions:{value:'0:未到位;1:已到位'}},
						{ name : 'information', index : 'information',editable : true},
						{ name : 'summarize', index : 'summarize',editable : true},
						{ name : 'progresses', index : 'progresses',sortable : false,
							editable : true,edittype : "textarea",editoptions : {rows : "4",cols : "20"}},
					  ], 	
			rowNum : 10,
			/* cellEdit:true, */
			/* //cellsubmit:'remote',//or 'clientArray',remote代表每次编辑提交后进行服务器保存，clientArray只保存到数据表格不保存到服务器 */
			/* cellurl:'project/updateJqGridProject.do', */
			editurl:'project/editProject.do',
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
			shrinkToFit:false,
			autoScroll: false,
			gridComplete: function(){
				var ids = jQuery("#jqgrid").jqGrid('getDataIDs');
				var typeCode=document.getElementById("projecttyep").value;
				for(var i=0;i < ids.length;i++){
					var cl = ids[i];
					var item = $("#jqgrid").jqGrid('getRowData', cl);
				    var id=item.id;
				    var project="\"id\":"+id;
					be = "<button class='btn btn-xs btn-default' title='修改' onclick=\"jQuery('#jqgrid').jqGrid('editGridRow','"+cl+"',{checkOnSubmit:true,checkOnUpdate:true,closeAfterEdit:true,closeOnEscape:true});\"><i class='fa fa-pencil'></i></button>"; 
					se = "<button class='btn btn-xs btn-default' title='删除' onclick=\"deleteRow('"+id+"');\"><i class='fa fa-times'></i></button>";
					ss = "<button class='btn btn-xs btn-default' title='查看详情' onclick=\"showRow('"+id+"');\"><i class='fa fa-search'></i></button>";
					ce = "<button class='btn btn-xs btn-default' title='添加' onclick=\"addproject('"+id+"');\"><i class='fa fa-lock'></i></button>";
					jQuery("#jqgrid").jqGrid('setRowData',ids[i],{act:be});
					/* jQuery("#jqgrid").jqGrid('editRow', id);
					jQuery("#jqgrid").jqGrid('restoreRow', id);
					jQuery("#rowed1").jqGrid('saveRow', id,'','project/editProject.do',typeName=item.typeName); */
							
						}	
					},
			
					
			});
	  jQuery("#jqgrid").jqGrid('navGrid', "#pjqgrid", 
				 {edit : false,add : false,	del : false},
				 {height : 300,reloadAfterSubmit : 'project/editProject.do'}, 
				 {height : 300,reloadAfterSubmit : 'project/editProject.do'}, 
				 {height : 300,reloadAfterSubmit : false}); 
		  jQuery("#jqgrid").jqGrid('inlineNav', "#pjqgrid"); 
		  
		  function gettypes(){

				//动态生成select内容
				var str="";

				$.ajax({

				type:"post",

				async:false,

				url:"project/getTypeList.do",

				success:function(data){
				if (data != null) {

				        var jsonobj=eval(data.jsonArray);
						console.log("jsonobj:"+jsonobj);
				        var length=jsonobj.length;

				        for(var i=0;i<length;i++){

				            if(i!=length-1){

				             str+=jsonobj[i].id+":"+jsonobj[i].name+";";

				            }else{

				               str+=jsonobj[i].id+":"+jsonobj[i].name;// 这里是option里面的 value:label

				            }

				         }   
				     }

				}

				});

				 return str;

				    }
		 
		  function customerCode(){
				var str = "请选择:请选择;";
		        	$.ajax({
		            	url: "project/getCustomerCodeList.do",
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
				                	str+=jsonArray[i].code+":"+jsonArray[i].corporation+";";
				                } else {  
				                	str+=jsonArray[i].code+":"+jsonArray[i].corporation;
				                }
				            }  
				         }
				     }  
				 });
		        	console.log("str:"+str);
		        return str;
		  }

		  function getCustomerMsg(selectNum, customerId) {
		        var str = ""; //决策人 
		        var str2 = ""; //决策人联系方式  
		        var str3 = ""; //接口人
		        var str4 = ""; //接口人联系方式  
		  		console.log("selectNum:"+selectNum+"customerId:"+customerId);
		        //将增加操作的弹出菜单中的roleid的下拉框内容清空（因为每次切换内容都需要变更）  
		        $("select#decisionName").empty();  
		        $("select#decisionPhone").empty();  
		        $("select#buttName").empty();  
		        $("select#buttPhone").empty();  
		  
		        //将修改操作中的1_roleid（1是行号）的下拉框内容清空（因为每次切换内容都需要变更）  
		        $("select#" + selectNum + "_decisionName").empty(); 
		        $("select#" + selectNum + "_decisionPhone").empty(); 
		        $("select#" + selectNum + "_buttName").empty(); 
		        $("select#" + selectNum + "_buttPhone").empty(); 
		        
		        if (customerId == '请选择角色') {  
		            str += "<option>" + "请选择" + "</option>";  
		            str2 += "<option>" + "请选择" + "</option>";  
		            str3 += "<option>" + "请选择" + "</option>";  
		            str4 += "<option>" + "请选择" + "</option>";  
		        }  
		        else {  
		            for (var i = 0; i < jsonArray.length; i++) {  
	                    $.ajax({  
	                        url: "project/queryCustomerMsg.do",  
	                        async: false,  
	                        cache: false,  
	                        dataType: "json",  
	                        data: {  
	                        	customerId: customerId  //传入角色id，到后台获取json  
	                        },  
	                        success: function (result) {
	                        	let json=eval(result.jsonArray);
	                            if (json.length > 0) {  
	                                for (var i = 0; i < json.length; i++) {   //循环生成option，并且连接成String对象  
	                                    str += "<option value='" + json[i].decisionName + "'>" + json[i].decisionName + "</option>";  
	                                    str2 += "<option value='" + json[i].decisionPhone + "'>" + json[i].decisionPhone + "</option>";  
	                                    str3 += "<option value='" + json[i].buttName + "'>" + json[i].buttName + "</option>";  
	                                    str4 += "<option value='" + json[i].buttPhone + "'>" + json[i].buttPhone + "</option>";  
	                                }  
	                            }  
	                            else {  
	                                str += "<option>" + "暂无数据" + "</option>";  
	                                str2 += "<option>" + "暂无数据" + "</option>";  
	                                str3 += "<option>" + "暂无数据" + "</option>";  
	                                str4 += "<option>" + "暂无数据" + "</option>";  
	                            }  
	                        }  
	                    });  
	                    break;  
		            }  
		        } 
		        //获取下面下拉框username对象  
		        var decisionName = $("select#decisionName");     
		        decisionName.append(str);//渲染option  
		        //获取下面下拉框selectNum_username对象  
		        var decisionName2 = $("select#" + selectNum + "_decisionName");     
		        decisionName2.append(str);//渲染option 
		        
		        
		        var decisionPhone = $("select#decisionPhone");     
		        decisionPhone.append(str2);//渲染option  
		        //获取下面下拉框selectNum_username对象  
		        var decisionPhone2 = $("select#" + selectNum + "_decisionPhone");     
		        decisionPhone2.append(str2);//渲染option 
		        
		        
		        var buttName = $("select#buttName");     
		        buttName.append(str3);//渲染option  
		        //获取下面下拉框selectNum_username对象  
		        var buttName2 = $("select#" + selectNum + "_buttName");     
		        buttName2.append(str3);//渲染option 
		        
		        
		        var buttPhone = $("select#buttPhone");     
		        buttPhone.append(str4);//渲染option  
		        //获取下面下拉框selectNum_username对象  
		        var buttPhone2 = $("select#" + selectNum + "_buttPhone");     
		        buttPhone2.append(str4);//渲染option 
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