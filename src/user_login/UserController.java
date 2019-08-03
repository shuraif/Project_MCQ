package user_login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UserController
 */
@WebServlet("/UserController")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UserController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action=request.getParameter("action");
		HttpSession session=request.getSession();
		if(session.getAttribute("username")!=null&&action!=null	) {
			
		if(action.equals("apply")) {
			System.out.println(session.getAttribute("username"));
			System.out.println(action);
			request.getRequestDispatcher("apply_exam.jsp").forward(request, response);
		}
		else if(action.equals("view")) {
			request.getRequestDispatcher("view_score.jsp").forward(request, response);
		}
		else if(action.equals("logout")) {
			session.setAttribute("username", null);
			request.getRequestDispatcher("user_login.jsp").forward(request, response);
		}}
		else {
			request.setAttribute("status", "   <font color='red'>You must Login first.</font>");
			request.getRequestDispatcher("user_login.jsp").forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}

}
