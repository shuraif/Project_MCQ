package admin_login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AdminController
 */
@WebServlet("/AdminController")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session=request.getSession();
		if(session.getAttribute("adminname")==null) {
			request.setAttribute("status", "   <font color='red'>You must login first.</font>");
			request.getRequestDispatcher("admin_login.jsp").forward(request, response);
		}
		
		String action=request.getParameter("action");
		if(action.equals("addschedule")) {
			
			request.getRequestDispatcher("addschedule.jsp").forward(request, response);
		}
		else if(action.equals("modifyschedule")) {
			request.getRequestDispatcher("modifyscheduleselect.jsp").forward(request, response);
		}
	
		else if(action.equals("verifyuser")) {
			request.getRequestDispatcher("verifyUser.jsp").forward(request, response);	
		}
		else if(action.equals("viewscore")) {
			request.getRequestDispatcher("viewscoreadmin.jsp").forward(request, response);
		}
		else if(action.equals("addquestions")) {
			request.getRequestDispatcher("addquestions.jsp").forward(request, response);
		}
		else if(action.equals("removequestions")) {
			request.getRequestDispatcher("removequestions.jsp").forward(request, response);
		}
		else if(action.equals("logout")) {
			session.setAttribute("adminname", null);
			request.getRequestDispatcher("admin_login.jsp").forward(request, response);
			
		}
		else if(action.equals("accepted")) {
		
			request.getRequestDispatcher("Acceptedusers.jsp").forward(request, response);
			
		}
		else if(action.equals("rejected")) {
			
			request.getRequestDispatcher("RejectedUsers.jsp").forward(request, response);
			
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
