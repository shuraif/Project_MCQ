package admin_questions;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import dbconnection.DBConnection;

public class ModifyBean implements Serializable {
	public ResultSet rs = null;
	String question_number = null;
	private String question;
	private String optionA;
	private String optionB;
	private String optionC;
	private String optionD;
	private String answer;
	// private String Item_Name = null;
	// private String Item_Price = null;

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public String getQuestion_number() {
		return question_number;
	}

	public void setQuestion_number(String question_number) {
		this.question_number = question_number;
	}

	public void retrieveEasy() {
		try {

			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("select question_id,question from easy_question");
			rs = ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();

		}

	}
	public void retrieveMed() {
		try {

			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("select question_id,question from med_question");
			rs = ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();

		}

	}
	
	public void retrieveHard() {
		try {

			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("select question_id,question from hard_question");
			rs = ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();

		}

	}
	
	
	
	
	

	public int retrieveById(String question_number)throws Exception {
		this.question_number = question_number;
		try {
			System.out.println("inside");
			Connection con = DBConnection.getConnection();
			PreparedStatement ps;
			String sql="";
			String level=question_number.substring(0, 2);
			if(level.equals("ea")) {
				sql="select * from easy_question where question_id='" + question_number + "'";
			}
			else if(level.equals("me")) {
				sql="select * from med_question where question_id='" + question_number + "'";
			}
			else if(level.equals("ha")) {
				sql="select * from hard_question where question_id='" + question_number + "'";
			}
			else {
				
				System.out.println("level is:"+level);
				return 0;
			}
			 ps= con.prepareStatement(sql);
			rs = ps.executeQuery();
			return 1;
		} catch (SQLException e) {
			e.printStackTrace();
			throw e;

		}
	}

	public void remove_question(String id) {
		// TODO Auto-generated method stub
		// System.out.println("inside remove");
		try {
			question_number = id;
			Connection con = DBConnection.getConnection();
			PreparedStatement del_pst;
			
			
			
			String sql="";
			String level=question_number.substring(0, 2);
			if(level.equals("ea")) {
				sql = "delete from  easy_question where question_id='" + question_number + "'";
			}
			else if(level.equals("me")) {
				sql = "delete from  med_question where question_id='" + question_number + "'";
			}
			else if(level.equals("ha")) {
				sql = "delete from  hard_question where question_id='" + question_number + "'";
			}
			else {
				System.out.println("level is:"+level);
			}
			
			
			del_pst=con.prepareStatement(sql);
			del_pst.executeQuery();
			
			
			System.out.println("One questions removed sucessfully");
			con.commit();
			// con.close();
		} catch (SQLException e) {
			e.printStackTrace();

		}

	}

	public void updateQuestion() {

		// System.out.println(question);
		Connection con = DBConnection.getConnection();
		// String type=question_number.substring(0,2);
		// System.out.println(type);

		//String sql = "update easy_question set question=?,option_a=?,option_b=?,option_c=? ,option_d=?,answer=? where question_id=?";
		
		String sql="";
		String level=question_number.substring(0, 2);
		if(level.equals("ea")) {
			sql = "update easy_question set question=?,option_a=?,option_b=?,option_c=? ,option_d=?,answer=? where question_id=?";
		}
		else if(level.equals("me")) {
			sql = "update med_question set question=?,option_a=?,option_b=?,option_c=? ,option_d=?,answer=? where question_id=?";
		}
		else if(level.equals("ha")) {
			sql = "update hard_question set question=?,option_a=?,option_b=?,option_c=? ,option_d=?,answer=? where question_id=?";
		}
		else {
			System.out.println("level is:"+level);
		}
		
		
		
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, question);
			ps.setString(2, optionA);
			ps.setString(3, optionB);
			ps.setString(4, optionC);
			ps.setString(5, optionD);
			ps.setString(6, answer);
			ps.setString(7, question_number);
			ps.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getOptionA() {
		return optionA;
	}

	public void setOptionA(String optionA) {
		this.optionA = optionA;
	}

	public String getOptionB() {
		return optionB;
	}

	public void setOptionB(String optionB) {
		this.optionB = optionB;
	}

	public String getOptionC() {
		return optionC;
	}

	public void setOptionC(String optionC) {
		this.optionC = optionC;
	}

	public String getOptionD() {
		return optionD;
	}

	public void setOptionD(String optionD) {
		this.optionD = optionD;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

}