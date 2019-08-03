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

public class GetExamPassBean {

	Connection con;
	PreparedStatement pst;

	public String getExamPass(String userid) {

		String sql = "select * from exam_registration where user_id=?";
		con = DBConnection.getConnection();
		ResultSet rs=null;
			// System.out.println("schedule_id :"+schedule_id);
			System.out.println("inside try");
			try {
				pst = con.prepareStatement(sql);
				pst.setString(1, userid);
				 rs = pst.executeQuery();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			try {
				if(rs.next()) {
					System.out.println("user registered for one exam :"+ rs.getString(2));
					
					sql = "select * from exam_table where exam_id=?";
					PreparedStatement pst2 = con.prepareStatement(sql);
					pst2.setString(1, rs.getString(2));
					System.out.println("ithum printaakunnund");
					ResultSet rs2 = pst2.executeQuery();
					
					
					rs2.next();
					
					String exam_date = rs2.getString(2);
					String start_time = rs2.getString(3);
					String end_time = rs2.getString(4);
					String pass = rs2.getString(6);

					System.out.println(exam_date);
					System.out.println(pass);
					
					System.out.println("exam date"+exam_date);
					
					DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-d");
					Calendar cal = Calendar.getInstance();
					String currentDate = dateFormat.format(cal.getTime());
					
					System.out.println("today date:" + currentDate);

					if (currentDate.equals(exam_date)) {
						System.out.println("exam date is correct");

						SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
						String str = sdf.format(new Date());
						System.out.println("current time :" + str);
						if (str.compareTo(start_time) < 0) {
							System.out.println("your exam is at " + start_time + "wait for it :" + start_time.compareTo(str));
							return "your exam is at " + start_time + "wait for it";
						} else if (str.compareTo(start_time) > 0 && str.compareTo(end_time) < 0) {
							System.out.println("use password :" + pass);
							return "password :" + pass;

						} else {
							System.out.println("Your exam was on : "+exam_date+" at "+start_time +"exam time is over");
							return "sorry...!.exam time is over";
						}

					} 
					else if (currentDate.compareTo(exam_date) < 0) {
						System.out.println("wait for your exam. your exam is on " + exam_date);
						return (" your exam is on " + exam_date + ". prepare well..all the best");
					} 
					else {
						System.out.println("exam date is over");
						return (" your exam date is over");
					}
				} 
				else {
					return "you didnt applied for any exam";
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

	return "fail";

	}

}
