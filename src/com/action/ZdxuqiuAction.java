package com.action;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;


import com.dao.ZdxuqiuDao;
import com.model.Zdxuqiu;


import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ZdxuqiuAction extends ActionSupport {


	private static final long serialVersionUID = 1L;
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return SUCCESS;
	}
	/*public String showZdxuqiuList()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		String pagecode=request.getParameter("pagecode");
		int size=10;
		ActionContext context=ActionContext.getContext();
		List<Zdxuqiu> lst=ZdxuqiuDao.GetZdxuqiuList(Integer.parseInt(pagecode),size);
		int num=ZdxuqiuDao.GetZdxuqiuSize();
		System.out.print(num);
		int pages=num/size;
		if(num%size!=0)
		{
			pages++;
		}
		context.put("lst",lst);
		request.setAttribute("pagecode", Integer.parseInt(pagecode));
		request.setAttribute("pages", pages);
		return "zdxuqiulist";
	}*/
	
	
	public String saveZdxuqiu()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		String organizationname=request.getParameter("organizationname");
		String admindepartment=request.getParameter("admindepartment");
		String address=request.getParameter("address");
		String location=request.getParameter("location");
		String website=request.getParameter("website");
		String email=request.getParameter("email");
		String legalperson=request.getParameter("legalperson");
		String zipcode=request.getParameter("zipcode");
		String contacts=request.getParameter("contacts");
		String telephone=request.getParameter("telephone");
		String phone=request.getParameter("phone");
		String fax=request.getParameter("fax");
		String institutionalattributes=request.getParameter("institutionalattributes");
		String institutionalintroduction=request.getParameter("institutionalintroduction");
		String technicalname=request.getParameter("technicalname");
		String startdemandtime=request.getParameter("startdemandtime");
		String enddemandtime=request.getParameter("enddemandtime");
		String technicalsummary=request.getParameter("technicalsummary");
		String key1=request.getParameter("key1");
		String key2=request.getParameter("key2");
		String key3=request.getParameter("key3");
		String key4=request.getParameter("key4");
		String key5=request.getParameter("key5");
		String money=request.getParameter("money");
		String cooperationmodel=request.getParameter("cooperationmodel");
		String cooperativeunit=request.getParameter("cooperativeunit");
		String researchtype=request.getParameter("researchtype");
		
		String[] subjectclass_c=request.getParameterValues("subjectclass");
		StringBuffer subjectclass_bu=new StringBuffer();
		for(int i=0;i<subjectclass_c.length;i++)
		{
			subjectclass_bu.append(subjectclass_c[i]);
			subjectclass_bu.append(',');
		}
		String subjectclass=subjectclass_bu.toString();
		
		
		String[] field_c=request.getParameterValues("field");
		StringBuffer field_bu=new StringBuffer();
		for(int i=0;i<field_c.length;i++)
		{
			field_bu.append(field_c[i]);
			field_bu.append(',');
		}
		
		String field=field_bu.toString();
		
		
		String[] industry_c=request.getParameterValues("industry");
		StringBuffer industry_bu=new StringBuffer();
		for(int i=0;i<industry_c.length;i++)
		{
			industry_bu.append(industry_c[i]);
			industry_bu.append(',');
		}
		String industry=industry_bu.toString();
		
		
		
		
		String states="Î´ÉóºË";
		String states_exist="1";
		String tianbaoren=request.getParameter("contacts");
		ZdxuqiuDao.addXuqiu(organizationname,admindepartment,address,location,website,email,legalperson,zipcode,contacts
				,telephone,phone,fax,institutionalattributes,institutionalintroduction,technicalname,startdemandtime
				,enddemandtime,technicalsummary,key1,key2,key3,key4,key5,money,cooperationmodel,cooperativeunit
				,researchtype,subjectclass,field,industry,states,states_exist,tianbaoren);
		return SUCCESS;
	}
	public String showZdxuqiuList()throws Exception{
		ActionContext context=ActionContext.getContext();
		int pageNo=1;int pageSize=5;
		HttpServletRequest request=ServletActionContext.getRequest();
		String strPageNo=request.getParameter("pageNo");
		if(strPageNo!=null)
		{
			pageNo=Integer.parseInt(strPageNo);
		}
		

		List<Zdxuqiu> lst=ZdxuqiuDao.GetZdxuqiuList(pageNo);
		Integer pageCount=new Integer(ZdxuqiuDao.getPageCount());
		ActionContext.getContext().getSession().put("pageCount", pageCount);
		ActionContext.getContext().getSession().put("pageNo", pageNo);
		
		context.put("lst", lst);
		return "zdxuqiulist";
	}
	
	public String showZdxuqiuListadmin()throws Exception{
		ActionContext context=ActionContext.getContext();
		int pageNo=1;int pageSize=5;
		HttpServletRequest request=ServletActionContext.getRequest();
		String strPageNo=request.getParameter("pageNo");
		if(strPageNo!=null)
		{
			pageNo=Integer.parseInt(strPageNo);
		}
		

		List<Zdxuqiu> lst=ZdxuqiuDao.GetZdxuqiuList(pageNo);
		Integer pageCount=new Integer(ZdxuqiuDao.getPageCount());
		ActionContext.getContext().getSession().put("pageCount", pageCount);
		ActionContext.getContext().getSession().put("pageNo", pageNo);
		
		context.put("lst", lst);
		return "zdxuqiulistadmin";
	}
	public String Inquiry()
	{
		HttpServletRequest request=ServletActionContext.getRequest();
		String tianbaoren=request.getParameter("tianbaoren");
		ActionContext context=ActionContext.getContext();
		int pageNo=1;int pageSize=5;
		String strPageNo=request.getParameter("pageNo");
		if(strPageNo!=null)
		{
			pageNo=Integer.parseInt(strPageNo);
		}
		List<Zdxuqiu> lst=ZdxuqiuDao.GetZdxuqiulistInquiry_user(pageNo,tianbaoren);
		Integer pageCount=new Integer(ZdxuqiuDao.getPageCountInquiry(tianbaoren));
		
		ActionContext.getContext().getSession().put("pageCount", pageCount);
		ActionContext.getContext().getSession().put("pageNo", pageNo);
		
		context.put("lst", lst);
		return "zdxuqiulist";

	}
	
	public String Detailuser() throws Exception
	{
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setCharacterEncoding("utf-8");
		ActionContext context=ActionContext.getContext();


		String t_name1=request.getParameter("t_name");
		String t_name=new String(t_name1.getBytes("ISO-8859-1"),"utf-8");
		Zdxuqiu xuqiu=ZdxuqiuDao.getXuqiuuser(t_name);
		context.put("xuqiu", xuqiu);
		return "DetailSUCCESS";
	}
	
	public String Pass()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		ActionContext context=ActionContext.getContext();
		String t_name1=request.getParameter("t_name");
        String t_name=new String(t_name1.getBytes("ISO-8859-1"),"utf-8"); 
		ZdxuqiuDao xuqiudao=new ZdxuqiuDao();
		Zdxuqiu xuqiuob=ZdxuqiuDao.getXuqiuuser(t_name);
		
		xuqiuob.setStates("Í¨¹ý");
		boolean flag=xuqiudao.PassXuqiu(xuqiuob);
		String flag_s="";
		if(flag){flag_s="true_pass";}
		ActionContext.getContext().getSession().put("flag_s", flag_s);
		int pageNo=1;int pageSize=5;
		String strPageNo=request.getParameter("pageNo");
		if(strPageNo!=null)
		{
			pageNo=Integer.parseInt(strPageNo);
		}
		

		List<Zdxuqiu> lst=ZdxuqiuDao.GetZdxuqiuList(pageNo);
		Integer pageCount=new Integer(ZdxuqiuDao.getPageCount());
		ActionContext.getContext().getSession().put("pageCount", pageCount);
		ActionContext.getContext().getSession().put("pageNo", pageNo);
		context.put("lst", lst);
		return "CHECKED";
		
	};
	public String Return()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		ActionContext context=ActionContext.getContext();
		String t_name1=request.getParameter("t_name");
        String t_name=new String(t_name1.getBytes("ISO-8859-1"),"utf-8"); 
		ZdxuqiuDao xuqiudao=new ZdxuqiuDao();
		Zdxuqiu xuqiuob=ZdxuqiuDao.getXuqiuuser(t_name);
		xuqiuob.setStates("ÍË»Ø");
		
		
		boolean flag=xuqiudao.PassXuqiu(xuqiuob);
		String flag_s="";
		if(flag){flag_s="true_return";}
		ActionContext.getContext().getSession().put("flag_s", flag_s);
		int pageNo=1;int pageSize=5;
		String strPageNo=request.getParameter("pageNo");
		if(strPageNo!=null)
		{
			pageNo=Integer.parseInt(strPageNo);
		}
		

		List<Zdxuqiu> lst=ZdxuqiuDao.GetZdxuqiuList(pageNo);
		Integer pageCount=new Integer(ZdxuqiuDao.getPageCount());
		ActionContext.getContext().getSession().put("pageCount", pageCount);
		ActionContext.getContext().getSession().put("pageNo", pageNo);
		context.put("lst", lst);
		return "CHECKED";

		
	};

}
