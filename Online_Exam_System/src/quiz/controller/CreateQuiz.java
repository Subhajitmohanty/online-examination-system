package quiz.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import quiz.db.QuizInfo;
import quiz.model.QuizDao;

@WebServlet("/quiz.controller.CreateQuiz")
public class CreateQuiz extends HttpServlet 
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		boolean result = false;
		QuizInfo q = new QuizInfo();
		String subject = request.getParameter("subject");
		String quiz_name = request.getParameter("quiz_name");
		q.setSubject(subject);
		q.setQuiz_name(quiz_name);
		
		int status = QuizDao.registerQuiz(q);
		if(status>0)
		{
			
			HttpSession session = request.getSession();
			session.setAttribute("quiz_name", quiz_name);
			response.sendRedirect("addQuestion.jsp?msg1=Quiz Registered");
			
		}
			
		else
			response.sendRedirect("makeQuiz.jsp?msg2=Failed");
	}

}
