// 纯JS省市区三级联动
// 2011-11-30 by http://www.cnblogs.com/zjfree
var studyInit = function(_cmbProvince, _cmbCity, _cmbArea, defaultProvince, defaultCity, defaultArea)
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
	
	for(var i=0; i<provinceList.length; i++)
	{
		cmbAddOption(cmbProvince, provinceList[i].name, provinceList[i]);
	}
	cmbSelect(cmbProvince, defaultProvince);
	changeProvince();
	cmbProvince.onchange = changeProvince;
}

var provinceList = [
{name:'***请选择***',cityList:[
{name:'***请选择***',areaList:['***请选择***']}
                            
]},


{name:'哲学',cityList:[
{name:'哲学',areaList:['哲学','马克思主义哲学','中国哲学','外国哲学','逻辑学','伦理学','美学','宗教学','科学技术哲学']}
]
},

{name:'经济学',cityList:[
{name:'理论经济学',areaList:['理论经济学','政治经济学','经济思想学','经济史','西方经济史','世界经济','人口、资源与环境经济学']},
{name:'应用经济学',areaList:['国民经济学','应用经济学区域经济学','财政学金融学','产业经济学','国际贸易学','劳动经济学','统计学','数量经济学','国防经济学']},
{name:'统计学',areaList:['统计学']}
]	
},

{name:'法学',cityList:[
{name:'法学',areaList:['法学','法学理论','法律史','宪法学与行政学','刑法学','民商法学','诉讼法学','经济法学','环境与资源保护法学','国际法学','军事法学']},
{name:'政治学',areaList:['政治学','政治学理论中外政治制度','科学社会主义与国际共产主义运动','中共党史','国际政治','国际关系','外交学']},
{name:'社会学',areaList:['社会学','人口学','人类学','民俗学']},
{name:'民族学',areaList:['民族学','马克思主义民族理论与政策','中国少数民族经济','中国少数民族史','中国少数名族艺术']},
{name:'马克思主义理论',areaList:['马克思主义理论','马克思主义基本原理','马克思主义发展史','马克思主义中国化研究','思想政治教育','中国近现代史基本研究']},
{name:'公安学',areaList:['公安学']}
]
},
{name:'教育学',cityList:[
{name:'教育学',areaList:['教育学','教育学原理','课程与教学论','教育史','比较教育学','学前教育学','高等教育学','成人教育学','职业技术教育学','特殊教育学','教育技术学','教育法学']},
{name:'心理学',areaList:['心理学','基础心理学','发展与教育心理学','应用信息学']},
{name:'体育学',areaList:['体育学','体育人文社会学','运动人体科学','体育教育学','民族传统体育学']}                    
]},

{name:'文学',cityList:[
{name:'中国语言学',areaList:['中国语言文学','文艺学','语言学及应用语言学','汉语言文学学','中国古典文献学','中国古代文学','中国现当代文学','中国少数民族语言学','比较文学与世界文学']},
{name:'外国语言学',areaList:['外国语言文学','英语语言文学','俄语语言文学','法语语言文学','德语语言文学','','日语语言文学','印度语言文学','西班牙语言文学','阿拉伯语言文学','欧洲语言文学','亚非语言文学','外国语言学及应用语言学']},
{name:'新闻传播学',areaList:['新闻传播学','新闻学','传播学']}
                                  
]},

{name:'历史学',cityList:[
  {name:'考古学',areaList:['考古学及博物馆学','考古学']},
  {name:'中国史',areaList:['史学理论及史学史','历史文献学（含敦煌学、古文字学）','专门史','中国古代史','中国近代史','中国史']},
  {name:'世界史',areaList:['世界史']}
]},
{name:'理学',cityList:[
{name:'数学',areaList:['数学','基础数学','计算数学','概率论与数理统计','应用数学','运筹学与控制论']},
{name:"物理学",areaList:['物理学','理论物理','粒子物理与原子核物理','原子与分子物理',' 等离子物理','凝聚态物理','声学','光学','无线电物理']},
{name:'化学',areaList:['化学','无机化学','分析化学','有机化学','物理化学','高分子化学与物理']},
{name:'天文学',areaList:['天文学','天体物理','天体测量与天体力学']},
{name:'地理学',areaList:['地理学','自然地理学','人文地理学','地图学与地理信息系统']},
{name:'大气科学',areaList:['大气科学','气象学','大气物理学与大气环境']},
{name:'海洋科学',areaList:['海洋科学','物理海洋学','海洋化学','海洋生物学','海洋地质']},
{name:'地球物理学',areaList:['地球物理学','固体地球物理学','空间物理学']},
{name:'地质学',areaList:['地质学','矿物学、岩石学、矿床学','地球化学','古生物与地球学','构造地球学','第四纪地质学']},
{name:'生物学',areaList:['生物学','植物学','动物学','生理学','水生物学','微生物学','神经生物学','遗传学','发育生物学','细胞生物学','生物化学与分子生物学']},
{name:'计算机科学与技术',areaList:['计算机科学与技术','计算机系统结构','计算机软件与理论','计算机应用技术']}
]},


{name:'工学',cityList:[
{name:'力学',areaList:['力学','一般力学与力学基础','固体力学','流体力学','工程力学']},
{name:'土木工程',areaList:['土木工程','岩土工程','结构工程','市政工程','防灾减灾工程及防护工程','桥梁与隧道工程']},
{name:'软件工程',areaList:['软件工程']},
{name:'电子科学与技术',areaList:['电子科学技术','物理电子学','电路系统','微电子学与固体电子学','电磁场与磁波技术']},
{name:'核科学与技术',areaList:['核科学与技术','核能科学工程','核燃料循环与材料','核技术及应用','辐射防护及环境保护']}
                   
]},
{name:'医学',cituList:[
{name:'基础医学',areaList:['基础医学','人体解剖与组织胚胎学','免疫学','病原生物学','病理学与病理生理学','法医学','放射医学']},
{name:'临床医学',areaList:['临床医学','内科学','儿科学','老年医学','神经病学','精神病与精神卫生学','皮肤病与性病学','眼科学','妇产科学']}
                            
]},


                


                       
                           

                           



{name:'其他',cityList:[
 {name:'其他',areaList:['其他']}                    
                     
]}

];