package admin_verify_user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dbconnection.DBConnection;

public class Accepted_User_List implements java.io.Serializable {
public ResultSet rs;
public void readitem() {
	Connection con=DBConnection.getConnection();
	try {
		PreparedStatement ps=con.prepareStatement("select * from user_registration where status='accept'");
		rs=ps.executeQuery();
	}catch(Exception e) {
		e.printStackTrace();
	}
}
}
