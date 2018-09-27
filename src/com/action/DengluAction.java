package com.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import com.dao.DengluDao;
import com.dao.ZdxuqiuDao;
import com.model.Denglu;
import com.model.Zdxuqiu;
public class DengluAction extends ActionSupport {

	public String username;
	
	
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return SUCCESS;
	}
	
	public String login() throws Exception{
		ActionContext context=ActionContext.getContext();
		HttpServletRequest request=ServletActionContext.getRequest();
		username = request.getParameter("username");
		String password=request.getParameter("password");
		if(username.isEmpty()||password.isEmpty())
		{
			return ERROR;
		}
		else{
			Denglu denglu=DengluDao.isLogin(username,password);
			if(denglu==null)
			{
				return ERROR;
			}
			else
			{
				if(denglu.getType().equals("admin"))
				{
					
					System.out.print(username);
					ActionContext.getContext().getSession().put("username", username);
					return "ADMINPAGE";
					
				}
				else
				{

					System.out.print(username);
					ActionContext.getContext().getSession().put("username", username);
					return "USERPAGE";
				}
			}
		}
	}
	
	public String alter(){
		ActionContext context=ActionContext.getContext();
		HttpServletRequest request=ServletActionContext.getRequest();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		Denglu denglu=DengluDao.getuser(username);
		denglu.setPassword(password);
		if(DengluDao.alertpass(denglu))
		{
			return "ALTERSUCCESS";
		}
		else{
			return "ALERTERROR";
		}
	}
	public String showuserListadmin()
	{
		ActionContext context=ActionContext.getContext();
		HttpServletRequest request=ServletActionContext.getRequest();

		List<Denglu> lst=DengluDao.GetUserList();
		
		context.put("lst", lst);
		return "userlistadmin";
	}

}
