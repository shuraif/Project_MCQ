package exam_registration;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbconnection.DBConnection;

/**
 * Servlet implementation class View_schedule
 */
@WebServlet("/View_schedule")
public class View_schedule extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public View_schedule() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	
			PrintWriter out = response.getWriter();
			HttpSession session=request.getSession();
			if(session.getAttribute("username")!=null) {
			String dateOfExam = request.getParameter("date");
			request.setAttribute("date", dateOfExam);
			//out.print(dateOfExam);
			response.setContentType("text/html");
			request.getRequestDispatcher("apply_exam.jsp").forward(request, response);
			}
			else {
				request.setAttribute("status", "   <font color='red'>You must Login first.</font>");
				request.getRequestDispatcher("user_login.jsp").forward(request, response);
			}

		
	}

}
