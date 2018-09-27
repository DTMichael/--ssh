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
<script src="js/jquery-3.1.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
<script src="js/bootstrap.js"></script>

</head>
<body>

<!-- 模态框 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">员工添加</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal">
		  <div class="form-group">
		    <label class="col-sm-2 control-label">empName</label>
		    <div class="col-sm-10">
		      <input type="text" name="empName" class="form-control" id="empName_add_input" placeholder="empName">
		      <span class="help-block"></span>
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">email</label>
		    <div class="col-sm-10">
		      <input type="text" name="email" class="form-control" id="email_add_input" placeholder="email@atguigu.com">
		      <span class="help-block"></span>
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">gender</label>
		    <div class="col-sm-10">
		      <label class="radio-inline">
				  <input type="radio" name="gender" id="gender1_add_input" value="M" checked="checked"> 男
				</label>
				<label class="radio-inline">
				  <input type="radio" name="gender" id="gender2_add_input" value="F"> 女
				</label>
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">deptName</label>
		    <div class="col-sm-4">
		    	<!-- 部门提交部门id即可 -->
		      <select class="form-control" name="dId">
		      </select>
		    </div>
		  </div>
		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" id="save_user_btn">保存</button>
      </div>
    </div>
  </div>
</div>

<!-- 模态框结束 -->
<div>
<div class="container">
<div class="row">
  <div class="col-md-4 col-md-offset-12">
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">新增</button>
  <button type="button" class="btn btn-danger">删除</button>
  
  
  </div>
</div>
</div>
<table id="rounded-corner">
    <thead>
    	<tr>
        	<th></th>
            <th>用户名</th>
            <th>姓名</th>
            <th>联系方式</th>
            <th>通讯地址</th>
            <th>邮箱</th>
            <th>权限</th>
            <th>用户类型</th>
            <th>修改</th>
            <th>删除</th>
        </tr>
    </thead>

    <tbody>
<c:forEach items="${lst }" var="item">
    	<tr class="odd" dblclick="show()">
        	<td><input type="checkbox" name="" /></td>
            <td id="username">${item.username }</td>
            <td>${item.name }</td>
            <td>${item.telephone }</td>
            <td>${item.address }</td>
            <td>${item.email }</td>
            <td><div class="dropdown">
  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    人员权限查看
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
    <li><a href="#">增加需求:${item.cpow }</a></li><!-- 增 -->
    <li><a href="#">删除需求:${item.rpow }</a></li><!-- 查 -->
    <li><a href="#">修改需求:${item.upow }</a></li><!-- 改 -->	
    <li><a href="#">查询需求:${item.dpow }</a></li><!-- 删 -->
  </ul>
</div></td>
            <td>${item.type }</td>
            <td><img id="edit" src="images/edit.png" /></td>
            <td><a href="#"><img src="images/trash.gif" alt="" title="" border="0" /></a></td>
        </tr>
    	
  
        </c:forEach>
    </tbody>
</table>
</div>
<script>
<script>
function show(){
document.getElementById("div").style.display="";
//alert(document.getElementById("div").style.display)
}
function hidden(){
document.getElementById("div").style.display="none";
//alert(document.getElementById("div").style.display)
}
</script>
<script type="text/javascript">
$(document).ready(function(){
  $(".odd").dblclick(function(){
  $("#div").toggle();
  });
});
$("#save_user_btn").click(function(){
alert($("#myModal form").serialize());
});

</script>


<div id="div" style="display: none" onMouseout="hidden();">
王八蛋哦
</div>

</body>
</html>