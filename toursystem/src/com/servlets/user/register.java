package com.servlets.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.user;

import com.hibernateDao.hibernateDao;
import com.service.hibernateDaoservice;

/**
 * Servlet implementation class doregister
 */
@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	hibernateDao hibernateDao=new hibernateDao();
	hibernateDaoservice hibernateDaoservice=new hibernateDaoservice();   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// TODO Auto-generated method stub
		String msg = "";
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		user u=new user();
		u.setAccount(account);
		u.setPassword(password);
		if(hibernateDao.isExist(u)){
			msg = "此账户已存在，请重新输入";
			request.setAttribute("msg", msg);
			request.getRequestDispatcher("register.jsp").forward(request, response);
		}else{
			int count = hibernateDao.saveuser(u);
			if(count >0){
				msg = "恭喜你注册成功";
			}else{
				msg = "注册失败";
		}
			
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
