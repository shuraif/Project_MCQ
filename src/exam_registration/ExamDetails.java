package exam_registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbconnection.DBConnection;

@WebServlet("/ExamDetails")
public class ExamDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ResultSet rs1;

	public ExamDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		Connection con = DBConnection.getConnection();

		HttpSession session = request.getSession();
		String userid = (String) session.getAttribute("username");

		if (userid != null) {

			Exam_registration reg = new Exam_registration();
			reg.setUserid(userid);

			String examid = (String) session.getAttribute("examid");
			System.out.println("Examid" + examid);

			try {

				PreparedStatement pst = con
						.prepareStatement("insert into exam_registration values(apply_id.nextval,?,?,?)");

				System.out.println("hiii");

				pst.setString(1, examid);
				pst.setString(2, userid);
				pst.setString(3, "Applied");
				pst.executeQuery();
				request.getRequestDispatcher("/apply_exam.jsp").forward(request, response);

				out.println("Successfully Applied<br>");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} 
		else {
			request.setAttribute("status", "   <font color='red'>You must Login first.</font>");
			request.getRequestDispatcher("user_login.jsp").forward(request, response);
		}
	}

}
