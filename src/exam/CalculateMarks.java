package exam;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import dbconnection.DBConnection;

public class CalculateMarks {
	Connection con;
	Map<String, String> answerMap;
	String user_name;
	String schedule_id;
	int calculateMark(Map<String,String> answerMap,String schedule_id,String user_name) {//calculating the score
	
		this.answerMap =answerMap;
		this.schedule_id=schedule_id;
		this.user_name=user_name;
		con=DBConnection.getConnection();
		
		String check_sql="delete from score where user_id=?";
		try {
			PreparedStatement clear_score=con.prepareStatement(check_sql);
			clear_score.setString(1,user_name);
			clear_score.executeQuery();
			con.commit();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		

		int score = 0;
		for (String key : answerMap.keySet()) {
			String answer_sql;
			System.out.println(key + ": " + answerMap.get(key));
			String level = key.substring(0, 2);
			System.out.println("level :" + level);

			if (level.equals("ea")) {
				answer_sql = "select answer from easy_question where question_id=?";

			} else if (level.equals("me")) {
				answer_sql = "select answer from med_question where question_id=?";
			} else {
				answer_sql = "select answer from hard_question where question_id=?";
			}
			try {
				PreparedStatement answer_pst = con.prepareStatement(answer_sql);
				answer_pst.setString(1, key);
				ResultSet answerResultSet = answer_pst.executeQuery();
				answerResultSet.next();
				if (answerResultSet.getString(1).equals(answerMap.get(key))) {
					score += 1;
				}

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	
		System.out.println("score :" + score);
		

		PreparedStatement score_pst;//inserting score into database
		String insert_score = "insert into score values('score'||score_sequence.nextval,?,?,?)";

		try {
			score_pst = con.prepareStatement(insert_score);
			score_pst.setString(1, schedule_id);
			score_pst.setString(2, user_name);
			score_pst.setInt(3, score);
			score_pst.executeQuery();
			con.commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return score;
	}

}
