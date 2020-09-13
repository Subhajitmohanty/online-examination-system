<!DOCTYPE html>
<html>
<head>
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="style.css" />
<link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />

<meta charset="ISO-8859-1">
<style type="text/css">
	.box {
  width: 310px;
  padding: 30px;
  padding-top:40px;
  position: absolute;
  margin-top: 22%;
  left: 50%;
  height: 450px;
  transform: translate(-50%, -50%);
  background: #191919;
  text-align: center;
  border: 4px solid #3498db;
  border-radius: 10px;
}
	.selectdiv {
  position: relative;
  color: #6f8c8c;
  float: left;
  margin-top:20px;
  margin-left: 15%;
  padding-bottom: 5%;
  min-width: 220px;
}
	.forgot-btn {
  border: 0;
  background: #2ecc71;
  display: block;
  margin: 20px auto;
  position: absolute;
  top: 75%;
  left: 43%;
  text-align: center;
  border: 2px solid #2ecc71;
  padding: 14px 40px;
  outline: none;
  color: white;
  border-radius: 24px;
  transition: 0.25s;
  cursor: pointer;
}
	
	.forgot-btn:Hover
	{
		background: #191919;
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
	<form class="box" action="login.controller.Login" method="post">
		<h1 class="h1">Login</h1>
      <div class="selectdiv">
        <select name="category">
          <option hidden="hidden">Category</option>
          <option value="Teacher">Teacher</option>
          <option value="Student">Student</option>
        </select>
      </div>

      <input type="text" name="email" placeholder="Email" />
      <input type="password" name="password" placeholder="Password" />
      <input type="submit" name="" value="Login" />
		
	</form>
	<a href="forgot.jsp"><button class="forgot-btn">Forgot Password</button></a>
</body>
</html>















