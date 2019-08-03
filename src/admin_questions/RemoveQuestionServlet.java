package admin_questions;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RemoveQuestionServlet
 */
@WebServlet("/RemoveQuestionServlet")
public class RemoveQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RemoveQuestionServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		HttpSession session=request.getSession();
		if(session.getAttribute("adminname")==null) {//checking if session exist or not.
			request.setAttribute("status", "   <font color='red'>You need to login first.</font>");
			request.getRequestDispatcher("admin_login.jsp").forward(request, response);
		}
		
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
String choice=request.getParameter("option");
String id = request.getParameter("questionumber");
System.out.println(id);
System.out.println(choice);
		
		
			
			ModifyBean question = new ModifyBean();
			
			question.remove_question(id);
			
			PrintWriter out = response.getWriter();
			out.print("question removed sucessfully");
			response.setContentType("text/html");
			request.getRequestDispatcher("/removequestions.jsp").include(request, response);
			
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		ModifyBean updateQuestion = new ModifyBean();
		String questionId=request.getParameter("questionid");
		String question=request.getParameter("question");
		String optionA=request.getParameter("optiona");
		String optionB=request.getParameter("optionb");
		String optionC=request.getParameter("optionc");
		String optionD=request.getParameter("optiond");
		String answer=request.getParameter("answer");
		updateQuestion.setQuestion_number(questionId);
		updateQuestion.setQuestion(question);
		updateQuestion.setOptionA(optionA);
		updateQuestion.setOptionB(optionB);
		updateQuestion.setOptionC(optionC);
		updateQuestion.setOptionD(optionD);
		updateQuestion.setAnswer(answer);
		updateQuestion.updateQuestion();
		PrintWriter out = response.getWriter();
		out.println("updated sucessfully");
		request.getRequestDispatcher("/removequestions.jsp").include(request, response);
	
		
		

	}

}
