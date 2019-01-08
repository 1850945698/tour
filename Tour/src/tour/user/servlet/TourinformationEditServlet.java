package tour.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tour.entity.Tourinformation;
import tour.service.UserService1;

/**
 * Servlet implementation class TourinformationEditServlet
 */
@WebServlet("/TourinformationEditServlet")
public class TourinformationEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TourinformationEditServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//获取业务逻辑层对象，修改是先查询到该对象然后修改
				String id=request.getParameter("id");
				UserService1 ps=new UserService1();
				Tourinformation tif=ps.findTourinformationById(Integer.parseInt(id));
				request.setAttribute("tourinformation", tif);
				request.getRequestDispatcher("edittourinformation.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
