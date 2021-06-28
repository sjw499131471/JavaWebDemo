<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<!-- Java Servlet的最大缺点就在于没有把网站的逻辑和页面的输出分开，导致整个
	Servlet代码混乱不堪。为了解决Java Servlet的这种缺点，S U N推出了Java Server Pages—J S P。
	JSP主要用于动态生成页面 -->
<%--1.声明 --%>
<%!//java声明代码 ,相当于直接在类内写代码。写全局变量（类的成员变量）、方法
	public int count;
%>

<%--2.输出 --%>
<%=count++ %>

<%--3.打开多个浏览器，甚至可以在不同的机器上打开浏览器来刷新该页面，将发现所有客户端访问的
	count 值是连续的，即所有客户端共享了同一个count 变量。这是因为:
	JSP 页面会编译成一个Servlet类，每个Servlet 在容器中只有一个实例: 在JSP 中声明的变量是成员变量，
	成员变量只在创建实例时初始化，该变量的值将一直保存， 直到实例销毁。 --%>

<%--java脚本:在方法内写代码 --%>
<%for(int i = 0 ; i < 10; i++){ %>
	haha
<%} %>
</body>
</html>