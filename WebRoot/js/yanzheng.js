/**
 * 
 */
  	   var flag = 0;
       var unit = '(单位基本情况，研究基础等，限200字)';
       var demand = '(主要内容，技术指标，预期经济和社会效益等，限500字)';
       var gd = '固定电话';
       var yd = '手机电话';  
       var key='关键字（限三个词）';
       function checkLength(obj,maxlength){
		    if(obj.value.length > maxlength){
		        obj.value = obj.value.substring(0,maxlength);
		    }
       }
       function foc(value,id)
       {             
             var tex = document.getElementById(id);                      
             var reg = new RegExp(unit+"|"+demand+"|"+gd+"|"+yd+"|"+key); 
             if(reg.test(value))
             {
                 tex.value="";
             }      
       }
       function blu(id,value)
       {                                         
             var tex = document.getElementById(id);         
             if(tex.value=="")
             {   
                if(id=="unitbrief")            
                tex.value = unit; 
                else if(id=="demand")
                tex.value = demand;
                else if(id=="mobile")
                tex.value = yd;
                else if(id=="keyword")
                tex.value = gd;
                else
                tex.value=key;
             }             
       }
       function checktech(value)
       {
          if(flag==0&&value=="其他")
          {               
                 flag = 1;
                 $("#hid2").show();               
          }
          else if(flag==1&&value=="其他")
          {       
                 flag = 0;     
                 $("#hid2").hide(); 
                 $("#hid2").val("");           
          }          
       }
       function checkunit(value)
       {
          if(value=="其他")
          {               
                 $("#hid1").show();                           
          }
          else
          {            
                 $("#hid1").hide();
                 $("#hid1").val("");             
          }
       }
       function checkstudytype(value)
       {
          if(value=="基础研究")
          {               
                 $("#studytype").show();
                 $("#techfield").hide();
                 $("#techsector").hide();                           
          }
          else
          {            
                 
                 $("#studytype").hide();
                 $("#techfield").show();
                 $("#techsector").show();         
          }
       }
       function Reset()
       {
          $("#techfield").hide();
          $("#techsector").hide();
          $("#studytype").show(); 
          document.getElementById("form1").reset(); 
       }
       function checkPhone(value,id)
       { 		   
		    if(!(/^1[34578]\d{9}$/.test(value))&&value!="")
		    { 
		        alert("手机号码有误，请重填");
		        document.getElementById(id).focus();		    
		    }
	   }
	   function checkName(value,id)
	   {
	     if(!(/^([\u4e00-\u9fa5]{1,4}|[a-zA-Z\.\s]{1,20})$/.test(value))&&value!="")
	     {
	         alert("请输入真实姓名");
	         document.getElementById(id).value="";
	         document.getElementById(id).focus();
	     }
	   }
	   /*alert("固定电话格式不对");
	          document.getElementById(id).focus();*/
	   function checkemail(value,id)
	   {
	      var emailReg = /.*@.*\.?.*?\.(com|cn)$/;
	      if(!(emailReg.test(value))&&value!="")
	      {
	          alert("邮箱填写错误");
	          document.getElementById("email").focus();
	      } 
	   }
	   function checktelephone(value,id)
	   {
		   	var i,j,strTemp;
		   	strTemp="0123456789-()#";
		   	for(i=0;i<value.length;i++)
		   		{
		   			j=strTemp.indexOf(value.charAt(i));
		   			if(j==-1)
		   				{
		   					alert("邮箱填写错误");
		   					document.getElementById("email").focus();
		   				}
		   		}
	   }
	   function stripscript(s){ 
            var pattern = new RegExp("[`~!@#$^&*()=|{}':;',\\[\\].<>/?~！@#￥……&*（）——|{}【】‘；：”“'。，、？]") 
            var rs = ""; 
            for (var i = 0; i < s.length; i++) { 
                rs = rs+s.substr(i, 1).replace(pattern, ''); 
            } 
            return rs; 
       } 
	   function IsValid( oField )      
       {      
			re= /select|update|delete|exec|count|'|"|=|;|>|<|%/i;      
			$sMsg = "请您不要在参数中输入特殊字符和SQL关键字！"  
			if ( re.test(oField.value) )      
			{      
				alert( $sMsg );      
				oField.value = '';      
				oField.focus();      
				return false;  
	        }    
       }    

	   