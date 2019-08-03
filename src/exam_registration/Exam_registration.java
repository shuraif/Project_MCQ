package exam_registration;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dbconnection.DBConnection;

public class Exam_registration implements java.io.Serializable{
	
	public ResultSet rs,rs1;
	String userid;
	public String name;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public void examdetails() {
		
			try {
		Connection	con=DBConnection.getConnection(); /*DriverManager.getConnection(url,"hr","pass");*/
		System.out.println("Connected Successfully");
			
		String sql="select exam_date,start_time,end_time from exam_table where exam_id=exam_id";
		PreparedStatement Stmt=con.prepareStatement(sql);
        rs = Stmt.executeQuery();
		
		}catch(Exception exception) {
			exception.printStackTrace();
		}
}
	public void getName(String username) {
		try {
			
			
			Connection	con=DBConnection.getConnection();
			
			String sql="select id from user_login where user_id=?";
			String user_id="";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, username);
			ResultSet username_rs=pst.executeQuery();
			if(username_rs.next()) {
			
				user_id=username_rs.getString(1);
				System.out.println("id hashahf:"+user_id);
			}
			
	
			PreparedStatement Stm=con.prepareStatement("select first_name,last_name from user_registration where user_id=?");
			Stm.setString(1, user_id);
		 rs1 = Stm.executeQuery();
		 if(rs1.next()) {
			 name=rs1.getString(1)+" "+rs1.getString(2);
		 }
		}catch(Exception exception) {
			exception.printStackTrace();
		}
	}
	
	
}
