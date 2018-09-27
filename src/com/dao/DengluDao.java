package com.dao;

import com.model.Denglu;
import com.model.Zdxuqiu;

import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.model.HibernateSessionFactory;
public class DengluDao {
		public static Denglu isLogin(String username,String password)
		{
			Session session=HibernateSessionFactory.getSession();
			try{
				Criteria criteria=session.createCriteria(Denglu.class);
				criteria.add(Restrictions.eq("username", username)).add(Restrictions.eq("password",password));
				List<Denglu> denglus=criteria.list();
				session.close();
				if(denglus.isEmpty())
				{
					return null;
					
				}
				else{
					return denglus.get(0);
				}
				
			}
			catch(Exception e){
				e.printStackTrace();
			}
			return null;
			
		}

		public static List<Denglu> getDengluList() {
			// TODO Auto-generated method stub
			Session session=HibernateSessionFactory.getSession();
			try{
				Criteria criteria=session.createCriteria(Denglu.class);
				List<Denglu> denglus=criteria.list();
				session.close();
				return denglus;
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return null;
		}
		
		public static Denglu getuser(String username)
		{
			Session session=HibernateSessionFactory.getSession();
			List<Denglu> denglulist;
			try{
				session.beginTransaction();
				Transaction tran=session.beginTransaction();
				Query q=session.createQuery("from Denglu where username=? ").setParameter(0, username);

				
				denglulist=q.list();
				Denglu denglu=denglulist.get(0);
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
		public static boolean alertpass(Denglu denglu) {
			// TODO Auto-generated method stub
			Session session = HibernateSessionFactory.getSession();
			
			try{
				session.beginTransaction();
				session.update(denglu);
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

		public static List<Denglu> GetUserList() {
			// TODO Auto-generated method stub
			Session session=HibernateSessionFactory.getSession();
			List<Denglu> list;
			try{
				session.beginTransaction();
				Transaction tran=session.beginTransaction();
				Query q=session.createQuery("from Denglu order by id ");				
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


}
