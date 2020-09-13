<%@page import="java.sql.*" %>
<%@page import="login.db.*" %>
<%@page import="quiz.model.*" %>
<%@page import="quiz.db.*" %>
<%! static int total_marks=0; %>
<%! static int secured_marks=0; %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<style type="text/css">
	body {
        font-family: "Open Sans Condensed", sans-serif;
        background-color: #191919;
      }

      h1 {
        color: #2ecc71;
        text-align: center;
        font-size: 6rem;
      }

      div {
        color: #2ecc71;
        text-align: center;
        font-size: 4rem;
        margin-top: 11rem;
        padding-top: 2rem;
        border: 2px solid #7d8c7d;
        border-radius: 15px;
        width: 50%;
        height: 4rem;
      }

      .welcome-btn {
        background: none;
        width: 30rem;
        height: 10rem;
        font-size: 2.5rem;
        color: #7d8c8c;
        border: 2px solid #2ecc71;
        border-radius: 15px;
        padding: 20px;
        margin: 2rem;
        margin-top: 4rem;
      }

      .welcome-btn:hover {
        background: #2ecc71;
        width: 30rem;
        height: 10rem;
        font-size: 2.5rem;
        color: white;
        border: 2px solid #2ecc71;
        border-radius: 15px;
        padding: 20px;
        margin: 2rem;
        margin-top: 4rem;
      }
	li
	{
		float: left;
	}
	ul
	{
	
		list-style-type: none;
		margin: 0;
		padding: 0;
		overflow: hidden;
		background-color:#333; 
	}
	li a
	{
		display: inline-block;
		color: white;
		text-align: center;
		padding: 14px 16px;
		text-decoration: none; 
	}
	li a:HOVER {
	background-color: #2ecc71;
}
</style>

<title>HOME</title>

</head>
<body>
	<ul>
		<li> <a href="welcomeUser.jsp">HOME</a></li>
		<li> <a href="changePassword.jsp">CHANGE PASSWORD</a></li>
		<li> <a href="login.controller.Logout">LOGOUT</a></li>
		
	</ul>
	<%
	secured_marks = (Integer)session.getAttribute("total");
	total_marks = (Integer)session.getAttribute("max");
	String quiz_name=(String)session.getAttribute("quiz_name");
	String username = (String)session.getAttribute("username");
	String subject = QuizDao.getSubject(quiz_name);
	
	ResultInfo r = new ResultInfo();
	r.setUsername(username);
	r.setSubject(subject);
	r.setQuiz_name(quiz_name);
	r.setTotal_marks(total_marks);
	r.setSecured_marks(secured_marks);
	int status = QuizDao.registeresult(r); 
	if(status > 0)
	{
		System.out.println("result database updated");
		
	}
	%>
	<form action="view.jsp">
		<center>
      <div>You scored <span> <%=session.getAttribute("total") %></span> out of<span>  <%=session.getAttribute("max") %></span>.</div>
      <button class="welcome-btn">Check Answers</button>
   		 </center>
   	</form>
</body>
</html>