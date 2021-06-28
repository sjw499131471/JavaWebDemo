<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>七个动作</title>
</head>
<body>
<!-- 1.转发 -->
<jsp:forward page="targetPage.jsp">
	<jsp:param value="haha" name="param"/>
</jsp:forward>

<!-- 2.动态嵌入页面
	静态导入和动态导入有如下三点区别:
	1.静态导入是将被导入页面的代码完全融入，两个页面融合成一个整体Servlet; 而动态导入则
	在Servlet 中使用include 方法来引入被导入页面的内容。
	2.静态导入时被导入页面的编译指令会起作用; 而动态导入时被导入页面的编译指令则失去作
	用，只是插入被导入页面的body 内容。
	3.动态包含还可以增加额外的参数。
 -->
 
 <!-- forward 拿目标页面代替原有页面，而include 则拿目标页面插入原有页面. -->

</body>
</html>