package login.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import login.db.Users;
import login.model.UsersDao;

/**
 * Servlet implementation class Register
 */
@WebServlet("/login.controller.Register")
public class Register extends HttpServlet 
{
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Users s = new Users();
		s.setUsername(request.getParameter("username"));
		s.setPassword(request.getParameter("password"));
		s.setCategory(request.getParameter("category"));
		s.setEmail(request.getParameter("email"));
		
		int status = UsersDao.doRegister(s);
		if(status>0)
			response.sendRedirect("register.jsp?msg1=Register Success");
		else
			response.sendRedirect("register.jsp?msg2=Register Failed");
	}

}
