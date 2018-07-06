<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>使用 layDate 独立版</title>
</head>
<body>
<input type="text" id="test1">
<script src="lib/js/laydate/laydate.js"></script> <!-- 改成你的路径 -->
<script>
//执行一个laydate实例
laydate.render({
  elem: '#test1',
  type: 'datetime'//指定元素
});
</script>
</body>
</html>