package admin_verify_user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbconnection.DBConnection;

@WebServlet("/AccountActivattion")
public class AccountActivattion extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public AccountActivattion() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		HttpSession session=request.getSession();
		if(session.getAttribute("adminname")==null) {//checking if session exist or not.
			request.setAttribute("status", "   <font color='red'>You need to login first.</font>");
			request.getRequestDispatcher("admin_login.jsp").forward(request, response);
		}
		
		
		response.setContentType("text/html");
		Connection con=DBConnection.getConnection();
		PrintWriter out = response.getWriter();  
		
		try{  
			
			  int val=Integer.valueOf(request.getParameter("user_id"));
			PreparedStatement pst=con.prepareStatement("update user_registration SET status='accept' where user_id="+val);
			
			System.out.println(val);
			pst.executeQuery(); 
			
			/*pst.setString(1, "accept");
			pst.setInt(2, val);
			*/
			//out.println("User accepted<br>");
			request.getRequestDispatcher("verifyUser.jsp").include(request, response);
			
			
			      
			          
			}
		catch (Exception e2) {
				System.out.println(e2);}  
			          
			out.close();  
			}  
			  
			
		



	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
	}

}
