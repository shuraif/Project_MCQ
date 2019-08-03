package exam;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ExamValidate
 */
@WebServlet("/ExamValidate")
public class ExamValidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExamValidate() {
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
		String username=(String) session.getAttribute("username");
		
		if(username!=null) {
		
		GetExamPassBean examPassBean=new GetExamPassBean();
		String result=examPassBean.getExamPass(username);
		String substring=result.substring(0, 4);
		if(substring.equals("pass")) {
			request.setAttribute("password", result);
			request.getRequestDispatcher("examlogin.jsp").forward(request, response);
		}
		else {
			System.out.println("rsult for exam login is :"+result);
			request.setAttribute("exam_login_status", result);
			request.getRequestDispatcher("user_home_accepted.jsp").forward(request, response);
		}
		}
		else {
			request.setAttribute("status", "   <font color='red'>You must Login first.</font>");
			request.getRequestDispatcher("user_login.jsp").forward(request, response);
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
