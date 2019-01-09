package com.service;

import com.entity.user;
import com.hibernateDao.hibernateDao;


public class hibernateDaoservice {
	
	private hibernateDao hibernateDao= new hibernateDao();
	
	public boolean isExist(user u){
		return hibernateDao.isExist(u);
	}
	public int saveuser(user u){
		return hibernateDao.saveuser(u);
		
	}

}
