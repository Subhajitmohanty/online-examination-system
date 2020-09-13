<!DOCTYPE html>
<html>
<head>
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
        font-size: 3rem;
        margin: 60px;
      }

      .welcome-btn {
        background: none;
        width: 30rem;
        height: 10rem;
        font-size: 3rem;
        color: #7d8c8c;
        border: 2px solid #2ecc71;
        border-radius: 15px;
        padding: 20px;
        margin: 2rem;
      }

      .welcome-btn:hover {
        background: #2ecc71;
        width: 30rem;
        height: 10rem;
        font-size: 3rem;
        color: white;
        border: 2px solid #2ecc71;
        border-radius: 15px;
        padding: 20px;
        margin: 2rem;
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
		<li> <a href="welcome.jsp">HOME</a></li>
		<li> <a href="changePassword.jsp">CHANGE PASSWORD</a></li>
		<li> <a href="login.controller.Logout">LOGOUT</a></li>
		
		</ul>
		 <% 
		 String username = (String)session.getAttribute("username");
		%>
		
		<div>
		<h1>WELCOME <span><%=username.toUpperCase() %></span></h1>
    <center>
      <a href="takeQuiz.jsp"><button class="welcome-btn">Take Test</button></a>
      <a href="resultUser.jsp"><button class="welcome-btn">Check Results</button></a>
    </center>
   
		
		
		

	 </div>	
		
</body>
</html>