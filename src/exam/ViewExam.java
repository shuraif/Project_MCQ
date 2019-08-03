package exam;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ViewExam
 */
@WebServlet("/ViewExam")
public class ViewExam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewExam() {
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
		String username=(String)session.getAttribute("username");
		
		if(username!=null) {
		
	//	System.out.println("sessin value got"+username);
		ViewExamBean viewExamBean=new ViewExamBean();
		viewExamBean.setUsername(username);
		//viewExamBean.setRs();
		boolean b=viewExamBean.fetchExam();
		if(b) {
			        
			request.setAttribute("exam_avail", "yes");
			request.getRequestDispatcher("viewexam.jsp").forward(request, response);
		}
		else {
			System.out.println("inside else(b)");
			request.setAttribute("exam_avail", "no");
			request.getRequestDispatcher("viewexam.jsp").include(request, response);
		}}
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
