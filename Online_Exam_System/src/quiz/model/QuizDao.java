package quiz.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import login.db.Provider;
import login.db.Users;
import quiz.db.Questions;
import quiz.db.QuizInfo;
import quiz.db.ResultInfo;

public class QuizDao 
{
	public static int registerQuiz(QuizInfo q) 
	{
		int status = 0;
		try
		{
			Connection con = Provider.getOracleConnection();
			String sql = "insert into quiz_info values(?,?)";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, q.getSubject());
			pst.setString(2, q.getQuiz_name());
			status= pst.executeUpdate();
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public static int registeresult(ResultInfo r) 
	{
		int status = 0;
		try
		{
			Connection con = Provider.getOracleConnection();
			String sql = "insert into result values(?,?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, r.getUsername());
			pst.setString(2, r.getSubject());
			pst.setString(3, r.getQuiz_name());
			pst.setInt(4, r.getTotal_marks());
			pst.setInt(5, r.getSecured_marks());
			status= pst.executeUpdate();
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	/*
	 * public static boolean createQuizTable(String quiz_name) { boolean result =
	 * false; try { Connection con = Provider.getOracleConnection(); String sql =
	 * "Create table "
	 * +quiz_name+" (ques_no number(4), question varchar2(200), option1 varchar2(50), option2 varchar2(50), option3 varchar2(50), option4 varchar2(50), answer number(4))"
	 * ; PreparedStatement pst = con.prepareStatement(sql); result = pst.execute();
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } return result; }
	 */

	public static int addQues(Questions q) 
	{
		int status = 0;
		String quiz_name = q.getQuiz_name();
		System.out.println("Quiz name : "+quiz_name);
		try
		{
			Connection con = Provider.getOracleConnection();
			String sql = "insert into question values(?,?,?,?,?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, quiz_name);
			pst.setInt(2, q.getQues_no());
			pst.setString(3, q.getQuestion());
			pst.setString(4, q.getOption1());
			pst.setString(5, q.getOption2());
			pst.setString(6, q.getOption3());
			pst.setString(7, q.getOption4());
			pst.setInt(8, q.getAnswer());
			status= pst.executeUpdate();
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public static String getSubject(String quiz_name) {
		String subject=null;
		try
		{
			Connection con = Provider.getOracleConnection();
			String sql = "select subject from quiz_info where quiz_name=?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, quiz_name);
			ResultSet rs = pst.executeQuery();
			if(rs.next())
				subject = rs.getString(1);	
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return subject;
	}

}
