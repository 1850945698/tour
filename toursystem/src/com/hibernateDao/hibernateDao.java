package com.hibernateDao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.entity.evaluate;
import com.entity.tourinformation;
import com.entity.user;

import com.util.HibernateUtil;



public class hibernateDao {
	
	public hibernateDao() {
		// TODO Auto-generated constructor stub
	}

	public static void main(String[] args) {
		   saveuser(null);
		 updateProduct();
		deleteProduct();
		// findAllProduct();
		 findProductByprice(22);
		find();

	}

	/*
	 * 判断用户是否存在
	 */
	
	public boolean isExist(user u){
		
		Session session = HibernateUtil.openSession();
		Transaction tran = session.beginTransaction();
		int count=0;
		boolean flag = false;
		Query query = session.createQuery("from user where account=? and password=?");
		query.setString(0, u.getAccount());
		query.setString(1, u.getPassword());
		List<user> list=query.list();
		int um=list.size();
		if (um != 0){			
			flag = true;
		}
		
		 return flag;
	}
	/*
	 * 实现添加用户功能（注册功能）
	 */
	public static int saveuser(user u) {
		
		int count = 0;
		Session session = null;
		
		Transaction tran = null;
		try {
			session = HibernateUtil.openSession();
			tran = session.beginTransaction();
			// ---------------------------------

			user u1=new user();
			u1.setAccount(u.getAccount());
			u1.setPassword(u.getPassword());
			session.save(u1);
			count=(int) session.save(u1);
			tran.commit();
		} catch (Exception e) {
			e.printStackTrace();
			tran.rollback();
		} finally {
			if (null != session) {
				// 6.关闭session
				session.close();
			}
		}
		return count;
	}

	public tourinformation findtourbyid(int id){
		Session session = null;
		Transaction tran = null;
		tourinformation t =null;
		try {
			session = HibernateUtil.openSession();
			tran = session.beginTransaction();
			// ---------------------------------

			// 查找Product对象
			//t= session.load(tourinformation.class, id);
			
			

			Query query = session.createQuery("from tourinformation where id=?");

			query.setInteger(0, id);
		 t=(tourinformation) query.uniqueResult();
		 System.out.println(t);
			return t ;

			// ---------------------------------
			
		} catch (Exception e) {
			e.printStackTrace();
			tran.rollback();
			return null;
		} finally {
			if (null != session) {
				session.close();
			}
		}
	
		

		}
	
	public static List<tourinformation> findall() {
		Session session = HibernateUtil.openSession();
		Transaction tran = session.beginTransaction();

		Query query = session.createQuery("from tourinformation");
		List<tourinformation> list = query.list();
		System.out.println(list);
		for (tourinformation em : list) {
			System.out.println(em.getName());
		}

		return list;

		// TODO Auto-generated method stub

	}
//	public int addPhoneUser(PhoneUser pu){
//
//		int count = 0;
//	 try {
//		connection = DBUtil.getConnection();
//		String sql = "insert into phoneuser(pname,phone,age) values(?,?,?)";
//		preparedStatement = connection.prepareStatement(sql);
//		preparedStatement.setString(1, pu.getUsername());
//		preparedStatement.setString(2, pu.getPhone());
//		preparedStatement.setString(3, pu.getAge());
//		count = preparedStatement.executeUpdate();
//	} catch (Exception e) {
//		// TODO Auto-generated catch block
//		e.printStackTrace();
//	}finally{
//		closed();
//	}
//	return count;
//}
	
	/*
	 * 
	 * 实现商品列表功能(根据价格查询)--->该方法参数是价格，根据参数查询表中满足条件的数据； hibernate中查询语句占位符的下标是从0开始的；
	 */

	private static void find() {
		// TODO Auto-generated method stub

		// TODO Auto-generated method stub
		Session session = null;
		Transaction tran = null;
		user p =null;
		try {
			session = HibernateUtil.openSession();
			tran = session.beginTransaction();
			// ---------------------------------

			// 查找Product对象

			p= session.load(user.class, 3);
			System.out.println(p);

			// ---------------------------------
			tran.commit();
		} catch (Exception e) {
			e.printStackTrace();
			tran.rollback();
		} finally {
			if (null != session) {
				session.close();
			}
		}
		
	}
	
	
	
	

	public static List<user> findProductByprice(int price) {

		Session session = HibernateUtil.openSession();
		Transaction tran = session.beginTransaction();

		Query query = session.createQuery("from Product where price=?");

		query.setInteger(0, price);
		List<user> list = query.list();
		for (user em : list) {

			System.out.println(em);
		}
		return list;
		// TODO Auto-generated method stub

	}

	/*
	 * 
	 * 实现商品列表功能(所有数据)
	 */

//	public static List<Product> findAllProduct() {
//		Session session = HibernateUtil.openSession();
//		Transaction tran = session.beginTransaction();
//
//		Query query = session.createQuery("from Product");
//		List<Product> list = query.list();
//		System.out.println(list);
//		for (Product em : list) {
//			System.out.println(em.getName());
//		}
//
//		return list;
//
//		// TODO Auto-generated method stub
//
//	}

	/*
	 * 
	 * 实现商品删除功能
	 */

	public static void deleteProduct() {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction tran = null;
		try {
			session = HibernateUtil.openSession();
			tran = session.beginTransaction();
			// ---------------------------------

			// 查找Product对象
			user p = session.load(user.class, 3);
			System.out.println(p.getAccount());
			session.delete(p);
			// 保存
			session.save(p);

			// ---------------------------------
			tran.commit();
		} catch (Exception e) {
			e.printStackTrace();
			tran.rollback();
		} finally {
			if (null != session) {
				session.close();
			}
		}
	}

	/*
	 * 
	 * 实现商品添加功能
	 */

	

	/*
	 * 实现商品修改功能
	 * 
	 */

	public static void updateProduct() {
		Session session = null;
		Transaction tran = null;
		try {
			session = HibernateUtil.openSession();
			tran = session.beginTransaction();
			// ---------------------------------

			// 查找Product对象
			
			//Product p = session.load(Product.class, 1);
//			 p.setName("猕猴桃");
//			
//			p.setDescription("这个东西难得的好吃");
//			session.update(p);
//			System.out.println(p.getDescription());

			// 保存
			 //session.save(p);

			// ---------------------------------
			tran.commit();
		} catch (Exception e) { 
			e.printStackTrace();
			tran.rollback();
		} finally {
			if (null != session) {
				session.close();
			}
		}
	}

}
