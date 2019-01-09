package com.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

//封装工具类
public class HibernateUtils {
	private static Configuration cfg;
	private static SessionFactory factory;
	private static Session session;
	
	static{
		cfg=new Configuration().configure();
		factory=cfg.buildSessionFactory();
	}
	//获取sessionfactory对象
	public static SessionFactory getSessionFactory(){
		return factory;
	}
	//获取Session对象
	public static Session getSession(){
		session=factory.openSession();
		return session;
	}
	public static void closeSession(Session session){
		if(null != session){
			session.close();
		}
	}

}
