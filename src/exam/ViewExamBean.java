package exam;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dbconnection.DBConnection;

public class ViewExamBean implements Serializable{
	
	public ResultSet rs;
	private String username;
	String scheduleid;
	Connection con;
	PreparedStatement pst;
	private ResultSet examDeatils;
	
	public ResultSet getExamDeatils() {
		return examDeatils;
	}


	public void setExamDeatils(String scheduleid) {
		this.scheduleid=scheduleid;
		
		String sql="select*from exam_table where exam_id=?";
		con=DBConnection.getConnection();
		try {
			pst=con.prepareStatement(sql);
			pst.setString(1, scheduleid);
			examDeatils=pst.executeQuery();
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	}

	
	
	
	
	public void setUsername(String username) {
		this.username = username;
	}


	public void setRs() {
		System.out.println("inside setRs");
		con=DBConnection.getConnection();
		String sql="select * from exam_registration where user_id=?";
		try {
			pst=con.prepareStatement(sql);
			pst.setString(1, username);
			rs=pst.executeQuery();
		
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	public ResultSet getRs() {
		return rs;
	}

	
	
	boolean fetchExam() {
		System.out.println("set rs calling from fetchexam");
		setRs();
		try {
			if(rs.next()) {
				System.out.println("rs not null");
				
				
				
				return true;
			}
			else {
				System.out.println("rs  null");
				return false;
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
		
		
		
	}
	
	
	
	

	

}
