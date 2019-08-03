
package admin_verify_user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dbconnection.DBConnection;

public class Verify_userBean implements java.io.Serializable{
	
	public ResultSet rs;
	public void verify() {
		
			try {
		/*Class.forName("oracle.jdbc.driver.OracleDriver");
		String url="jdbc:oracle:thin:@localhost:1521/XE";*/
		Connection	con=DBConnection.getConnection(); /*DriverManager.getConnection(url,"hr","pass");*/
		System.out.println("Connected Successfully");
			
		String sql="select user_id,first_name,last_name,email,mobile from user_registration where status= 'temp'";
		PreparedStatement Stmt=con.prepareStatement(sql);
        rs = Stmt.executeQuery();
		//while(rs.next()) {
	//String user_id=rs.getString("user_id");
		//String full_name=rs.getString("full_name");
	//String email=rs.getString("email");
	//	String mobile_number=rs.getString("mobile_number");	
		//System.out.println(user_id +" "+full_name+ " " +email+" "+mobile_number);
		
	//}
		}catch(Exception exception) {
			exception.printStackTrace();
		}
}
}
