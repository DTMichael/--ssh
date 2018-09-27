<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<body>
<s:form action="LoginAction" method="post" theme="simple"> 
用户名：<s:textfield name="username" size="8"/><br>
密码：<s:textfield name="password" size="8"/><br>
<sx:submit value="登录" method="login" targets="login"></sx:submit>

</s:form>
<button onclick="tz()">注册</button>
<script>
function tz(){
window.location.href='register.jsp';
}
</script>
</body>
</html>