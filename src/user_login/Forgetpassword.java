package user_login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbconnection.DBConnection;

/**
 * Servlet implementation class Forgetpassword
 */
@WebServlet("/Forgetpassword")
public class Forgetpassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Forgetpassword() {
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
		//doGet(request, response);
		Connection con=DBConnection.getConnection();
		String username=request.getParameter("uname");
		String newp=request.getParameter("newpwd");
		String confirm=request.getParameter("confirmpwd");
		PrintWriter pw=response.getWriter();
		
		try {
			PreparedStatement ps=con.prepareStatement("select user_id from user_login where user_id =?");
			
			ps.setString(1, username);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
			
			
			if(rs.getString(1).equals(username)) {
				
				
					PreparedStatement pst=con.prepareStatement("update user_login set user_password =? where user_id=?");
					pst.setString(1, newp);
					pst.setString(2, username);	
					pst.executeQuery();
					con.commit();
					request.getRequestDispatcher("/user_login.jsp").forward(request, response);
					
					System.out.println("passord update");
					
					
				}
				else {
					request.getRequestDispatcher("/forgotpassword.jsp").forward(request, response);
					System.out.println("fail");
					
				}
			}
			
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}

}
