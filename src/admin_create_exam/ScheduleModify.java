package admin_create_exam;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
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


@WebServlet("/ScheduleModify")
public class ScheduleModify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ScheduleModify() {
        super();
   
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session=request.getSession();
		if(session.getAttribute("adminname")==null) {//checking login status
			request.setAttribute("status", "   <font color='red'>You need to login first.</font>");
			request.getRequestDispatcher("admin_login.jsp").forward(request, response);
		}
		
		String scheduleid=request.getParameter("scheduleid");
		
		
		response.setContentType("text/html");

		String date=request.getParameter("exam_date");
		String start_time=request.getParameter("start_time");
		String duration=request.getParameter("end_time");
	
		String seat=request.getParameter("seats");
		
		
		
		System.out.println(scheduleid);
		System.out.println(date);
		System.out.println(start_time);
		System.out.println(duration);
		System.out.println(seat);
		
		
		

		Connection con=DBConnection.getConnection();
		PreparedStatement stmt=null;
		try {
			
			String sql="update exam_table set exam_date=?,start_time=?,end_time=?,seat=? where exam_id=?";
			
			stmt=con.prepareStatement(sql);
			
			
			stmt.setString(1,date);
			stmt.setString(2,start_time);
			stmt.setString(3,duration);
			stmt.setString(4,seat);
			stmt.setString(5,scheduleid);
			
			stmt.executeUpdate();//updating exam details
			con.commit();
			request.setAttribute("alertMsg", "Modify success");//setting staus
			request.setAttribute("status", "<font color='green'> Modify success</font>");
			request.getRequestDispatcher("modifyscheduleselect.jsp").forward(request, response);//dispatching to back
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
			/*PrintWriter pw=response.getWriter();
			pw.println("Schedule not available");*/
			System.out.println("inside sql exception");
			
			request.setAttribute("alertMsg", "Schedule not available");//setting staus
			request.setAttribute("status", "<font color='red'> Schedule not available</font>");
			request.getRequestDispatcher("modifyscheduleselect.jsp").forward(request, response);
			//e.printStackTrace();
			
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("inside exception");
			
			request.setAttribute("alertMsg", "Schedule not available");//setting staus
			request.setAttribute("status", "<font color='red'> Schedule not available</font>");
			request.getRequestDispatcher("modifyscheduleselect.jsp").forward(request, response);
			
		}
		
		
		
		
		
		
		
		
	}

}
