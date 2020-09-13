<!DOCTYPE html>
<html>
<head>
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<style type="text/css">
	body {
        background-color: #191919;
      }
     .box {
        width: 40%;
        height: 12rem;
        padding: 40px;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background: #191919;
        border: 4px solid #3498db;
        border-radius: 10px;
        padding-bottom: 4rem;
      }
      .box h1 {
        color: white;
        text-transform: uppercase;
        font-weight: 500;
        text-align: center;
      }
	input[type="submit"] {
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
      input[type="submit"]:hover {
        background: #2ecc71;
      }

      input[type="text"] {
        border: 0;
        background: none;
        display: block;
        margin: 20px auto;
        margin-top: 40px;
        text-align: center;
        border: 2px solid #3498db;
        padding: 14px 10px;
        width: 200px;
        outline: none;
        color: white;
        border-radius: 24px;
        transition: 0.25s;
      }
      input[type="text"]:focus {
        width: 280px;
        border-color: #2ecc71;
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
	background-color: aqua;
}
</style>
<title>HOME</title>

</head>
<body>
	<ul>
		<li> <a href="index.jsp">HOME</a></li>
		<li> <a href="login.jsp">LOGIN</a></li>
		<li> <a href="register.jsp">REGISTER</a></li>
		
		
	</ul>
	<font color="red" >
		<%
			if(request.getParameter("msg") != null)
				out.print(request.getParameter("msg"));
		%>
		</font>
	<form class="box" action="login.controller.ForgotPassword" method="post">
	<h1 class="h1">Send Password to Email</h1>
	<input type="text" name="email" placeholder="Email" />
    		<input type="submit" name="" value="send" />
	</form>
</body>
</html>















