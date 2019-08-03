package admin_create_exam;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbconnection.DBConnection;

/**
 * Servlet implementation class ScheduleDelete
 */
@WebServlet("/ScheduleDelete")
public class ScheduleDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public ScheduleDelete() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session=request.getSession();
		if(session.getAttribute("adminname")==null) {//checking login or  not
			request.setAttribute("status", "   <font color='red'>You need to login first.</font>");
			request.getRequestDispatcher("admin_login.jsp").forward(request, response);
		}
		
		String scheduleid=request.getParameter("scheduleid");
		Connection con=DBConnection.getConnection();
		PreparedStatement stmt=null;
		try {
			String del_random_question="delete from random_question where exam_id=?";
			stmt=con.prepareStatement(del_random_question);
			stmt.setString(1,scheduleid);
			stmt.executeQuery();//delete questions assigned for that exam
			con.commit();
			
			String del_examreg="delete from exam_registration where exam_id=?";
			stmt=con.prepareStatement(del_examreg);
			stmt.setString(1,scheduleid);
			stmt.executeQuery();//delete registration details of particular exam
			con.commit();
			
			
			
			String sql="delete from exam_table where exam_id=?";
			stmt=con.prepareStatement(sql);
			stmt.setString(1,scheduleid);
			stmt.executeQuery();//deleteing exam details from exam_table
			con.commit();
			request.setAttribute("status", "<font color='green'> Delete success</font>");//setting status
			request.getRequestDispatcher("modifyscheduleselect.jsp").forward(request, response);//redirecting back
			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
			
				e.printStackTrace();
				request.setAttribute("status", "<font color='red'> Delete Failed</font>");//setting status
				request.getRequestDispatcher("modifyscheduleselect.jsp").forward(request, response);//redirecting back
			}
			
			
		
		
	}

}
