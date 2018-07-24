<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<!-- <head>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<title>jqGrid单元格编辑select联动示例</title>
<link href="css/ui.jqgrid.css" rel="stylesheet" type="text/css" />
<link href="css/jquery-ui-1.8.2.custom.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.4.2.min.js" type="text/javascript"> </script>
<script src="js/i18n/grid.locale-en.js" type="text/javascript"></script>
<script src="js/jquery.jqGrid.min.js" type="text/javascript"> </script>
</head>  -->
<body>
<table id="grid"></table>
<script type="text/javascript">
     $(function () {
         function myelem(value, options) {//生成2级联动的select对象方法
             //options对象为colModel配置中的editoptinos对象，并且增加了id和name2个选项，id格式为此数据行id_“name配置的值”，具体看最后的图片
             var rowid = options.id.split('_')[0]; //获取此行数据id，以便调用getRowData方法获取数据行
             var rec = $('#grid').jqGrid('getRowData', rowid); //获取此行对应的数据
             var url = options.url + '?provid=' + rec.provid; //获取加载select的url配置，并且加上记录中的省id
             //获取联动select数据的ajax需要设置为同步，异步要处理的步骤比较多，如ajax未加载完又点击了其他单元格之类的，要还原之前的编辑状态
             var s = '<select><option value="">NaN</option></select>';
             $.ajax({
                 async: false,
                 url: url,
                 dataType: 'html',
                 success: function (data) {
                     s = data;
                 },
                 error: function (xhr) { alert('加载市数据出错！'); }
             });
             //需要手动设置option的选中状态
             s = $(s);
             s.find('option[value=' + rec.cityid + ']').attr('selected', true);
             return s;
         }
         function myvalue(elem, operation, value) {
             if (operation === 'get') {
                 var rowid = elem.attr('id').split('_')[0]; //获取此行数据id，以便调用getRowData方法获取数据行
                 $('#grid').jqGrid('setRowData', rowid, { cityid: elem.val() }); //需要同时更新此数据行中的cityid
                 return elem.find('option:selected').text(); //返回选中的option的text，而不是value
             } else if (operation === 'set') {
                 $('input', elem).val(value);
             }
         }
         jQuery("#grid").jqGrid({
             url: 'data.txt',
             cellEdit: true,
             cellsubmit: 'clientArray',
             datatype: "json",
             jsonReader: {
                 repeatitems: false,
                 root: "list"
             },
             height: 150,
             caption: 'jqGrid单元格编辑select联动示例',
             colNames: ['ID', '省', '市', 'provid', 'cityid'],
             colModel: [
                   { name: 'id' },
                   { name: 'provname', editable: true, edittype: 'select', editoptions: { dataUrl: 'prov.txt'} },
                   { name: 'cityname', editable: true, edittype: 'custom', editoptions: { custom_element: myelem, custom_value: myvalue, url: 'city.asp'} },
             //需要添加这2个隐藏列，要不getRowData获取不到附加的行数据，只能获取到colModel中配置的
                   {name: 'provid', hidden: true },
                   { name: 'cityid', hidden: true }
               ]
         });
     });
     
 </script> 
</body> 
</html>