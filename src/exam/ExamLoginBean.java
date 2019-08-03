package exam;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import dbconnection.DBConnection;

public class ExamLoginBean {
private String exam_pass;
private String schedule_id;
private String username;
Connection con;
private ResultSet rs;
PreparedStatement pst;
	


	public String validateExamLogin() {
		// TODO Auto-generated method stub
		String sql="select * from exam_table where exam_id=?";
		con=DBConnection.getConnection();
		try {
		System.out.println("schedule_id :"+schedule_id);
		
			pst=con.prepareStatement(sql);
			pst.setString(1,schedule_id);
			ResultSet rs=pst.executeQuery();
			
			rs.next();
			
			
			
			String exam_date=rs.getString(2);
			String start_time=rs.getString(3);
			String end_time=rs.getString(4);
		
			
			//checking exam date is correct or not
			

		
			
			
			
			
			
			
			
			
			
			
			
			if(rs.getString(6).equals(exam_pass)) {
				System.out.println("exam login password correct");
				
				
				
				
				
				DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-d");
				Calendar cal = Calendar.getInstance();
				String currentDate=dateFormat.format(cal.getTime());
				System.out.println("today date:"+currentDate);
				
				if(currentDate.equals(exam_date)) {
					System.out.println("exam date is correct");
					
					SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
					String str = sdf.format(new Date());
					System.out.println("current time :"+str);
					if(str.compareTo(start_time)<0) {
						System.out.println("your exam is at "+start_time+"wait for it :"+start_time.compareTo(str));
						return"your exam is at "+start_time+"wait for it";
					}
					else if(str.compareTo(start_time)>0&&str.compareTo(end_time)<0) {
						System.out.println("exam time");
						
					}
					else {
						System.out.println("exam time is over");
					}
					
					
					
					
				}
				else if(currentDate.compareTo(exam_date)<0) {
					System.out.println("up coming exam. your exam is on "+exam_date);
				}
				else {
					System.out.println("exam date is over");
				}
				
				
				
				
				
				
				
				
				
				
				
				
				
				return "success";
			}
			else {
				System.out.println("exam login failed");
				return "fails";
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	
		return "fails";
	}


	public void setSchedule_id() {
		con=DBConnection.getConnection();
		String sql="select exam_id from exam_registration  where user_id=? ";
		try {
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, username);
			ResultSet schedule_rs=pst.executeQuery();
			schedule_rs.next();
			schedule_id=schedule_rs.getString(1);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
			
			//if no exam registered for the user then this exception will occur
			e.printStackTrace();
		}
		
		
		
		
	
	}


	public String getSchedule_id() {
		return schedule_id;
	}


	


	public void setUsername(String username) {
		this.username = username;
	}




	public void setExam_pass(String exam_pass) {
		this.exam_pass = exam_pass;
	}
	public ResultSet getRs() {
		return rs;
	}


}
