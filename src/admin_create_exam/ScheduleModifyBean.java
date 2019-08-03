package admin_create_exam;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dbconnection.DBConnection;

public class ScheduleModifyBean implements Serializable{

	private String id;
	private String date;
	private String time;
	private ResultSet rs;
	public ResultSet getRs() {
		return rs;
	}
	public void setRs() {
		
		String sql="select * from exam_table";
		Connection con=DBConnection.getConnection();
		try {
			PreparedStatement pst=con.prepareStatement(sql);
			rs=pst.executeQuery();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public int getSeat() {
		return seat;
	}
	public void setSeat(int seat) {
		this.seat = seat;
	}
	private String duration;
	private int seat; 
	
	
	
}
