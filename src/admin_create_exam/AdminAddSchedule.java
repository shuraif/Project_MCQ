package admin_create_exam;

import java.io.IOException;
import java.sql.CallableStatement;
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
import javax.websocket.Session;

import dbconnection.DBConnection;

/**
 * Servlet implementation class AdminAddSchedule
 */
@WebServlet("/AddSchedule")
public class AdminAddSchedule extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAddSchedule() {
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
		if(session.getAttribute("adminname")==null) {//checking is alredy login or not
			request.setAttribute("status", "   <font color='red'>You need to login first.</font>");
			request.getRequestDispatcher("admin_login.jsp").forward(request, response);
		}
		
		String date=request.getParameter("exam_date");
		String start_time=request.getParameter("start_time");
		String duration=request.getParameter("end_time");
	
		String seat=request.getParameter("seats");
		
		
		

		Connection con=DBConnection.getConnection();
		CallableStatement stmt=null;
		
		
		try {
			System.out.println("inside try");
		/*	stmt=con.prepareCall("{call insertSchedule(?,?,?,?,?)}");
			
			stmt.setString(1,"0");
			stmt.setString(2,date);
			stmt.setString(3,start_time);
			stmt.setString(4,duration);
			stmt.setString(5,seat);
			
			stmt.executeUpdate();
			con.commit();
			*/
			
			String schedule_sql="insert into exam_table values('schedule_'||schedule_sequence.nextval,?,?,?,?,schedule_pass_sequence.nextval)";
			PreparedStatement schedule_stmt=con.prepareStatement(schedule_sql);
			
			schedule_stmt.setString(1,date);
			schedule_stmt.setString(2,start_time);
			schedule_stmt.setString(3,duration);
			schedule_stmt.setString(4,seat);
			
			schedule_stmt.executeUpdate();
			con.commit();
			
			
			
			
			String sql="select schedule_sequence.currval from dual";
	
			PreparedStatement pst=con.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			rs.next();
			
			String scedule_id="schedule_"+rs.getString(1);
			System.out.println("current schedule "+scedule_id);
			
			SetExamQuestions setExamQuestions=new SetExamQuestions();
			setExamQuestions.createQuestions(scedule_id);
			
			
			request.setAttribute("status", "<font color='green'> success</font>");//setting success message
			request.getRequestDispatcher("addschedule.jsp").forward(request, response);//redirect into add new question page
			
			
			
			
		} catch (SQLException e) {//catch block for handling SQLException
			// TODO Auto-generated catch block
			e.printStackTrace();
			request.setAttribute("status", "<font color='red'> failed</font>");
			request.getRequestDispatcher("addschedule.jsp").forward(request, response);
		}
		
		
		
		
		
	}

}
