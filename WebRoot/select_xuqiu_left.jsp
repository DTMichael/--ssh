<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/style_select.css"/>

  </head>
  
  <body>
  <ul class="ce">
		  <li> <a>哲学<img class="more" src="images/more.png"/></a> 
          <ul class="er">
          <li class="e_li">
          <a >哲学</a>
          <ul class="thr">
          <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=哲学">哲学 <img class="more1" src="images/more1.png"/></a>
          </li>
                    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=马克思主义哲学">马克思主义哲学 <img class="more1" src="images/more1.png"/></a>
          </li>
                    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=中国哲学">中国哲学 <img class="more1" src="images/more1.png"/></a>
          </li>
                    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=外国哲学">外国哲学 <img class="more1" src="images/more1.png"/></a>
          </li>
          
          			<li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=逻辑学">逻辑学 <img class="more1" src="images/more1.png"/></a>
          </li>
          <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=外国哲学">外国哲学 <img class="more1" src="images/more1.png"/></a>
          </li>
          			<li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=伦理学">伦理学 <img class="more1" src="images/more1.png"/></a>
          </li>
          
         			 <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=美学">美学 <img class="more1" src="images/more1.png"/></a>
          </li>
          
          			<li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=宗教学">宗教学 <img class="more1" src="images/more1.png"/></a>
          </li>
          			<li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=科学技术哲学">科学技术哲学 <img class="more1" src="images/more1.png"/></a>
          </li>
          
          </ul><!--二级ul end-->
          </li>
          </ul><!--一级ul end-->
          </li>
          
		  
		  
		  
		  
		  
		  <li> 
			   <a>经济学<img class="more" src="images/more.png"/></a>
			   <ul class="er">
				<li class="e_li">     
				<a >理论经济学</a>
          <ul class="thr">
          <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=理论经济学">理论经济学 <img class="more1" src="images/more1.png"/></a>
          </li>
                    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=政治经济学">政治经济学 <img class="more1" src="images/more1.png"/></a>
          </li>
                    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=经济思想学">经济思想学 <img class="more1" src="images/more1.png"/></a>
          </li>
                    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=经济史">经济史 <img class="more1" src="images/more1.png"/></a>
          </li>
          
          			<li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=西方经济史">西方经济史 <img class="more1" src="images/more1.png"/></a>
          </li>
          <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=世界经济史">世界经济 <img class="more1" src="images/more1.png"/></a>
          </li>
          			<li>
           <a  target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=人口、资源与环境经济学">人口、资源与环境经济学 <img class="more1" src="images/more1.png"/></a>
          </li>
          
  
          </li>
		  
		  
          
          </ul><!--二级ul end-->
		  </li>
		  </ul>
		  
		<ul class="er">
		 <li class="e_li">     
		 <a >应用经济学</a>
          <ul class="thr">
          <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=国民经济学">国民经济学 <img class="more1" src="images/more1.png"/></a>
          </li>
                    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=应用经济学区域经济学">应用经济学区域经济学 <img class="more1" src="images/more1.png"/></a>
          </li>
                    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=财政学金融学">财政学金融学 <img class="more1" src="images/more1.png"/></a>
          </li>
                    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=产业经济学">产业经济学 <img class="more1" src="images/more1.png"/></a>
          </li>
          
          			<li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=国际贸易学">国际贸易学 <img class="more1" src="images/more1.png"/></a>
          </li>
          <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=劳动经济学">劳动经济学 <img class="more1" src="images/more1.png"/></a>
          </li>
          			<li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=统计学">统计学 <img class="more1" src="images/more1.png"/></a>
          </li>
					<li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=数量经济学">数量经济学 <img class="more1" src="images/more1.png"/></a>
          </li>
					<li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=国防经济学">国防经济学 <img class="more1" src="images/more1.png"/></a>
          </li>
          
  
          </li>
		  
		  
          
          </ul><!--二级ul end-->
		  </li>
		  </ul>
		  
		            <ul class="er">
          <li class="e_li">
          <a >统计学</a>
          <ul class="thr">
          <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=统计学">统计学 <img class="more1" src="images/more1.png"/></a>
          </li>

          
          </ul><!--二级ul end-->
          </li>
          </ul><!--一级ul end-->
          </li>
          
		  
		  
		  
		  
		  
		  <li> 
			   <a>法学<img class="more" src="images/more.png"/></a>
			   <ul class="er">
				<li class="e_li">     
				<a >法学</a>
          <ul class="thr">
          <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=法学">法学 <img class="more1" src="images/more1.png"/></a>
          </li>
                    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=法学理论">法学理论 <img class="more1" src="images/more1.png"/></a>
          </li>
                    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=法律史">法律史 <img class="more1" src="images/more1.png"/></a>
          </li>
                    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=宪法学与行政学">宪法学与行政学 <img class="more1" src="images/more1.png"/></a>
          </li>
          
          			<li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=刑侦学">刑法学 <img class="more1" src="images/more1.png"/></a>
          </li>
          <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=民商法学">民商法学 <img class="more1" src="images/more1.png"/></a>
          </li>
          			<li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=诉讼法学">诉讼法学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=经济法学">经济法学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=环境与资源保护法">环境与资源保护法学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=国际法学">国际法学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=军事法学">军事法学 <img class="more1" src="images/more1.png"/></a>
          </li>
          
  
          </li>
		  
		  
          
          </ul><!--二级ul end-->
		  </ul>
		  
		  			   <ul class="er">
				<li class="e_li">     
				<a >政治学</a>
          <ul class="thr">
          <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=政治学">政治学 <img class="more1" src="images/more1.png"/></a>
          </li>
                    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=政治学理论中外政治制度">政治学理论中外政治制度 <img class="more1" src="images/more1.png"/></a>
          </li>
                    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=科学社会主义与国际共产主义运动">科学社会主义与国际共产主义运动 <img class="more1" src="images/more1.png"/></a>
          </li>
                    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=中共党史">中共党史 <img class="more1" src="images/more1.png"/></a>
          </li>
          
          			<li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=国际政治">国际政治 <img class="more1" src="images/more1.png"/></a>
          </li>
          <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=国际关系">国际关系 <img class="more1" src="images/more1.png"/></a>
          </li>
          			<li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=外交学">外交学 <img class="more1" src="images/more1.png"/></a>
          </li>
          
  
          </li>
		  
		  
          
          </ul><!--二级ul end-->
		  </ul>
		  
		  <ul class="er">
				<li class="e_li">     
				<a >社会学</a>
          <ul class="thr">
          <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=社会学">社会学 <img class="more1" src="images/more1.png"/></a>
          </li>
                    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=人口学">人口学 <img class="more1" src="images/more1.png"/></a>
          </li>
                    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=人类学">人类学 <img class="more1" src="images/more1.png"/></a>
          </li>
                    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=民俗学">民俗学 <img class="more1" src="images/more1.png"/></a>
          </li>
          

          
  
          </li>
          </ul><!--二级ul end-->
		  </ul>
		  
		  
		  		  <ul class="er">
				<li class="e_li">     
				<a >民族学</a>
          <ul class="thr">
          <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=民族学">民族学 <img class="more1" src="images/more1.png"/></a>
          </li>
                    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=马克思主义民族理论与政策">马克思主义民族理论与政策 <img class="more1" src="images/more1.png"/></a>
          </li>
                    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=中国少数民族经济">中国少数民族经济 <img class="more1" src="images/more1.png"/></a>
          </li>
                    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=中国少数民族史">中国少数民族史 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
					<li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=中国少数民族艺术">中国少数名族艺术 <img class="more1" src="images/more1.png"/></a>
          </li>
					
         
          </li>
          </ul><!--二级ul end-->
		  </ul>
		  
		  		  <ul class="er">
				<li class="e_li">     
				<a >马克思主义理论</a>
          <ul class="thr">
          <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=马克思主义理论">马克思主义理论 <img class="more1" src="images/more1.png"/></a>
          </li>
                    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=马克思主义基本理论">马克思主义基本原理 <img class="more1" src="images/more1.png"/></a>
          </li>
                    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=马克思主义发展史">马克思主义发展史 <img class="more1" src="images/more1.png"/></a>
          </li>
                    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=马克思主义中国化研究">马克思主义中国化研究 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=思想政治研究">思想政治教育 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=中国近代史基本研究">中国近现代史基本研究 <img class="more1" src="images/more1.png"/></a>
          </li>
          

          
  
          </li>
          </ul><!--二级ul end-->
		  </ul>
		  
		   <ul class="er">
				<li class="e_li">     
				<a >公安学</a>
          <ul class="thr">
          <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=公安学">公安学 <img class="more1" src="images/more1.png"/></a>
          </li>
                    
          </li>
          </ul><!--二级ul end-->
		  </ul>
		  

		  
		  
		  </li>
						
	
		  
		  
		  
		  <li> <a >教育学 <img class="more" src="images/more.png"/></a> 
		  
		  <ul class="er">
		  <li class="e_li">
		  <a >教育学</a><!--二级-->
		  <ul class="thr">
		  
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=教育学">教育学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=教育学原理">教育学原理 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=课程与教学论">课程与教学论 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=教育史">教育史 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=比较教育学">比较教育学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=学前教育学">学前教育学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		  
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=高等教育学">高等教育学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=成人教育学">成人教育学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=职业技术教育学">职业技术教育学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=特殊教育学">特殊教育学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=教育技术学">教育技术学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=教育法学">教育法学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		  </ul>
		  </li>
		  
		  		  <li class="e_li">
		  <a >心理学</a><!--二级-->
		  <ul class="thr">
		  
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=心理学">心理学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=基础心理学">基础心理学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=发展与教育心理学">发展与教育心理学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=应用心理学">应用信息学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		  
		  
		  </ul>
		  </li>
		  
		    		  <li class="e_li">
		  <a >体育学</a><!--二级-->
		  <ul class="thr">
		  
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=体育学">体育学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=体育人文社会学">体育人文社会学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=运动人体科学">运动人体科学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		  <li>
           <a  target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=体育教育学">体育教育学 <img class="more1" src="images/more1.png"/></a>
          </li>
		    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=民族传统体育学">民族传统体育学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		  
		  
		  </ul>
		  </li>
		  
		  </ul>
		  
		  
		  
		  
		  
		  </li>
		  
		  
		  
		  <li><a>文学 <img class="more" src="images/more.png"/></a> 
		  <ul class="er">
		  
		  <li class="e_li">
		  <a >中国语言学</a>
		  <ul class="thr">
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=中国语言文学">中国语言文学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=文艺学">文艺学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=语言学及应用语言学">语言学及应用语言学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=汉语言文学学">汉语言文学学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=中国古典文献学">中国古典文献学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=中国古代文学">中国古代文学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=中国当代文学">中国现当代文学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=中国少数民族语言学">中国少数民族语言学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=比较文学与世界文学">比较文学与世界文学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  </ul>
		  </li>
		  
		  		  <li class="e_li">
		  <a >外国语言学</a>
		  <ul class="thr">
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=外国语言学">外国语言学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=英语语言文学">英语语言文学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=俄语语言文学">俄语语言文学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=法语语言文学">法语语言文学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=德语语言文学">德语语言文学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=日语语言文学">日语语言文学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=印度语言文学">印度语言文学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=西班牙语言文学">西班牙语言文学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=阿拉伯语言文学">阿拉伯语言文学 <img class="more1" src="images/more1.png"/></a>
          </li>
		    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=欧洲语言文学">欧洲语言文学 <img class="more1" src="images/more1.png"/></a>
          </li>
		    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=亚非语言文学">亚非语言文学 <img class="more1" src="images/more1.png"/></a>
          </li>
		    <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=外国语言学及应用语言学">外国语言学及应用语言学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  </ul>
		  </li>

		  		  <li class="e_li">
		  <a >新闻传播学</a>
		  <ul class="thr">
		  <li>
           <a  target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=新闻传播学">新闻传播学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=新闻学">新闻学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=传播学">传播学 <img class="more1" src="images/more1.png"/></a>
          </li>
		 
		  </ul>
		  </li>
		  </ul>
          </li>		  
		  
		  
		  
		  <li> <a>历史学 <img class="more" src="images/more.png"/> </a>
		  <ul class="er">
		  
		  <li class="e_li">
		  <a >考古学</a>
		  <ul class="thr">
		  <li>
           <a  target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=考古学及博物馆学">考古学及博物馆学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a  target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=考古学">考古学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  </ul>
		  </li>
		  
		   <li class="e_li">
		  <a >中国史</a>
		  <ul class="thr">
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=史学理论及史学史">史学理论及史学史 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=历史文献学（含敦煌学、古文字学">历史文献学（含敦煌学、古文字学<img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=专门史/">专门史 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a  target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=中国古代史">中国古代史 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=中国近代史">中国近代史 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=中国史">中国史 <img class="more1" src="images/more1.png"/></a>
          </li>
		  </ul>
		  </li>
		  
		   <li class="e_li">
		  <a >世界史</a>
		  <ul class="thr">
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=世界史">世界史 <img class="more1" src="images/more1.png"/></a>
          </li>
		  </ul>
		  </li>
		  </ul>
		  
		   </li>
		  
		  
		  <li> <a>理学 <img class="more" src="images/more.png"/></a> 
		  <ul class="er">
		  <li class="e_li">
		  <a >数学</a>
		  <ul class="thr">
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=数学">数学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=基础数学">基础数学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=计算数学">计算数学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=概率论与数理统计">概率论与数理统计 <img class="more1" src="images/more1.png"/></a>
          </li>
		  		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=应用数学">应用数学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=运筹学与控制论">运筹学与控制论 <img class="more1" src="images/more1.png"/></a>
          </li>
		  </ul>
		  </li>
		  
		  <li class="e_li">
		  <a >物理学</a>
		  <ul class="thr">
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=物理学">物理学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=理论物理">理论物理 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=粒子物理与原子物理">粒子物理与原子核物理 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=原子与分子物理">原子与分子物理 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=等离子物理">等离子物理 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=凝聚态物理">凝聚态物理 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=声学">声学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=光学">光学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=无线电物理">无线电物理 <img class="more1" src="images/more1.png"/></a>
          </li>
		  
		  </ul>
		  </li>
		  
		   <li class="e_li">
		  <a >化学</a>
		  <ul class="thr">
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=化学">化学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=无机化学">无机化学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=分析化学">分析化学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=有机化学">有机化学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=物理化学">物理化学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=高分子化学与物理">高分子化学与物理 <img class="more1" src="images/more1.png"/></a>
          </li>
		  </ul>
		  </li>
		  
		  <li class="e_li">
		  <a >天文学</a>
		  <ul class="thr">
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=天文学">天文学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=天体物理">天体物理 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a  >天体测量与天体力学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  </ul>
		  </li>
		  
		    <li class="e_li">
		  <a >地理学</a>
		  <ul class="thr">
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=地理学">地理学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a 自然地理学>自然地理学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=人文地理学">人文地理学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=地图与地理信息系统">地图学与地理信息系统 <img class="more1" src="images/more1.png"/></a>
          </li>
		  </ul>
		  </li>
		  
		  <li class="e_li">
		  <a >大气科学</a>
		  <ul class="thr">
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=大气科学">大气科学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=气象学">气象学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=大气物理学与大气物理">大气物理学与大气环境 <img class="more1" src="images/more1.png"/></a>
          </li>
		  </ul>
		  </li>
		  
		  <li class="e_li">
		  <a >海洋科学</a>
		  <ul class="thr">
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=海洋科学">海洋科学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=物理海洋学">物理海洋学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=海洋化学" >海洋化学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=海洋生物学">海洋生物学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=海洋地质">海洋地质 <img class="more1" src="images/more1.png"/></a>
          </li>
		  </ul>
		  </li>
		  
		  <li class="e_li">
		  <a >地球物理学</a>
		  <ul class="thr">
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=地球物理学">地球物理学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=固体地球物理学">固体地球物理学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=空间物理学">空间物理学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  </ul>
		  </li>
		  
		    <li class="e_li">
		  <a >地质学</a>
		  <ul class="thr">
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=地质学">地质学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=矿物学、岩石学、矿床学">矿物学、岩石学、矿床学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=地球化学">地球化学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=古生物与地球学">古生物与地球学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=构造地球学">构造地球学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=第四纪地质学">第四纪地质学 <img class="more1" src="images/more1.png"/></a>
          </li>
		  </ul>
		  </li>
		  
		  <li class="e_li">
		  <a >生物学</a>
		  <ul class="thr">
		   <li>
           <a >生物学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=植物学">植物学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=动物学">动物学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=生理学">生理学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=水生物学">水生物学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=微生物学">微生物学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=神经生物学">神经生物学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=遗传学">遗传学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=发育生物学">发育生物学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=细胞生物学">细胞生物学 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=生物化学与分子生物学">生物化学与分子生物学 <img class="more1" src="images/more1.png"/></a>
          </li>
	
		  </ul>
		  </li>
		  
		  <li class="e_li">
		  <a >计算机科学与技术</a>
		  <ul class="thr">
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=计算机科学与技术">计算机科学与技术 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=计算机系统结构">计算机系统结构 <img class="more1" src="images/more1.png"/></a>
          </li>
		   <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=计算机软件与理论">计算机软件与理论 <img class="more1" src="images/more1.png"/></a>
          </li>
		  <li>
           <a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=计算机应用技术">计算机应用技术 <img class="more1" src="images/more1.png"/></a>
          </li>
		  </ul>
		  </li>
		  
		  
		  
		  </ul>
		  
		  
		  
		  </li>
		  
		  
		  <li> 
			 <a >工学 <img class="more" src="images/more.png"/></a>
			 <ul class="er">
			 
				<li class="e_li">
				<a >力学</a>
				<ul class="thr">
				<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=力学">力学 <img class="more1" src="images/more1.png"/></a>
				</li>
				<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=一般力学与力学基础">一般力学与力学基础 <img class="more1" src="images/more1.png"/></a>
				</li>
				<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=固体力学">固体力学 <img class="more1" src="images/more1.png"/></a>
				</li>
				<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=流体力学">流体力学 <img class="more1" src="images/more1.png"/></a>
				</li>
				<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=工程力学">工程力学 <img class="more1" src="images/more1.png"/></a>
				</li>
				</ul>
				</li>
				
				<li class="e_li">
				<a >土木工程</a>
				<ul class="thr">
				<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=土木工程">土木工程 <img class="more1" src="images/more1.png"/></a>
				</li>
				<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=岩土工程">岩土工程 <img class="more1" src="images/more1.png"/></a>
				</li>
				<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=结构工程">结构工程 <img class="more1" src="images/more1.png"/></a>
				</li>
				<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=市政工程">市政工程 <img class="more1" src="images/more1.png"/></a>
				</li>
				<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=防灾减灾工程及防护工程">防灾减灾工程及防护工程 <img class="more1" src="images/more1.png"/></a>
				</li>
				
				<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=桥梁与隧道工程">桥梁与隧道工程 <img class="more1" src="images/more1.png"/></a>
				</li>
				</ul>
				</li>
				
				<li class="e_li">
				<a >软件工程</a>
				<ul class="thr">
				<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=软件工程">软件工程 <img class="more1" src="images/more1.png"/></a>
				</li>
				</ul>
				</li>
				
				<li class="e_li">
				<a >电子科学与技术</a>
				<ul class="thr">
				<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=电子科学技术">电子科学技术 <img class="more1" src="images/more1.png"/></a>
				</li>
				<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=物理电子学">物理电子学 <img class="more1" src="images/more1.png"/></a>
				</li>
				<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=电路系统">电路系统 <img class="more1" src="images/more1.png"/></a>
				</li>
				<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=微电子学与固体电子学">微电子学与固体电子学 <img class="more1" src="images/more1.png"/></a>
				</li>
				<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=电磁场与磁波技术">电磁场与磁波技术 <img class="more1" src="images/more1.png"/></a>
				</li>
				</ul>
				</li>
				
				<li class="e_li">
				<a >核科学与技术</a>
				<ul class="thr">
				<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=核科学与技术">核科学与技术 <img class="more1" src="images/more1.png"/></a>
				</li>
				<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=核能科学工程">核能科学工程 <img class="more1" src="images/more1.png"/></a>
				</li>
				<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=核燃料循环与材料">核燃料循环与材料 <img class="more1" src="images/more1.png"/></a>
				</li>
				<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=核技术与应用">核技术及应用 <img class="more1" src="images/more1.png"/></a>
				</li>
				<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=辐射防护及环境保护">辐射防护及环境保护 <img class="more1" src="images/more1.png"/></a>
				</li>
				</ul>
				</li>
				

				

				</ul>
				</li>
					
					
					<li> <a >医学 <img class="more" src="images/more.png"/></a> 
					<ul class="er">
					<li class="e_li">
					<a >基础医学</a>
					<ul class="thr">
					<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=人体解剖学与组织胚胎学">人体解剖与组织胚胎学<img class="more1" src="images/more1.png"></a>
					</li>
					<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=免疫学">免疫学<img class="more1" src="images/more1.png"></a>
					</li>
					<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=基础医学">基础医学<img class="more1" src="images/more1.png"></a>
					</li>
					<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=病原生物学">病原生物学<img class="more1" src="images/more1.png"></a>
					</li>
					<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=病理学与病理生物学">病理学与病理生理学<img class="more1" src="images/more1.png"></a>
					</li>
					<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=法医学">法医学<img class="more1" src="images/more1.png"></a>
					</li>
					<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=放射医学">放射医学<img class="more1" src="images/more1.png"></a>
					</li>
					</ul>
					</li>
					
								<li class="e_li">
					<a >临床医学</a>
					<ul class="thr">
					<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=临床医学">临床医学<img class="more1" src="images/more1.png"></a>
					</li>
					<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=内科学">内科学<img class="more1" src="images/more1.png"></a>
					</li>
					<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=儿科学">儿科学<img class="more1" src="images/more1.png"></a>
					</li>
					<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=老年医学">老年医学<img class="more1" src="images/more1.png"></a>
					</li>
					<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=神经医学">神经病学<img class="more1" src="images/more1.png"></a>
					</li>
					<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=精神病与精神卫生学">精神病与精神卫生学<img class="more1" src="images/more1.png"></a>
					</li>
					<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=皮肤病与性病学">皮肤病与性病学<img class="more1" src="images/more1.png"></a>
					</li>
					<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=眼科学">眼科学<img class="more1" src="images/more1.png"></a>
					</li>
					<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=妇产科学">妇产科学<img class="more1" src="images/more1.png"></a>
					</li>
					</ul>
					</li>
			
					
					
					</ul>
					</li>
					
					
					
					<li><a>其他<img class="more" src="images/more.png"/> </a>
					<ul class="er">
					<li class="e_li">
					<a >其他</a>
					<ul class="thr">
					<li>
					<a target="listneed.jsp" href="servlet/XuqiuServlet?method=Sel_key&key=其他">其他<img class="more1" src="images/more1.png"></a>
					</li>
					</ul>
					</li>
					</ul>
					</li>
			   </ul>
		  </li>
		  <div class="clear"></div>
</ul>

<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js/main_select.js"></script>
  </body>
</html>
