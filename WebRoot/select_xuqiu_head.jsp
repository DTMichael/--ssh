<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>重大需求征集系统</h1>
<form action="${pageContext.request.contextPath}/servlet/XuqiuServlet?method=Inquiry" method="post">
<div id="input_div">
<input type="text" name="tianbaoren" placeholder="输入查询的用户姓名(全名)" size="50">
<input type="submit" value="查询"><br>	
</div>	
</form>
</center>
</body>
</html>