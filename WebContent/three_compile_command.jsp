<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>jsp三个编译指令</title>
</head>
<body>
<!-- page : 该指令是针对当前页面的指令。作用是jsp文件正确的生成java文件。
	include: 用于指定包含另一个页面。
	taglib: 用于定义和访问自定义标签。
 -->
<!-- page标签参数
 1.extends属性定义此JSP页面产生的Servlet是继承自哪个父类(默认org.apache.jasper.runtime.HttpJspBase)。
 	请特别谨慎使用这一功能，因为，服务器也许已经定义了一个。
 	JSP规范对不完全理解其隐意的情况下使用此属性提出警告。
 	 -->

<!-- 2.pageEncoding是jsp文件本身的编码 
	contentType的charset是指服务器发送给客户端时的内容编码  -->
	
<!-- 使用include 指令，可以将一个外部文件嵌入到当前JSP 文件中，同时解析这个页面中的JSP 语句
	(如果有的话)。这是个静态的include吾句，它会把目标页面的其他编译指令也包含进来，但动态include
	则不会。
	include 指令只会在jsp编译成servlet时起作用，因此如果被嵌入的文件经常需要改变，建议使用气<jsp:include>（不在编译时处理，而在运行时处理）操作指令，因为它是动态的include 语句。
	include 既可以包含静态的文本，也可以包含动态的JSP 页面。静态的include 编译指令会将被包
	含的页丽加入本页面，融合成一个页面，因此被包含页面甚至不需要是一个完整的页面。 -->
</body>
</html>