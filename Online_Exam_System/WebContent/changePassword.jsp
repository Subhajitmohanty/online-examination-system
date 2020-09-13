<!DOCTYPE html>
<html>
<head>
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<style type="text/css">
	body {
        margin: 0;
        padding: 0;
        font-family: sans-serif;
        background: #191919;
      }
      .box {
        width: 300px;
        padding: 40px;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background: #191919;
        text-align: center;
        border: 4px solid #3498db;
        border-radius: 10px;
      }
      .box h1 {
        color: white;
        text-transform: uppercase;
        font-weight: 500;
      }
      .box input[type="text"],
      .box input[type="password"] {
        border: 0;
        background: none;
        display: block;
        margin: 20px auto;
        text-align: center;
        border: 2px solid #3498db;
        padding: 14px 10px;
        width: 200px;
        outline: none;
        color: white;
        border-radius: 24px;
        transition: 0.25s;
      }
      .box input[type="text"]:focus,
      .box input[type="password"]:focus {
        width: 280px;
        border-color: #2ecc71;
      }
      .box input[type="submit"] {
        border: 0;
        background-color: #2ecc71;
        display: block;
        margin: 20px auto;
        text-align: center;
        border: 2px solid #2ecc71;
        padding: 14px 40px;
        outline: none;
        color: white;
        border-radius: 24px;
        transition: 0.25s;
        cursor: pointer;
      }
      .box input[type="submit"]:hover {
        border: 0;
        background: none;
        display: block;
        margin: 20px auto;
        text-align: center;
        border: 2px solid #2ecc71;
        padding: 14px 40px;
        outline: none;
        color: white;
        border-radius: 24px;
        transition: 0.25s;
        cursor: pointer;
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
	<%
		String link = null;
		String category = (String)session.getAttribute("category");
		if(category.equalsIgnoreCase("student"))
		{	
			link = "welcomeUser.jsp";
		}
		else
		{
			link = "welcome.jsp";
		}
	%>
	<ul>
		<li> <a href=<%=link%>>HOME</a></li>
		<li> <a href="changePassword.jsp">CHANGE PASSWORD</a></li>
		<li> <a href="login.controller.Logout">LOGOUT</a></li>
		
		
	</ul>
	<font color="red" >
		<%
			if(request.getParameter("msg") != null)
				out.print(request.getParameter("msg"));
		%>
		</font>
		<%
			if(session.getAttribute("email") == null)
				response.sendRedirect("login.jsp");
		%>
	<form class="box" action="login.controller.ChangePassword" method="post">
      <h1 class="h1">Change Password</h1>

      <input type="text" name="opass" placeholder="Current Password" />
      <input type="password" name="npass" placeholder="New Password" />
      <input type="text" name="cpass" placeholder="Confirm Password" />

      <input type="submit" name="" value="Change Password" />
    </form>
</body>
</html>















