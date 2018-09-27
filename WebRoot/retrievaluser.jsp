<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'retrieval.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/bootstrap.css">
  <script src="js/jquery-2.1.4.min.js"></script>


  </head>
    
  <body>
<script type="text/javascript">
$(document).ready(function(){ 
  $("#add2").click(function(){
                       var i=$('div').length;
                       if(i==5)
                       {
                       	alert("条件最大数不超过4个");
                       	return false;
                       }
                       
                       $("<div id='adddiv'>"
                       +"<select name='sel'> "
                       +"<option value='null'>查询条件</option>"
                       +"<option value='organizationname'>机构全称</option>"
                       +"<option value='admindepartment'>归口管理单位</option>"
                       +"<option value='location'>所在地域</option>"
                       +"<option value='legalperson'>法人代表</option>"
                       +"<option value='contacts'>联系人</option>"
                       +"<option value='institutionalattributes'>机构属性</option>"
                       +"<option value='technicalname'>技术需求名称</option>"
                       +"<option value='money'>拟投入资金总额</option>"
                       +"<option value='cooperationmodel'>技术需求合作模式</option>"
                       +"<option value='researchtype'>研究类型</option>"
                       +"<option value='subjectclass'>学科分类</option>"
                       +"<option value='field'>需求技术所属领域</option>"
                       +"<option value='industry'>需求技术应用行业</option></select>&nbsp;"
                       +"输入查询的关键字<input type='text' name='selcondition' size='20'>"
                       +"<button id='moveout' type='button' onclick='$(this).parent().remove();'>移除</button></div>"
	
	
	
	).insertAfter("#tijiao");
	
	
	
	
	
})
});
</script>

	
<center>

<div id="container">
	<h3>增加查询条件</h3>
	<p><button class="btn btn-primary"  id="add2" >增加查询条件</button>
<form action="servlet/XuqiuServlet?method=Zongheuser" method="post">
	
		
			
			<button class="btn btn-primary" id="tijiao" onClick="submitForm()">提交检索</button>

	</form>		
</div>

	

</center>

  </body>
</html>
