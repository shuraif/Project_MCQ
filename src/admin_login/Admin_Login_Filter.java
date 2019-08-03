package admin_login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import dbconnection.DBConnection;


@WebFilter(filterName="/Admin_Login_Filter",urlPatterns= {"/AdminHome"})
public class Admin_Login_Filter implements Filter {

   
    public Admin_Login_Filter() {
       
    }

	
	public void destroy() {
	
	}

	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
	
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
				//System.out.println("validation success");
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

	
	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}
