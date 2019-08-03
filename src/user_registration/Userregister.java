package user_registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbconnection.DBConnection;

/**
 * Servlet implementation class Userregister
  */
@WebServlet("/Userregister")
public class Userregister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Userregister() {
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
		 //System.out.println("1");
		response.setContentType("text/html");  
		Connection con=DBConnection.getConnection();
		
		PrintWriter out = response.getWriter();  
		          
		String fname=request.getParameter("firstname");  
		String lname=request.getParameter("lastname");  
		String email=request.getParameter("email");  
		String mobile=request.getParameter("mobile");
		String uname=request.getParameter("username");  
		String pass=request.getParameter("password");
		
		          
		try{  
			
			  
		PreparedStatement pst=con.prepareStatement("insert into user_registration values(user_sequence.nextval,?,?,?,?,?)");
		PreparedStatement ps=con.prepareStatement("insert into user_login values(user_sequence.currval,?,?)");
		
		System.out.println("hiii");
		pst.setString(1, fname);
		pst.setString(2, lname);
		pst.setString(3, email);
		pst.setString(4, mobile);
		pst.setString(5, "temp");
		
		ps.setString(1, uname);
		ps.setString(2, pass);
		
		
		pst.executeQuery(); 
		ps.executeQuery(); 
		
		//out.println("Successfully Registered<br>");
		request.setAttribute("status", "   <font color='green'>Successfully registred.</font>");
		request.getRequestDispatcher("user_login.jsp").forward(request, response);
		
		
		      
		          
		}catch (Exception e2) {System.out.println(e2);}  
		          
		out.close();  
		}  
		  
		
	}


