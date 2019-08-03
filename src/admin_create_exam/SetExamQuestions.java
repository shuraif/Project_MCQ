package admin_create_exam;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dbconnection.DBConnection;

public class SetExamQuestions {
	
	PreparedStatement pst;
	ResultSet rs;
	Connection con=DBConnection.getConnection();
	String easy_sql="SELECT question_id FROM ( SELECT * FROM   easy_question ORDER BY DBMS_RANDOM.VALUE) WHERE  rownum < 11";
	String med_sql="SELECT question_id FROM ( SELECT * FROM   med_question ORDER BY DBMS_RANDOM.VALUE) WHERE  rownum < 11";
	String hard_sql="SELECT question_id FROM ( SELECT * FROM   hard_question ORDER BY DBMS_RANDOM.VALUE) WHERE  rownum < 11";
	String schedule_id;
	
	void createQuestions(String schedule_id)//generating random question
	{
		this.schedule_id=schedule_id;
		
		try {
			 pst=con.prepareStatement(easy_sql);//selecting question from easy questions
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				System.out.println("inside while");
				String insert_query="insert into random_question values(rand_question_sequence.nextval,?,?,?)";
				pst=con.prepareStatement(insert_query);
				pst.setString(1,schedule_id );
				pst.setString(2, rs.getString(1));
				pst.setString(3,"easy");
				pst.executeQuery();
				con.commit();
				
				
			}
			
			
			 pst=con.prepareStatement(med_sql);//selecting question from medium questions
			 rs=pst.executeQuery();
				while(rs.next()) {
					
					String insert_query="insert into random_question values(rand_question_sequence.nextval,?,?,?)";
					pst=con.prepareStatement(insert_query);
					pst.setString(1,schedule_id );
					pst.setString(2, rs.getString(1));
					pst.setString(3,"med");
					pst.executeQuery();
					
					
				}
				
				 pst=con.prepareStatement(hard_sql);//selecting question from hard questions
				 rs=pst.executeQuery();
					while(rs.next()) {
						
						String insert_query="insert into random_question values(rand_question_sequence.nextval,?,?,?)";
						pst=con.prepareStatement(insert_query);
						pst.setString(1,schedule_id );
						pst.setString(2, rs.getString(1));
						pst.setString(3,"hard");
						pst.executeQuery();
						
						
					}
			
			
			
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	
	
	

}
