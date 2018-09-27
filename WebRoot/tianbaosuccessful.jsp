<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<script type="text/javascript">
	var time = 4;

	function returnUrlByTime() {

		window.setTimeout('returnUrlByTime()', 1000);

		time = time - 1;

		document.getElementById("layer").innerHTML = time;
	}
</script>
  </head>
  
  <body>
	<b>填报成功<span id="layer">3</span>秒后跳转</b>
	
	<%
		//转向语句
		response.setHeader("Refresh", "3;URL=main_right.jsp");
	%>
  </body>
</html>
