package user_login;

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

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	

    public UserLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Connection con=DBConnection.getConnection();
		String uname=request.getParameter("username");
		String pass=request.getParameter("password");
		
		response.setContentType("text/html");
		try {
			
			PreparedStatement ps=con.prepareStatement("select id,user_id,user_password from user_login where user_id = ? and user_password =?");
			ps.setString(1, uname);
			ps.setString(2, pass);
			System.out.println(uname);
			ResultSet rs=ps.executeQuery();
			if(rs.next())//check password is correct or not
			{
				String id=rs.getString(1);
				System.out.println("id :"+id);
				PreparedStatement pst=con.prepareStatement("select status from user_registration where user_id=?");
				pst.setString(1, id);
				ResultSet rst=pst.executeQuery();
				rst.next();
				
				
				//checking account status
				if(rst.getString(1).equals("temp")) {
					
					HttpSession session=request.getSession();
					request.setAttribute("status", "   <font color='orange'>Your account is not yet activated.</font>");
					request.getRequestDispatcher("/user_login.jsp").forward(request, response);
				}
				
				else if(rst.getString(1).equals("accept")) {
					HttpSession session=request.getSession();
					session.setAttribute("username", uname);//set username in session for future use
					request.getRequestDispatcher("/apply_exam.jsp").forward(request, response);
				}
				else if(rst.getString(1).equals("reject")) {
					request.setAttribute("status", "   <font color='red'>Your Request Rejected.</font>");
					request.getRequestDispatcher("/user_login.jsp").forward(request, response);
					
				}
				
			}
			else {//if password is wrong
				request.setAttribute("status", "   <font color='red'>wrong credentials.</font>");
				request.getRequestDispatcher("/user_login.jsp").forward(request, response);
				
			}
			
			
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
	}

}
