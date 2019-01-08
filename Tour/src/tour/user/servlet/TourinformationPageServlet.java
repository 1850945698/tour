package tour.user.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tour.entity.Page;
import tour.entity.Tourinformation;
import tour.service.UserService1;

/**
 * Servlet implementation class TourinformationPageServlet
 */
@WebServlet("/TourinformationPageServlet")
public class TourinformationPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TourinformationPageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//获取请求页参数
				String pageNum=request.getParameter("pageNum");
				int num=0;
				if(pageNum==null || pageNum.equals("")){
					num=1;
				}else{
					num=Integer.parseInt(pageNum);
				}
				//调用业务逻辑层对象，处理结果实现跳转
				UserService1 ps=new UserService1();
				int count=ps.findCountByPage();
				List<Tourinformation> list=ps.findByPage(num, 4);
				Page<Tourinformation> tif=new Page<Tourinformation>(num,4);
				tif.setList(list);
				tif.setTotalCount(count);
				request.setAttribute("page", tif);
				request.getRequestDispatcher("tourinformationlist.jsp").forward(request, response);
				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
