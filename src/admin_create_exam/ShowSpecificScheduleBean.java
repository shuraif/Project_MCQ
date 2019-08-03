package admin_create_exam;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dbconnection.DBConnection;

public class ShowSpecificScheduleBean {

	private ResultSet rs;
	private String scheduleid;
	
	public ResultSet getRs() {
		return rs;
	}
	public void setRs() {
		
		Connection con=DBConnection.getConnection();
		String sql="select * from exam_table where exam_id=?";
		try {
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, scheduleid);
			rs=pst.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	public String getScheduleid() {
		return scheduleid;
	}
	public void setScheduleid(String scheduleid) {
		this.scheduleid = scheduleid;
		System.out.println(scheduleid);
	}
}
