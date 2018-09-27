<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Panelo - Free Admin Template</title>
<link rel="stylesheet" type="text/css" href="css/styletable.css" />
<!-- jQuery file -->
<script src="js/jquery.min.js"></script>
<script src="js/jquery.tabify.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
var $ = jQuery.noConflict();
$(function() {
$('#tabsmenu').tabify();
$(".toggle_container").hide(); 
$(".trigger").click(function(){
	$(this).toggleClass("active").next().slideToggle("slow");
	return false;
});
});
</script>
</head>
<body>
<div>
<table id="rounded-corner">
    <thead>
    	<tr>
        	<th></th>
            <th>用户名</th>
            <th>姓名</th>
            <th>联系方式</th>
            <th>通讯地址</th>
            <th>邮箱</th>
            <th>用户类型</th>
            <th>修改</th>
            <th>删除</th>
        </tr>
    </thead>

    <tbody>
    	<tr class="odd">
        	<td><input type="checkbox" name="" /></td>
            <td>Box Software</td>
            <td>Lorem ipsum dolor sit amet consectetur</td>
            <td>45$</td>
            <td>10/04/2011</td>
            <td>web design</td>
            <td>Alex</td>
            <td><a href="#"><img src="images/edit.png" alt="" title="" border="0" /></a></td>
            <td><a href="#"><img src="images/trash.gif" alt="" title="" border="0" /></a></td>
        </tr>
    	<tr class="odd">
        	<td><input type="checkbox" name="" /></td>
            <td>Trial Software</td>
            <td>Lorem ipsum dolor sit amet consectetur</td>
            <td>155$</td>
            <td>12/04/2011</td>
            <td>web design</td>
            <td>Carrina</td>
            <td><a href="#"><img src="images/edit.png" alt="" title="" border="0" /></a></td>
            <td><a href="#"><img src="images/trash.gif" alt="" title="" border="0" /></a></td>
        </tr>
    	<tr class="odd">
        	<td><input type="checkbox" name="" /></td>
            <td>Hosting Pack</td>
            <td>Lorem ipsum dolor sit amet consectetur</td>
            <td>45$</td>
            <td>10/04/2011</td>
            <td>web design</td>
            <td>Alex</td>
            <td><a href="#"><img src="images/edit.png" alt="" title="" border="0" /></a></td>
            <td><a href="#"><img src="images/trash.gif" alt="" title="" border="0" /></a></td
        ></tr>
    	<tr class="odd">
        	<td><input type="checkbox" name="" /></td>
            <td>Duo Software</td>
            <td>Lorem ipsum dolor sit amet consectetur</td>
            <td>745$</td>
            <td>10/04/2011</td>
            <td>web design</td>
            <td>Alex</td>
            <td><a href="#"><img src="images/edit.png" alt="" title="" border="0" /></a></td>
            <td><a href="#"><img src="images/trash.gif" alt="" title="" border="0" /></a></td
        ></tr>
    	<tr class="odd">
        	<td><input type="checkbox" name="" /></td>
            <td>Alavasti Software</td>
            <td>Lorem ipsum dolor sit amet consectetur</td>
            <td>45$</td>
            <td>10/04/2011</td>
            <td>web design</td>
            <td>John</td>
            <td><a href="#"><img src="images/edit.png" alt="" title="" border="0" /></a></td>
            <td><a href="#"><img src="images/trash.gif" alt="" title="" border="0" /></a></td
        ></tr>
    	<tr class="odd">
        	<td><input type="checkbox" name="" /></td>
            <td>Box Software</td>
            <td>Lorem ipsum dolor sit amet consectetur</td>
            <td>45$</td>
            <td>10/04/2011</td>
            <td>web design</td>
            <td>Doe</td>
            <td><a href="#"><img src="images/edit.png" alt="" title="" border="0" /></a></td>
            <td><a href="#"><img src="images/trash.gif" alt="" title="" border="0" /></a></td
        ></tr>
  
        
    </tbody>
</table>
</div>
</body>
</html>