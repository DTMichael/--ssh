<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.model.Zdxuqiu"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head >
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/pop_layer.js"></script>
<script type="text/javascript" src="layer/layer.js"></script>
<meta http-equiv="Contsent-Type" content="text/html; charset=utf-8">
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
	<link rel="stylesheet"type="text/css" href="css/bootstrap.css"/>
	
	<style type="text/css">
	#input_div {
	position:relative;
	left:20%;

	}
	.table-font td
	{
	font-size:21px;
	font-family:宋体;
	}
	</style>
	<style type="text/css">
	table{
	table-layout:fixed;
	{
	table tr td:first-child,table tr td:first-child{
	width:500px;
	}
	</style>

<title>浏览需求</title>
</head>
<body>

<center>
<h1>重大需求征集系统查询表</h1>
</center>
<center>

<s:form action="ZdxuqiuAction" method="post" theme="simple">
<div id="input_div">
<s:textfield name="tianbaoren" placeholder="请输入需要查询的填报人名"/>
<sx:submit value="查询" method="Inquiry" targets="Inquiry"></sx:submit>
</div>	
</s:form>


<c:if test="${pageCount>0 }">
共有${pageCount }页,这是第${pageNo }页。
<c:if test="${pageNo>1  }">
<a href="ZdxuqiuAction!showZdxuqiuList.action?pageNo=1" >第一页</a>
<a href="ZdxuqiuAction!showZdxuqiuList.action?pageNo=${pageNo-1 }" >上一页</a>
</c:if>
<c:if test="${pageNo!=pageCount }">
<a href="ZdxuqiuAction!showZdxuqiuList.action?pageNo=${pageNo+1 }">下一页</a>
<a href="ZdxuqiuAction!showZdxuqiuList.action?pageNo=${pageCount }" >最后一页</a>
</c:if>






<table width="1400" border="2" class="table-font">

<tr>
<td height="50px" align="center" bgcolor="#2894FF">需求名称</td>
<td align="center" bgcolor="#2894FF">法人</td>
<td align="center" bgcolor="#2894FF">联系人</td>
<td align="center" bgcolor="#2894FF">查看详情</td>
<td align="center" bgcolor="#2894FF">审核状态</td>
</tr>
<c:forEach items="${lst }" var="item">
<tr>
<td height="50px" align="center" id="t_name">${item.technicalname }</td>
<td align="center">${item.legalperson }</td>
<td align="center">${item.contacts }</td>
<td align="center"><a target="main_right"  href="ZdxuqiuAction!Detailuser.action?t_name=${item.technicalname }">详情</a></td>
<td align="center"><a>${item.states }</a></td>
  


</tr>
</c:forEach>
</table>
<br>
</c:if>
</center>
 
<script>
$(document).ready(function() {
        $("#Detail").click(function()
        {
        	$.post("servlet/XuqiuServlet",
        	{
        		t_name:$("#t_name").text(),
        		method:"Detail",
        		
        	},
        	function(data,status){
        	alert(data);
        	
        });
    });
    
    });
</script>
<!--
<script>
 function pass(t_name)
{
	$.post("servlet/XuqiuServlet",
        	{
        		t_name:t_name,
        		method:"Pass"
        	},
        	function(data){
        	
        	if(data==1)
        	{
        		alert("审核成功！",function(){window.location.reload();});
        		
        	}
        	else
        	{
        		alert("审核失败！");
        	}
        	
        });
}

function returnd(t_name)
{
	$.post("servlet/XuqiuServlet",
        	{
        		t_name:t_name,
        		method:"Return"
        	},
        	function(data,status){
        	
        	if(data==1)
        	{
        		alert("退回成功！",function(){window.location.reload();});
        		
        	}
        	else
        	{
        		alert("退回失败！");
        	}
        	
        });
}
</script>
-->
</body>
</html>