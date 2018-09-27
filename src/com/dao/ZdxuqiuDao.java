package com.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;

import com.model.Denglu;
import com.model.HibernateSessionFactory;
import com.model.Zdxuqiu;

public class ZdxuqiuDao {

	@SuppressWarnings("unchecked")
/*	public static List<Zdxuqiu> GetZdxuqiuList(int pageNo) {
		// TODO Auto-generated method stub
		int pageSize=5;
		int startRecno=(pageNo-1)*pageSize;
		
		Session session=HibernateSessionFactory.getSession();
		List<Zdxuqiu> list;
		try{
			session.beginTransaction();
			Criteria criteria=session.createCriteria(Zdxuqiu.class);
			criteria.addOrder(Order.asc("id"));
			list=(List<Zdxuqiu>) criteria.list();
			session.getTransaction().commit();
			return list;
			
		}
		catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
			return null;
		}
		finally{
			session.close();
		}
	}*/
	
	

	public static int GetZdxuqiuSize() {
		// TODO Auto-generated method stub
			String hql="select count(*) from Zdxuqiu ";
			Session session=HibernateSessionFactory.getSession();
			Integer i=(Integer)session.createQuery(hql).uniqueResult();
			return i;
	}

	public static void addXuqiu(String organizationname,
			String admindepartment, String address, String location,
			String website, String email, String legalperson, String zipcode,
			String contacts, String telephone, String phone, String fax,
			String institutionalattributes, String institutionalintroduction,
			String technicalname, String startdemandtime, String enddemandtime,
			String technicalsummary, String key1, String key2, String key3,
			String key4, String key5, String money, String cooperationmodel,
			String cooperativeunit, String researchtype, String subjectclass,
			String field, String industry, String states, String states_exist,
			String tianbaoren) {
		// TODO Auto-generated method stub
		Zdxuqiu xuqiu=new Zdxuqiu();
		xuqiu.setOrganizationname(organizationname);
		xuqiu.setAdmindepartment(admindepartment);
		xuqiu.setAddress(address);
		xuqiu.setLocation(location);
		xuqiu.setWebsite(website);
		xuqiu.setEmail(email);
		xuqiu.setLegalperson(legalperson);
		xuqiu.setZipcode(zipcode);
		xuqiu.setContacts(contacts);
		xuqiu.setTelephone(telephone);
		xuqiu.setPhone(phone);
		xuqiu.setFax(fax);
		xuqiu.setInstitutionalattributes(institutionalattributes);
		xuqiu.setInstitutionalintroduction(institutionalintroduction);
		xuqiu.setTechnicalname(technicalname);
		xuqiu.setStartdemandtime(startdemandtime);
		xuqiu.setEnddemandtime(enddemandtime);
		xuqiu.setTechnicalsummary(technicalsummary);
		xuqiu.setKey1(key1);
		xuqiu.setKey2(key2);
		xuqiu.setKey3(key3);
		xuqiu.setKey4(key4);
		xuqiu.setKey5(key5);
		xuqiu.setMoney(money);
		xuqiu.setCooperationmodel(cooperationmodel);
		xuqiu.setCooperativeunit(cooperativeunit);
		xuqiu.setResearchtype(researchtype);
		xuqiu.setSubjectclass(subjectclass);
		xuqiu.setField(field);
		xuqiu.setIndustry(industry);
		xuqiu.setStates(states);
		xuqiu.setStates(states_exist);
		xuqiu.setTianbaoren(tianbaoren);
		
		Session session=HibernateSessionFactory.getSession();
		Transaction tx=session.beginTransaction();
		try{
			session.save(xuqiu);
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

	
	@SuppressWarnings("unchecked")
	public static List<Zdxuqiu> GetZdxuqiuList(int pageNo) {
		// TODO Auto-generated method stub
		int pageSize=5;
		int startRecno=(pageNo-1)*pageSize;
		
		Session session=HibernateSessionFactory.getSession();
		List<Zdxuqiu> list;
		try{
			session.beginTransaction();
			Transaction tran=session.beginTransaction();
			Query q=session.createQuery("from Zdxuqiu order by id ");
			q.setFirstResult(startRecno);
			q.setMaxResults(pageSize);
			
			list=q.list();
			tran.commit();
			
			return list;
			
		}
		catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
			return null;
		}
		finally{
			session.close();
		}
	}

	@SuppressWarnings("unchecked")
	public static List<Zdxuqiu> GetZdxuqiulistInquiry_user(int pageNo,
			String tianbaoren) {
		// TODO Auto-generated method stub
		int pageSize=5;
		int startRecno=(pageNo-1)*pageSize;
		
		Session session=HibernateSessionFactory.getSession();
		List<Zdxuqiu> list;
		try{
			session.beginTransaction();
			Transaction tran=session.beginTransaction();
//			Query q=session.createQuery("from Zdxuqiu order by id where tianbaoren="+tianbaoren+"");
			Query q=session.createQuery("from Zdxuqiu  where tianbaoren=? order by id").setParameter(0, tianbaoren);
			q.setFirstResult(startRecno);
			q.setMaxResults(pageSize);
			
			list=q.list();
			tran.commit();
			
			return list;
			
		}
		catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
			return null;
		}
		finally{
			session.close();
		}
	}
	
	public static int getPageCount() {
		// TODO Auto-generated method stub
		int recordCount=0,t1=0,t2=0;
		String hql="select count(*) from Zdxuqiu ";
		Session session=HibernateSessionFactory.getSession();
		recordCount=(Integer)session.createQuery(hql).uniqueResult();
		t1=recordCount%5;
		t2=recordCount/5;
		return t1==0?t2:t2+1;
		
		
	}

	public static int getPageCountInquiry(String tianbaoren) {
		// TODO Auto-generated method stub
		int recordCount=0,t1=0,t2=0;
//		String hql="select count(*) from Zdxuqiu where tianbaoren="+tianbaoren+"";
		String hql="select count(*) from Zdxuqiu  where tianbaoren=? ";
		Session session=HibernateSessionFactory.getSession();
		recordCount=(Integer)session.createQuery(hql).setParameter(0, tianbaoren).uniqueResult();
		t1=recordCount%5;
		t2=recordCount/5;
		return t1==0?t2:t2+1;
	}

	@SuppressWarnings("unchecked")
	public static Zdxuqiu getXuqiuuser(String t_name) {
		// TODO Auto-generated method stub
		Session session=HibernateSessionFactory.getSession();
		List<Zdxuqiu> xuqiulist;
		try{
			session.beginTransaction();
			Transaction tran=session.beginTransaction();
			Query q=session.createQuery("from Zdxuqiu where technicalname=? ").setParameter(0, t_name);

			
			xuqiulist=q.list();
			Zdxuqiu denglu=xuqiulist.get(0);
			tran.commit();
			return denglu;
			
		}
		catch(Exception e)
		{
			session.getTransaction().rollback();
			e.printStackTrace();
			return null;
		}
		finally{
			session.close();
		}
	}

	public boolean PassXuqiu(Zdxuqiu xuqiuob) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		
		try{
			session.beginTransaction();
			session.update(xuqiuob);
			session.getTransaction().commit();
			return true;
		}
		catch(Exception e)
		{
			session.getTransaction().rollback();
			e.printStackTrace();
			return false;
		}
		finally{
			session.close();
		}

	}


}
