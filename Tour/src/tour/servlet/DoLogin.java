package tour.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tour.entity.User;
import tour.service.UserService1;

/**
 * Servlet implementation class DoLogin
 */
@WebServlet("/DoLogin")
public class DoLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//获得 输入的用户名和密码
				String msg="";
				String name =request.getParameter("name");
				String password=request.getParameter("password");
				//判断输入的用户名和密码是否正确  在数据库中可以查询到
				User pu=new User();
				pu.setPassword(password);
				pu.setName(name);
				//如果存在则跳转到index页面  如果不存在则跳转到登陆页面
				if(UserService1.isExist(pu)){
					List<User> pulist=UserService1.selectAllUser();
					request.setAttribute("pulist", pulist);
					request.getRequestDispatcher("/home.jsp").forward(request, response);
				}else{
					msg = "error";
					request.setAttribute("msg", msg);
				request.getRequestDispatcher("/login.jsp").forward(request, response);
				}	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
