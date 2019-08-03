package exam_registration;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dbconnection.DBConnection;

public class GetExamScheduleBean implements Serializable {
	private ResultSet rs;
	private ResultSet rs1;


	public void setRs() {
		
		String sql="select * from exam_table where  exam_date >TO_CHAR(sysdate,'yyyy-MM-dd')";
		Connection con=DBConnection.getConnection();
		try {
			PreparedStatement pst=con.prepareStatement(sql);
			rs=pst.executeQuery();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}

	public ResultSet getRs() {
		return rs;
	}
	
	
	
	public ResultSet getRs1() {
		return rs1;
	}

	public void setRs1(String date_Exam) {
		try {
			Connection	con=DBConnection.getConnection();
			
			System.out.println("dateofexam");
			System.out.println(date_Exam);
			System.out.println("hello");
			String sql="select * from exam_table where exam_date=?";
			
			PreparedStatement stmt1=con.prepareStatement(sql);
			stmt1.setString(1, date_Exam);
			rs1 = stmt1.executeQuery();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
	

	
}
