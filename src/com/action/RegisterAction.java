package com.action;

import javax.servlet.http.HttpServletRequest;

import java.util.List;

import com.model.Denglu;
import com.dao.DengluDao;
import com.dao.RegisterDao;
import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return SUCCESS;
	}

	public String register()throws Exception{

		ActionContext context=ActionContext.getContext();
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setCharacterEncoding("utf-8");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String name=request.getParameter("name");
		String sex=request.getParameter("sex");
		String province=request.getParameter("province");
		String city=request.getParameter("city");
		String area=request.getParameter("area");
		String company=request.getParameter("company");
		String major=request.getParameter("major");
		String industry=request.getParameter("industry");
		String education=request.getParameter("education");
		String title=request.getParameter("title");
		String address=request.getParameter("address");
		String ZipCode=request.getParameter("ZipCode");
		String phone=request.getParameter("phone");
		String telephone=request.getParameter("telephone");
		String email=request.getParameter("email");
		String QQ=request.getParameter("QQ");
		String MSN=request.getParameter("MSN");
		String type="user";
		String c_pow="Y";
		String r_pow="N";
		String u_pow="N";
		String d_pow="N";
		RegisterDao.addDenglu(username, password, name, sex, province, city, area, company, major, industry, education, title, address, ZipCode, phone, telephone, email, QQ, MSN, type,c_pow,r_pow,u_pow,d_pow);
		List<Denglu> denglulist=DengluDao.getDengluList();;
		context.put("denglulist", denglulist);
		return "USER";
		
	}
}
