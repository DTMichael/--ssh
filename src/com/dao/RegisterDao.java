package com.dao;

import com.model.Denglu;
import java.util.List;
import org.hibernate.*;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.hibernate.cfg.Configuration;

import com.model.HibernateSessionFactory;
public class RegisterDao {

/*	public static boolean addDenglu(String username, String password, String name,
			String sex, String province, String city, String area,
			String company, String major, String industry, String education,
			String title, String address, String zipCode, String phone,
			String telephone, String email, String qQ, String mSN, String type) {
		// TODO Auto-generated method stub
		Session session=HibernateSessionFactory.getSession();
		Denglu denglu=new Denglu();
		denglu.setUsername(username);
		denglu.setPassword(password);
		denglu.setName(name);
		denglu.setSex(sex);
		denglu.setProvince(province);
		denglu.setCity(city);
		denglu.setArea(area);
		denglu.setCompany(company);
		denglu.setMajor(major);
		denglu.setIndustry(industry);
		denglu.setEducation(education);
		denglu.setTitle(title);
		denglu.setAddress(address);
		denglu.setZipCode(zipCode);
		denglu.setPhone(phone);
		denglu.setTelephone(telephone);
		denglu.setEmail(email);
		denglu.setQq(qQ);
		denglu.setMsn(mSN);
		denglu.setType(type);
		System.out.print(denglu.getType());
		try{
			if(session.save(denglu) != null)
			{
				session.flush();
				
				return true;
			}
			else
			{
				return false;
			}
			
			
			
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
		
		
	}
	*/
	
	public static void addDenglu(String username, String password, String name,
			String sex, String province, String city, String area,
			String company, String major, String industry, String education,
			String title, String address, String zipCode, String phone,
			String telephone, String email, String qQ, String mSN, String type,String CPow,String RPow,String UPow,String DPow){
		
		Denglu denglu=new Denglu();
		denglu.setUsername(username);
		denglu.setPassword(password);
		denglu.setName(name);
		denglu.setSex(sex);
		denglu.setProvince(province);
		denglu.setCity(city);
		denglu.setArea(area);
		denglu.setCompany(company);
		denglu.setMajor(major);
		denglu.setIndustry(industry);
		denglu.setEducation(education);
		denglu.setTitle(title);
		denglu.setAddress(address);
		denglu.setZipCode(zipCode);
		denglu.setPhone(phone);
		denglu.setTelephone(telephone);
		denglu.setEmail(email);
		denglu.setQq(qQ);
		denglu.setMsn(mSN);
		denglu.setType(type);
		denglu.setCpow(CPow);
		denglu.setRpow(RPow);
		denglu.setUpow(UPow);
		denglu.setDpow(DPow);
//		Configuration cfg=new Configuration();
//		SessionFactory sf=cfg.configure().buildSessionFactory();
//		Session session=sf.openSession();
//		session.beginTransaction();
//		session.save(denglu);
//		session.close();
//		sf.close();
		Session session=HibernateSessionFactory.getSession();
		Transaction tx=session.beginTransaction();
		try{
			session.save(denglu);
			tx.commit();
			
		}
		catch(Exception e){
			e.printStackTrace();
			tx.rollback();
			
		}
		finally{
			HibernateSessionFactory.closeSession();
		}
		
	}



}
