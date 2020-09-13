package quiz.db;

public class ResultInfo 
{
	private int total_marks, secured_marks;
	private String username, subject, quiz_name;
	public int getTotal_marks() {
		return total_marks;
	}
	public void setTotal_marks(int total_marks) {
		this.total_marks = total_marks;
	}
	public int getSecured_marks() {
		return secured_marks;
	}
	public void setSecured_marks(int secured_marks) {
		this.secured_marks = secured_marks;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getQuiz_name() {
		return quiz_name;
	}
	public void setQuiz_name(String quiz_name) {
		this.quiz_name = quiz_name;
	}
	

}
