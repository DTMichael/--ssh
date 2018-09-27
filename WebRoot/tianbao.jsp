<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  <script type="text/javascript">
         function orjichu(value)
       {
          if(value=="基础研究")
          {               
                 $("#subjectclass").show();
                 $("#techfield").hide();
                 $("#techsector").hide();                           
          }
          else
          {            

                 $("#subjectclass").hide();
                 $("#techfield").show();
                 $("#techsector").show();         
          }
       }
       

  </script>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

     <style type="text/css">
          .div-inline{
             display: inline;
          }
          .div1{
             float: left;
          }
     </style>
     <script type="text/javascript" src="js/yanzheng.js"></script>
     <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
     <script type="text/javascript" src="js/study.js"></script>
     <script type="text/javascript" src="js/industry.js"></script>
     
<style type="text/css">
body {
background-color:#eee7f9;
}
</style>
  </head>
 

  <script type="text/javascript">
      $(document).ready(function(){
           
      });
  </script>
  <body>
     <div style="text-align:center;">
          <h1>河北省重大技术需求征集表</h1>
     </div>    
     <div style="text-align:center;">
     
         <s:form action="ZdxuqiuAction" enctype="multipart/form-data" id="checkForm" method="post">          
            <table align="center"  border="1" width="1400" bgcolor="#eee7f9">
               <tr>
                  <td>*机构全称
                  <input id="organizationname" type="text" size="50" name="organizationname"></td>	  
                  <td>归口管理部门<!-- 2018 1 5 22 H 31 M -->
                  <input id="admindepartment" type="text" size="50" name="admindepartment">
                  </td>              
               </tr>
               <tr>
                  <td>*通讯地址
                  <input id="address1" type="text" size="50" name="address"></td>	   
                  <td>*所在地域
                  <input id="location" type="text" size="50" name="location"><!-- 2018 1 5 22 H 31 M -->
                  </td>             
               </tr>
               <tr>
                  <td>网址<input id="Website" type="url" name="website" autofocus="autofocus">
                  <td>电子信箱<input type="email" id="email" name="email" onblur="checkemail(this.value,this.id)">
               </tr> 
               <tr>
                  <td>法人代表<input type="text" id="legalname" name="legalperson" onblur="checkName(this.value,this.id)">
                  <td>邮政编码<input id="postcode" type="text" name="zipcode">
               </tr>
               <tr>
                  <td>联系人<input type="text" id="contactperson" name="contacts" onblur="checkName(this.value,this.id)"></td>
                  <td>
                      <table>
                         <tr>
                             <td>电话
                             <td><input id="telephone" name="telephone" onblur="checktelephone(this.value,this.id);blu(this.id)" onfocus="foc(this.value,this.id)"  type="text" value="固定电话">
                              &nbsp;&nbsp;<input id="mobile" name="phone" onblur="checkPhone(this.value,this.id);blu(this.id)" onfocus="foc(this.value,this.id)" type="text" value="手机电话">                           
                         </tr>
                         <tr>
                             <td>传真
                             <td><input type="text" name="fax">
                         </tr>
                      </table>                                             
                  </td>              
               </tr>
               <tr>
                  <td>机构属性</td>
                  <td>
                      <input id="unit" name="institutionalattributes" type="radio" value="企业" checked onchange="checkunit(this.value)">企业
                      <input id="unit" name="institutionalattributes" type="radio" value="高等院校" onchange="checkunit(this.value)">高等院校
                      <input id="unit" name="institutionalattributes" type="radio" value="研究机构" onchange="checkunit(this.value)">研究机构
                      <input id="unit" name="institutionalattributes" type="radio" value="其他" onchange="checkunit(this.value)">其他
                      
                  </td>
               </tr>  
               <tr>
                  <td>机构简介</td>
                  <td>                
                 <textarea id="unitbrief" name="institutionalintroduction" onblur="blu(this.id,this.value)" onfocus="foc(this.value,this.id)" onpropertychange="checkLength(this,200);" oninput="checkLength(this,200);" placeholder="(单位基本情况，研究基础等，限200字)" rows="6" cols="50">
(单位基本情况，研究基础等，限200字)
	               </textarea>
	             </td>
               </tr>                                                                       
               <tr>
                  <td>技术需求名称
                  <input type="text" name="technicalname" size="50"></td>	
                  <td>*需求时限
                  <input id="startdemandtime" type="text" name="startdemandtime" size="10">年至<input id="enddemandtime" type="text" name="enddemandtime" size="10"><!-- 2018 1 5 22 H 31 M -->
                  </td>                
               </tr>
               <tr>
                 <td>重大技术需求概述</td>                  
                 <td>                
                 <textarea id="demand" name="technicalsummary" onblur="blu(this.id,this.value)" onfocus="foc(this.value,this.id)" onpropertychange="checkLength(this,500);" oninput="checkLength(this,500);" placeholder="(主要内容，技术指标，预期经济和社会效益等，限500字)"	rows="4" cols="50">
(主要内容，技术指标，预期经济和社会效益等，限500字)
	               </textarea>
	             </td>
	           </tr>
	           
	           <tr>
	           <td>
	        *关键字(1-5个) 五个文本框（只能逐个顺序录入）
	           </td>
	           <td>
	           <!--  
	              <textarea id="keyword" name="keyword"  rows="4" cols="50" placeholder="重大需求概述（限三个词）">重大需求概述（限三个词）
	           </textarea>
	           -->
	           
	           <input id=key1 type="text" name="key1" size="5"><!-- 2018 1 5 22 H 31 M -->
	           <input id=key2 type="text" name="key2" size="5">
	           <input id=key3 type="text" name="key3" size="5">
	           <input id=key4 type="text" name="key4" size="5">
	           <input id=key5 type="text" name="key5" size="5">
	           </td>
	           
	           </tr>
	           
	           <tr><!-- 2018 1 5 22 H 31 M -->
	          <td> 拟投入资金总额</td>
	           <td><input id="money" type="text" name="money" size="20">万元</td>
	           </tr>
	           
	           
	           	            <tr>
	                <td>
		                       *技术需求合作模式  
		            <td>		                                            
		               <input type="radio" name="cooperationmodel" value="独立开发" checked>独立开发
		               <input type="radio" name="cooperationmodel" value="技术转让">技术转让		                                                               
		               <input type="radio" name="cooperationmodel" value="技术入股">技术入股
		               <input type="radio" name="cooperationmodel" value="合作开发">合作开发        
		               <input type="radio" name="cooperationmodel" value="其他">其他   
		            </td>
	            </tr>
	           
	           <tr>
	           
	           <td>合作意向单位
	           <td><input id="cooperativeunit" type="text" name="cooperativeunit" size="20">(选填)
	           </td>
	           </tr>
	           
             <tr>
                <td>
                                                   研究类型                           
                <td>                                                 
         			<input type="radio" name="researchtype" value="基础研究" onchange="orjichu(this.value)" checked>基础研究<input type="radio" name="researchtype" value="应用研究" onchange="orjichu(this.value)">应用研究
         			<input type="radio" name="researchtype" value="实验发展" onchange="orjichu(this.value)">实验发展<br>
         			<input type="radio" name="researchtype" value="研究发展与成果应用" onchange="orjichu(this.value)">研究发展与成果应用
         			<input type="radio" name="researchtype" value="技术推广与技术服务" onchange="orjichu(this.value)">技术推广与技术服务
                </td>	              
             </tr>		             
	           <tr id="subjectclass"> <!--  style="display: none;" -->           
	               <td colspan="2">   
	      学科分类：
<select id="1subjectclass" name="subjectclass"></select>
						<select id="2subjectclass" name="subjectclass"></select>
						<select id="3subjectclass" name="subjectclass"></select>


			   <script type="text/javascript">
					studyInit('1subjectclass', '2subjectclass', '3subjectclass');
			   </script>
	               </td>
	            </tr>		  		          
	            <tr style="display: none;" id="techfield">
	                <td> 需求技术所属领域      
	                
	                <td>                                        
	                  <input id="techfield" name="field" type="checkbox" value="电子信息技术">电子信息技术  
	                  <input id="techfield" name="field" type="checkbox" value="光机电一体化">光机电一体化
	                  <input id="techfield" name="field" type="checkbox" value="软件">软件
	                  <input id="techfield" name="field" type="checkbox" value="生物制药技术">生物制药技术<br> 	               
	                  <input id="techfield" name="field" type="checkbox" value="新材料及应用技术" >新材料及应用技术<br>
	                  <input id="techfield" name="field" type="checkbox" value="先进制造技术">先进制造技术
	                  <input id="techfield" name="field" type="checkbox" value="现代农业技术">现代农业技术
	                  <input id="techfield" name="field" type="checkbox" value="新能源与高效节能技术">新能源与高校节能技术
	                  <input id="techfield" name="field" type="checkbox" value="资源与环境保护新技术">资源与环境保护新技术<br>
	                  <input id="techfield" name="field" type="checkbox" value="其他" onchange="checktech(this.value);">其他
	                  <input style="display: none;" name="field" id="hid2" type="text">                            
	                </td>
	            </tr>
	            <tr style="display: none;" id="techsector">
	                <td colspan="2">需求技术应用行业 
	                   
	                 <select name="industry" id="1industryclass" ></select>
	                 <select name="industry" id="2industryclass" ></select>
	                 <select name="industry" id="3industryclass"></select>  
	                 	   <script type="text/javascript">
					industryInit('1industryclass', '2industryclass', '3industryclass');
			   </script>            
	            </tr> 	                                	             
           	             
	           
          </table>	
     		       
            <!--  <input id="sub" type="submit" value="保存并提交">-->
            <s:submit value="保存并提交" method="saveZdxuqiu" theme="simple"></s:submit>
            <input id="res" type="reset" value="重置">	      
	    </s:form>  
      </div>       
  </body>
</html>
