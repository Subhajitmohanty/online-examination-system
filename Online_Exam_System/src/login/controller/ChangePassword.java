package login.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import login.db.Users;
import login.model.UsersDao;

/**
 * Servlet implementation class ChangePassword
 */
@WebServlet("/login.controller.ChangePassword")
public class ChangePassword extends HttpServlet {
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String opass = request.getParameter("opass");
		String npass = request.getParameter("npass");
		String cpass = request.getParameter("cpass");
		Users s = new Users();
		HttpSession session = request.getSession();
		s.setEmail((String)session.getAttribute("email"));
		s.setPassword(opass);
		s.setCategory((String)session.getAttribute("category"));
		int status = UsersDao.validate(s);
		if(status>0)
		{
			if(npass.equals(cpass)) 
			{
				s.setPassword(npass);
				int r = UsersDao.updatePassword(s);
				if(r>0)
					response.sendRedirect("changePassword.jsp?msg=Password Changed");
				else
					response.sendRedirect("changePassword.jsp?msg=Error");
			}
			else
				response.sendRedirect("changePassword.jsp?msg=New Password and Confirm Password mismatch");
		}
		else
			response.sendRedirect("changePassword.jsp?msg=Current Password invalid");
	}

}
