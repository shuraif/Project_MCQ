package exam;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dbconnection.DBConnection;

public class ViewScoreBeanAdmin implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	 public ResultSet rs;
	
public void 	getScore(){
	
	
	try {
		System.out.println("inside score");
		Connection con = DBConnection.getConnection();
		PreparedStatement ps = con.prepareStatement("select * from score");
		rs = ps.executeQuery();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
}

}
