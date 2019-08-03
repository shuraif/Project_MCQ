package exam;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dbconnection.DBConnection;

public class GetQuestion {

	PreparedStatement pst;
	Connection con=DBConnection.getConnection();
	ResultSet question_set;
	static int order_num=0;
public void setQuestionResultSet(String exam_id) {
		String sql = "select * from random_question where exam_id=? ";
		con = DBConnection.getConnection();

		try {
			pst = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			pst.setString(1, exam_id);
			question_set = pst.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

public ResultSet getQuestion_set() {
	return question_set;
}

public ResultSet getNextQuestion(String questionid,String qlevel) {
	// TODO Auto-generated method stub
	
	System.out.println("inside if questionset.next()");
	String level = qlevel;
	String question_id =questionid;
	System.out.println("level :"+level);
	System.out.println("qsid:"+question_id);
	String question_sql ;
	ResultSet singleQuestionSet=null;;
	if (level.equals("easy")) {
		question_sql = "select * from easy_question where question_id=?";
	} else if (level.equals("med")) {
		question_sql = "select * from med_question where question_id=?";
		System.out.println("inside med working");
	} else {
		question_sql = "select * from hard_question where question_id=?";
	}
	
	try {
		PreparedStatement questionPst = con.prepareStatement(question_sql);
		questionPst.setString(1, question_id);
		 singleQuestionSet = questionPst.executeQuery();
		order_num += 1;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return singleQuestionSet;
	
}
	


}
