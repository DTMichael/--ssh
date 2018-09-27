<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

 
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

     <style type="text/css">
          .div-inline{
             display: inline;
          }
          .div1{
             float: left;
          }
     </style>

     <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>


     
<style type="text/css">
body {
background-color:#eee7f9;
}
.shuxin{
color:blue;
font-size:24;
font-family:"黑体";
}
</style>

<script type="text/javascript">
function Pass()
{
alert("审核成功！");
window.history.go(-1);
};
function Return()
{
alert("退回成功！");
window.history.go(-1);
};
function Comeback()
{
window.history.go(-2);
}
</script>
  </head>
 


  <body><!-- EL语句显示详细信息 -->
     <div style="text-align:center;">
          <h1>河北省重大技术需求征集表</h1>
     </div>    
     <div style="text-align:center;">
     
         
            <table align="center"  border="1" width="1400" bgcolor="#eee7f9">
               <tr>
                  <td ><span class="shuxin">机构全称:</span>
                  &nbsp;&nbsp;&nbsp;&nbsp;${xuqiu.organizationname }
                  </td>	  
                  <td><span class="shuxin">归口管理部门:</span>
                  &nbsp;&nbsp;&nbsp;&nbsp;${xuqiu.admindepartment }
                  </td>              
               </tr>
               <tr>
                  <td><span class="shuxin">通讯地址:</span>
                   &nbsp;&nbsp;&nbsp;&nbsp;${xuqiu.address }
                  </td>	   
                  <td><span class="shuxin">所在地域:</span>
                   &nbsp;&nbsp;&nbsp;&nbsp;${xuqiu.location }
                  </td>             
               </tr>
               <tr>
                  <td><span class="shuxin">网址:</span>
                   &nbsp;&nbsp;&nbsp;&nbsp;${xuqiu.website }
                  <td><span class="shuxin">电子信箱</span>
                   &nbsp;&nbsp;&nbsp;&nbsp;${xuqiu.email }
               </tr> 
               <tr>
                  <td><span class="shuxin">法人代表:</span> &nbsp;&nbsp;&nbsp;&nbsp;${xuqiu.legalperson }
                  <td><span class="shuxin">邮政编码:</span>&nbsp;&nbsp;&nbsp;&nbsp;${xuqiu.zipcode }
               </tr>
               <tr>
                  <td><span class="shuxin">联系人:</span>&nbsp;&nbsp;&nbsp;&nbsp;${xuqiu.contacts }
                  <td>
                      <table>
                         <tr>
                             <td><span class="shuxin">电话:</span>
                             <td>&nbsp;&nbsp;&nbsp;&nbsp;${xuqiu.telephone }
                              &nbsp;&nbsp;<span class="shuxin">手机电话:</span>&nbsp;&nbsp;&nbsp;&nbsp;${xuqiu.phone }                          
                         </tr>
                         <tr>
                             <td><span class="shuxin">传真:</span>
                             <td>&nbsp;&nbsp;&nbsp;&nbsp;${xuqiu.fax }
                         </tr>
                      </table>                                             
                  </td>              
               </tr>
               <tr>
                  <td><span class="shuxin">机构属性:</span></td>
                  <td>
                  ${xuqiu.institutionalattributes }
                      
                     
                      
                  </td>
               </tr>  
               <tr>
                  <td><span class="shuxin">机构简介:</span></td>
                  <td>                
                 ${xuqiu.institutionalintroduction }
	             </td>
               </tr>                                                                       
               <tr>
                  <td><span class="shuxin">技术需求名称:</span>
                  &nbsp;&nbsp;&nbsp;&nbsp;${xuqiu.technicalname }
                  </td>	
                  <td><span class="shuxin">需求时限:</span>
                  &nbsp;&nbsp;&nbsp;&nbsp;${xuqiu.startdemandtime }&nbsp;&nbsp;&nbsp;&nbsp;<span class="shuxin">年至:</span>&nbsp;&nbsp;&nbsp;&nbsp;${xuqiu.enddemandtime }<!-- 2018 1 5 22 H 31 M -->
                  </td>                
               </tr>
               <tr>
                 <td><span class="shuxin">重大技术需求概述:</span></td>                  
                 <td>                
               ${xuqiu.technicalsummary }
	             </td>
	           </tr>
	           
	           <tr>
	           <td>
	        <span class="shuxin">关键字(1-5个) 五个文本框（只能逐个顺序录入）</span>
	           </td>
	           <td>
	           <!--  
	              <textarea id="keyword" name="keyword"  rows="4" cols="50" placeholder="重大需求概述（限三个词）">重大需求概述（限三个词）
	           </textarea>
	           -->
	           
	           &nbsp;&nbsp;&nbsp;&nbsp;${xuqiu.key1 }
	           &nbsp;&nbsp;&nbsp;&nbsp;${xuqiu.key2 }
	           &nbsp;&nbsp;&nbsp;&nbsp;${xuqiu.key3 }
	           &nbsp;&nbsp;&nbsp;&nbsp;${xuqiu.key4 }
	           &nbsp;&nbsp;&nbsp;&nbsp;${xuqiu.key5 }
	           </td>
	           
	           </tr>
	           
	           <tr><!-- 2018 1 5 22 H 31 M -->
	          <td> <span class="shuxin">拟投入资金总额</span></td>
	           <td>
	          ${xuqiu.money } &nbsp;&nbsp;&nbsp;&nbsp;万元
	           </td>
	           </tr>
	           
	           
	           	            <tr>
	                <td>
		                       <span class="shuxin">技术需求合作模式:</span> 
		            <td>		                                            
		               ${xuqiu.cooperationmodel }
		               
		            </td>
	            </tr>
	           
	           <tr>
	           
	           <td><span class="shuxin">合作意向单位:</span>
	           <td>
	           ${xuqiu.cooperativeunit }
	           </td>
	           </tr>
	           
             <tr>
                <td>
                                                   <span class="shuxin">研究类型: </span>                          
                <td>                                                 
         			${xuqiu.researchtype }
         			
                </td>	              
             </tr>		             
	            <tr>
	           
	           <td><span class="shuxin">学科分类:</span>
	           <td>
	           ${xuqiu.subjectclass }
	           </td>
	           </tr>		  		          
	            <tr  id="techfield">
	                <td> <span class="shuxin">需求技术所属领域:  </span>    
	                
	                <td>                                        
	                   &nbsp;&nbsp;&nbsp;&nbsp;${xuqiu.field }
	                         
	                </td>
	            </tr>
	            <tr  id="techsector">
	                <td colspan="2"><span class="shuxin">需求技术应用行业 :</span>
	                   
	                 &nbsp;&nbsp;&nbsp;&nbsp;${xuqiu.industry }
           
	            </tr> 	                                	             
           	             
	           
          </table>	
     		       
            <button  id="add1" onclick="Pass()">审核通过</button>
            <button  id="add2" onclick="Return()">审核退回</button>
            <button id="add3" onclick="Comeback()">返回</button>	         
	      
      </div>       
  </body>
</html>
