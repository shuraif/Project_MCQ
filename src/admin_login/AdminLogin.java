package admin_login;

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
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
		
		String userName=request.getParameter("admin_user_name");
		String password=request.getParameter("admin_password");
	/*	System.out.println(userName);
		System.out.println(password);*/
		Connection con=DBConnection.getConnection();
		CallableStatement stmt=null;
		try {
			stmt=con.prepareCall("{call validateAdmin(?,?,?)}");
			stmt.registerOutParameter(3,java.sql.Types.VARCHAR);
			stmt.setString(1, userName);
			stmt.setString(2,password);
			stmt.setString(3,"notokay");
			stmt.executeQuery();
			String okay=stmt.getString(3);
			if(okay.equals("okay"))
			{		
				//chain.doFilter(request, response);
				//System.out.println("validation success");\
				
				HttpSession session=request.getSession();
				session.setAttribute("adminname", userName);
				request.getRequestDispatcher("addschedule.jsp").forward(request, response);
			}
			else
			{
				//System.out.println("Try again");
				//System.out.println(okay);
				//PrintWriter pw=response.getWriter();
				response.setContentType("text/html");
				//pw.println("wrong details try again");
				
				request.setAttribute("status", "   <font color='red'>wrong credentials.</font>");
				
				RequestDispatcher rd=request.getRequestDispatcher("admin_login.jsp");
				rd.include(request, response);
				
				
				
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("inside admin login servlet");
		doGet(request, response);
	}

}
