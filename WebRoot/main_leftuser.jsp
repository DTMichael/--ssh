<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main_left.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/leftmenu.css">
	

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript">


$(document).ready(function() {
	var menuParent = $('.menu > .ListTitlePanel > div');//获取menu下的父层的DIV
	var menuList = $('.menuList');
	$('.menu > .menuParent > .ListTitlePanel > .ListTitle').each(function(i) {//获取列表的大标题并遍历
		$(this).click(function(){
			if($(menuList[i]).css('display') == 'none'){
				$(menuList[i]).slideDown(300);
			}
			else{
				$(menuList[i]).slideUp(300);
			}
		});
	});
});
</script>

  </head>
  
  
  <!--
  <a href="alter.jsp" target="_parent">修改密码</a><br>
  <a href="tianbao.jsp" target="main_right">需求填报</a><br>
  <a href="servlet/XuqiuServlet?method=chakan" target="main_right">查看需求</a><br>
  <a href="login.html" target="_parent">退出登录</a>
  
  -->
  <body style="margin-top: -30px;">

<div class="leftMenu">
	<div class="menu">
		<div class="menuParent">
			<div class="ListTitlePanel">
				<div class="ListTitle">
					<strong>管理员管理</strong>
					<div class="leftbgbt"> </div>
				</div>
			</div>
			<div class="menuList">
			
				<div> <a  target="main_right" href="${pageContext.request.contextPath}/tianbao.jsp">需求征集</a></div>
			
				<div> <a target="main_right" href="ZdxuqiuAction!showZdxuqiuList.action">浏览需求</a> </div>
				<!--  
				<div> <a  target="main_right" href="${pageContext.request.contextPath}/admin/xuqiuServlet?method=Shenhe">需求审核</a> </div>
				-->
				<div> <a  target="main_right" href="${pageContext.request.contextPath}/retrievaluser.jsp ">综合检索</a> </div>

			</div>
			<div class="ListTitlePanel">
			<div class="ListTitle">
					<strong>用户管理</strong>
					<div class="leftbgbt"> </div>
				</div>
				</div>
				<div class="menuList">
				<!--  
				<div> <a  target="_parent" href="${pageContext.request.contextPath}/register.jsp">用户注册</a> </div>
				-->
				<div> <a  target="_parent" href="${pageContext.request.contextPath}/alter.jsp">修改密码</a> </div>
				<div> <a  target="_parent" href="${pageContext.request.contextPath}/login.html">退出登录</a> </div>
			</div>
		</div>
		
	</div>
</div>
<div style="text-align:center;">
</div>
</body>

  
</html>
