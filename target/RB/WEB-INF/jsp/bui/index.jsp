<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>bui</title>
<link href="lib/bui/css/bs3/dpl.css" rel="stylesheet">
<link href="lib/bui/css/bs3/bui.css" rel="stylesheet">
<link rel="stylesheet" href="lib/bui/css/layout-min.css">
<style>
.back{
   background:rgb(6,131,177);
}
</style>
</head>
<body>
  <div class="demo-content">
<script src="lib/jquery/jquery.js"></script>
<script src="lib/bui/sea.js"></script>
<script src="lib/bui/config.js" data="true"></script>
<script type="text/javascript">
 BUI.use(['bui/layout','bui/tab','bui/data','bui/tree'],function (Layout,Tab,Data,Tree) {
    var 
        nodes = [ 
          {text : '1',id : '1',children: [{text : '11',id : '11',href:'11.html'}]},
          {text : '2',id : '2',expanded : true,children : [
              {text : '21',id : '21',children : [{text : '211',id : '211',href:'211.html'},{text : '212',id : '212',href:'212.html'}]},
              {text : '22',id : '22',href:'22.html'}
          ]},
          {text : '3',id : '3',href:'3.html'},
          {text : '4',id : '4',href:'4.html'}
        ];
    
    var items = [
                          {text:'基本结构',
                              items:[
                              {
                                text : '上部导航',
                                href:'1.php'
                              },
                              {
                                id:'ss1',
                                text:'左边导航',
                                href:'2.php'
                              }
                            ]},
                            {
                              text:'常用页面',
                              collapsed:true,
                              items:[
                                {
                                  text : '上部导航',
                                  href:'1.php'
                                },{
                                  text:'左边导航',
                                  href:'2.php'
                                }
                              ]
                            }
                          ];
      var control = new Layout.Viewport({
          width:600,
          height:500,
          elCls : 'ext-border-layout',
          children : [{
            elCls : 'back',
            xclass : 'controller',
            content : "<img src='lib/images/zui/logo.png'>"
          },{
            xclass : 'controller',
            layout : {
              region : 'south',
              title : 'south',
              fit : 'height',
              height : 50
            },
            content : '底部信息'
          },
          {
            layout : {
              region : 'west',
              fit : 'both', //height,width,both,none
              title : '目录',
              collapsable : true,
              width : 180,
            },
            xclass : 'side-menu',//生成menu
            id : 'mymenu',
            items : items
          },{
            xclass : 'nav-tab', //Grid
            layout : {
              region : 'center',
              title : "123s",
              fit : 'both'
            },
            id : 'tab'
          }],
          plugins : [Layout.Border]
      });
 
      control.render();
      var tab = control.getChild('tab');//通过id获取
      /* var tree = control.getChild('mytree',true);  //级联查找树节点
 
      tree.on('itemclick',function (ev) {
        var node = ev.item,
          id = node.id,
          text = node.text,
          href = node.href;
        tab.addTab({
          title : text,
          href : href,
          id : id
        });
      }); */
    });
</script>
</body>
</html>