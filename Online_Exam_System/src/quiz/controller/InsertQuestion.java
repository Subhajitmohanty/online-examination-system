package quiz.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import quiz.db.Questions;
import quiz.db.QuizInfo;
import quiz.model.QuizDao;

@WebServlet("/quiz.controller.InsertQuestion")
public class InsertQuestion extends HttpServlet 
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		Questions q = new Questions();
		QuizInfo q1 = new QuizInfo();
		
		int ques_no = Integer.parseInt(request.getParameter("ques_no"));
		String question = request.getParameter("question");
		String option1 = request.getParameter("option1");
		String option2 = request.getParameter("option2");
		String option3 = request.getParameter("option3");
		String option4 = request.getParameter("option4");
		int answer = Integer.parseInt(request.getParameter("ans"));
		
		HttpSession session = request.getSession();
		String quiz_name = session.getAttribute("quiz_name").toString();
		
		q.setQuiz_name(quiz_name);
		q.setQues_no(ques_no);
		q.setQuestion(question);
		q.setOption1(option1);
		q.setOption2(option2);
		q.setOption3(option3);
		q.setOption4(option4);
		q.setAnswer(answer);
		
		System.out.println("question_no (inserques): "+ques_no);
		System.out.println("question (inserques): "+question);
		System.out.println("option1 (inserques): "+option1);
		System.out.println("option2 (inserques): "+option2);
		System.out.println("option3 (inserques): "+option3);
		System.out.println("option4 (inserques): "+option4);
		System.out.println("answer (inserques): "+answer);
		int status = QuizDao.addQues(q);
		if(status>0)
		{
			response.sendRedirect("addQuestion.jsp?msg1=Question uploaded");
		}
			
		else
			response.sendRedirect("addQuestion.jsp?msg2=Question upload failed");
	}

}
