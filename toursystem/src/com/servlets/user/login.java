package com.servlets.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hibernateDao.hibernateDao;
import com.entity.user;

import com.service.hibernateDaoservice;


/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	hibernateDao hibernateDao=new hibernateDao();
	hibernateDaoservice hibernateDaoservice=new hibernateDaoservice();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String msg="";
		String account =request.getParameter("account");
		String password=request.getParameter("password");
		user u=new user();
		u.setAccount(account);
		u.setPassword(password);
		if(hibernateDaoservice.isExist(u)){
			msg="登录成功！！";
			request.getRequestDispatcher("tourhomepage.jsp").forward(request, response);
		}else{
			msg = "用户名或者密码不正确！请重新输入！";
			request.setAttribute("msg", msg);
		request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
