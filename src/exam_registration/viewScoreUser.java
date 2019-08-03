package exam_registration;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import dbconnection.DBConnection;

public class viewScoreUser implements java.io.Serializable{
	private String username;

	public ResultSet rs;
	public void fetchScore(String username) {
		
			try {
				Connection con=DBConnection.getConnection();
		System.out.println("Connected Successfully");
		//String sql="select * from viewscore";
		//String sql="select viewscore.* from viewscore,user_login where viewscore.user_id=login_user.id ";
		
		String sql="select * from score where user_id=?";
		PreparedStatement stmt=con.prepareStatement(sql);
		stmt.setString(1, username);
        rs = stmt.executeQuery();
		
		}catch(Exception exception) {
			exception.printStackTrace();
		}
}
	
	public void setUsername(String username) {
		this.username = username;
	}
}



