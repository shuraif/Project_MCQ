package dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
		private static final String DB_DRIVER_CLASS="oracle.jdbc.driver.OracleDriver";
		private static final String DB_URL="jdbc:oracle:thin:@localhost:1521:xe";

		private static final String DB_USERNAME="hr";
		private static final String DB_PASSWORD="pass";
		
		
		public static Connection getConnection() {
			Connection con=null;
			
			try {
				Class.forName(DB_DRIVER_CLASS);
				con=DriverManager.getConnection(DB_URL,DB_USERNAME,DB_PASSWORD);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			return con;
			
		}
	}
