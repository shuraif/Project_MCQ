package admin_questions;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbconnection.DBConnection;

/**
 * Servlet implementation class AdminAddQuestions
 */
@WebServlet("/AdminAddQuestions")
public class AdminAddQuestions extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public AdminAddQuestions() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		HttpSession session=request.getSession();
		if(session.getAttribute("adminname")==null) {//checking if session exist or not.
			request.setAttribute("status", "   <font color='red'>You need to login first.</font>");
			request.getRequestDispatcher("admin_login.jsp").forward(request, response);
		}
		
		
		
		//System.out.println("inside add questions");
		String ques=request.getParameter("question");
		String option_a=request.getParameter("option_a");
		String option_b=request.getParameter("option_b");
		String option_c=request.getParameter("option_c");
		String option_d=request.getParameter("option_d");
		String answer=request.getParameter("answer");
		String difficulty=request.getParameter("difficulty");
		Connection con=DBConnection.getConnection();
		CallableStatement stmt=null;
		
		try {
			if(difficulty.equals("Easy")) {
				//adding question to easy table
				stmt=con.prepareCall("{call insertEasyQuestion(?,?,?,?,?,?,?)}");
				stmt.setString(1, "");
				stmt.setString(2, ques);
				stmt.setString(3,option_a );
				stmt.setString(4, option_b);
				stmt.setString(5, option_c);
				stmt.setString(6, option_d);
				stmt.setString(7, answer);
				stmt.executeUpdate();
				response.setContentType("text/html");
				request.setAttribute("success", "<font color='green'>success</font>");
			RequestDispatcher rd=request.getRequestDispatcher("addquestions.jsp");
			rd.include(request, response);
			}
			else if(difficulty.equals("Medium")) {
				//adding question to medium question table
				stmt=con.prepareCall("{call insertMedQuestion(?,?,?,?,?,?,?)}");
				stmt.setString(1, "");
				stmt.setString(2, ques);
				stmt.setString(3,option_a );
				stmt.setString(4, option_b);
				stmt.setString(5, option_c);
				stmt.setString(6, option_d);
				stmt.setString(7, answer);
				stmt.executeUpdate();
				System.out.println("inside medium");
				response.setContentType("text/html");
				request.setAttribute("success", "<font color='green'>success</font>");
			RequestDispatcher rd=request.getRequestDispatcher("addquestions.jsp");
			rd.include(request, response);
			}
			else if(difficulty.equals("Hard")) {
				//adding question to hard question table
				stmt=con.prepareCall("{call insertHardQuestion(?,?,?,?,?,?,?)}");
				stmt.setString(1, "");
				stmt.setString(2, ques);
				stmt.setString(3,option_a );
				stmt.setString(4, option_b);
				stmt.setString(5, option_c);
				stmt.setString(6, option_d);
				stmt.setString(7, answer);
				stmt.executeUpdate();
				response.setContentType("text/html");
			//PrintWriter pw=response.getWriter();
			//pw.println("Question successfully added.");
			
		request.setAttribute("success", "<font color='green'>success</font>");
			
			RequestDispatcher rd=request.getRequestDispatcher("addquestions.jsp");
			rd.forward(request, response);
				
				
				
				
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
	}

}
