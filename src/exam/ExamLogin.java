package exam;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.org.apache.xalan.internal.xsltc.compiler.sym;

/**
 * Servlet implementation class ExamLogin
 */
@WebServlet("/ExamLogin")
public class ExamLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExamLogin() {
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
		//doGet(request, response);
		HttpSession session=request.getSession();
		
		String exam_uname=request.getParameter("exam_uname");
		String pass=request.getParameter("pass");
		String username=(String)session.getAttribute("username");
		if(username!=null) {
		
		System.out.println("exam uname="+exam_uname);
		System.out.println("username="+username);
		
		if(exam_uname.equals(username)){
			System.out.println("inside exam login checking if");
			ExamLoginBean examLoginBean=new ExamLoginBean();
			examLoginBean.setExam_pass(pass);
			examLoginBean.setUsername(username);
			examLoginBean.setSchedule_id();
			String result=examLoginBean.validateExamLogin();
			if(result.equals("success"))
			{
				//System.out.println("correct details");
				/* session=request.getSession();*/
				session.setAttribute("schedule_id", examLoginBean.getSchedule_id());
				System.out.println("im going to exam");
				session.setAttribute("exam_status","false");
				request.getRequestDispatcher("Exam").forward(request, response);
			}
			else if(result.equals("fails"))
			{
				//System.out.println("login fails");
				request.setAttribute("status", "   <font color='red'>wrong credentials.</font>");
				request.getRequestDispatcher("examlogin.jsp").forward(request, response);
			}
			else {
				
			}
			
		}}
		else {
			request.setAttribute("status", "   <font color='red'>You must Login first.</font>");
			request.getRequestDispatcher("user_login.jsp").forward(request, response);
		}
		
		
		
		
		
	}

}
