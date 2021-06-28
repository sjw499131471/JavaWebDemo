<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<!-- 1.exception: java . lang.Throwable 的实例，该实例代表其他页面中的异常和错误。
	只有当页面是错误处理页面，即编译指令page 的isErrorPage 属性为true 时，该对象才可以使用。
	即可用catch那段代码。常用的方法有getMessageO和printStackTraceO等。 -->
	
<!-- 2.page: 代表该页面本身，通常没有太大用处。也就是Servlet 中的this ， 其类型就是生成的
	Servlet 类，能用page 的地方就可用this 。 -->
	
<%//3.Cookie
	String reqParam = request.getParameter("name");
	Cookie cookie = new Cookie("name",reqParam);//新建Cookie
	cookie.setMaxAge(24*3600);//生命：24小时
	response.addCookie(cookie);
	//默认情况下. Cookie 值不允许出现中文字符.
	//借助于java.net.URLEncoder 先对中文字符串进行编码，将编码后的结果设为Cookie 值。当
	//程序要读取Cookie 时，则应该先读取，然后使用java.net.URLDecoder对其进行解码。
%>
</body>
</html>