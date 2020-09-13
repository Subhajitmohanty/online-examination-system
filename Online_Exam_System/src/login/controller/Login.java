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

@WebServlet("/login.controller.Login")
public class Login extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String category = request.getParameter("category");

        Users s = new Users();
        s.setCategory(category);
        s.setEmail(email);
        s.setPassword(password);
        
        String username = UsersDao.getUsername(s);
        HttpSession session = request.getSession();
        session.setAttribute("username", username);
        
        int status = UsersDao.validate(s);
        if(status>0)
        {
        	session.setAttribute("email", email);
        	session.setAttribute("category", category);
        	if(category.equalsIgnoreCase("teacher"))
        		response.sendRedirect("welcome.jsp?msg=login success");
        	else if (category.equalsIgnoreCase("Student")) 
        	{
        		response.sendRedirect("welcomeUser.jsp?msg=login success");
			}
        	else 
        	{
        		response.sendRedirect("login.jsp?msg=login Failed");
        	}
        }
        else
        	response.sendRedirect("login.jsp?msg=Invalid Email or password or category");
	}

}
