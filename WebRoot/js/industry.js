// 纯JS省市区三级联动
// 2011-11-30 by http://www.cnblogs.com/zjfree
var industryInit = function(_cmbProvince, _cmbCity, _cmbArea, defaultProvince, defaultCity, defaultArea)
{
	var cmbProvince = document.getElementById(_cmbProvince);
	var cmbCity = document.getElementById(_cmbCity);
	var cmbArea = document.getElementById(_cmbArea);
	
	function cmbSelect(cmb, str)
	{
		for(var i=0; i<cmb.options.length; i++)
		{
			if(cmb.options[i].value == str)
			{
				cmb.selectedIndex = i;
				return;
			}
		}
	}
	function cmbAddOption(cmb, str, obj)
	{
		var option = document.createElement("OPTION");
		cmb.options.add(option);
		option.innerText = str;
		option.value = str;
		option.obj = obj;
	}
	
	function changeCity()
	{
		cmbArea.options.length = 0;
		if(cmbCity.selectedIndex == -1)return;
		var item = cmbCity.options[cmbCity.selectedIndex].obj;
		for(var i=0; i<item.areaList.length; i++)
		{
			cmbAddOption(cmbArea, item.areaList[i], null);
		}
		cmbSelect(cmbArea, defaultArea);
	}
	function changeProvince()
	{
		cmbCity.options.length = 0;
		cmbCity.onchange = null;
		if(cmbProvince.selectedIndex == -1)return;
		var item = cmbProvince.options[cmbProvince.selectedIndex].obj;
		for(var i=0; i<item.cityList.length; i++)
		{
			cmbAddOption(cmbCity, item.cityList[i].name, item.cityList[i]);
		}
		cmbSelect(cmbCity, defaultCity);
		changeCity();
		cmbCity.onchange = changeCity;
	}
	
	for(var i=0; i<industryList.length; i++)
	{
		cmbAddOption(cmbProvince, industryList[i].name, industryList[i]);
	}
	cmbSelect(cmbProvince, defaultProvince);
	changeProvince();
	cmbProvince.onchange = changeProvince;
}

var industryList = [

{name:'***请选择***',cityList:[
{name:'***请选择***',areaList:['***请选择***']}
                            
]},
                   
          
{name:'生活服务类',cityList:[
{name:'餐饮',areaList:['厨师长','后厨','配菜洗碗工','面点师','茶艺师','迎宾','接待','大堂经理','餐饮管理']},
{name:'美容美发',areaList:['发型师','洗头工','美容导师','化妆师','美甲师','美容店长','美容瘦身顾问']},
{name:'休闲娱乐',areaList:['酒吧服务员','娱乐厅服务员','礼仪|迎宾','主持人','调酒师','音效师','摄像师','影视后期制作','配音院','放映员']},
{name:'保健按摩',areaList:['按摩师','足疗师','搓澡工','针灸推拿']},
{name:'运动健身',areaList:['健身教练','瑜伽教练','舞蹈简练','游泳教练','台球教练','高尔夫球助理']}
                        
                                         
]},

{name:'人力行政|管理',cityList:[
{name:'人事|行政|后勤',areaList:['文员','前台接待','人事专员','人事经理','人事总监','行政专员','行政经理','行政总监','经理秘书','薪酬|绩效员','猎头顾问','后勤','培训专员','培训经理','招聘专员']},
{name:'司机',areaList:['商务司机','客运司机','出租车司机','班车司机','特种车司机','驾校陪练|教练']},
{name:'高级管理',areaList:['CEO|总裁|总经理','首席运营官COO','首席财务官CFO','首席技术官CTO','副总裁','总裁助理','总监','分公司经理','合伙人']}
                          
                          
]},

{name:'销售|客服|采购|淘宝',cityList:[
{name:'销售',areaList:['销售代表','销售助理','销售经理/主管','销售总监','电话销售','销售支持','汽车销售','医药代表','医疗器械销售','网络销售','区域销售','渠道专员','渠道经理/总监','客户经理/主管']},
{name:'客服',areaList:['客服专员/助理','客服经理/主管','客服总监','','售前/售后服务','电话客服','客户关系管理']},
{name:'贸易采购',areaList:['外贸专员/助理','外贸经理/主管','采购员','采购助理','采购经理/总监','商务专员/经理','买手']},
{name:'超市百货零售',areaList:['店员/营业员','收银员','促销/导购员','理货员/陈列员','防损员/内保','店长/卖场经理','招商经理/主管','奢侈品业务','品类管理','食品加工/处理']},
{name:'房产中介',areaList:['房产经纪人','置业顾问','房产店长/经理','房产店员/助理','房产客服','房产内勤','房产评估师','房产开发/策划','其他房产职位']}
                              
                              
]},

{name:'市场|媒介|广告设计',cityList:[
{name:'市场|媒介|公关',areaList:['市场专员/助理','市场经理/总监','市场拓展','市场调研','市场策划','媒介专员/助理','媒介经理/主管','会务会展专员/经理','品牌专员/经理','公关专员/助理']},
{name:'广告|会展',areaList:['广告文案','创意指导/总监','广告设计/制作','广告创意','媒介策划/管理','会展策划/设计 ','婚礼策划师','咨询顾问','咨询经理/主管','客户主管/专员']},
{name:'美术|设计|创意',areaList:['美编/美术设计','服装设计','服装设计','平面设计','美术指导','店面/陈列/展览设计','工艺/珠宝设计','多媒体/动画设计','产品/包装设计','装修装潢设计','CAD设计/制图']}
                             
                                                     
]},


{name:'网络|通信|电子',cityList:[
{name:'计算机|互联网|通信',areaList:['技术总监/经理','技术支持/维护','技术专员/助理','软件工程师','程序员','硬件工程师','质量工程师','测试工程师','系统架构师','数据库管理/DBA','游戏设计/开发','网页设计/制作','语音/视频/图形','项目经理/主管','产品经理/专员','网站运营','网站编辑','网站策划','网络管理员','网络管理员','实施工程师','通信技术工程师 ']}                          ,
{name:'电子|电器',areaList:['自动化工程师','电子/电气工程师','电路工程师/技术员','无线电工程师','测试/可靠性工程师','产品工艺/规划工程师','音频/视频工程师','灯光/照明设计工程师','灯光/照明设计工程师','电子/电器维修']},
{name:'机械|仪器仪表',areaList:['机电工程师','机械工程师','研发工程师','研发工程师 ','版图设计工程师','仪器/仪表/计量']}
]}


];