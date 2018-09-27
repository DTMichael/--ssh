<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改密码</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <center>
  <h1>修改密码</h1>
<s:form action="LoginAction!alter.action" method="post" theme="simple">
用户名：&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield  name="username" size="12"></s:textfield><br>
原始密码：<s:password name="oldpassword" size="12"></s:password><br>
新密码：&nbsp;&nbsp;&nbsp;&nbsp;<s:password   name="password" size="12"></s:password><br>
<input type="submit" value="确认修改">
</s:form>
</center>
  </body>
</html>
