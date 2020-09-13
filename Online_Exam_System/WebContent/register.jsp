<!DOCTYPE html>
<html>
<head>
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css" />

    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    
<style>
      body {
        margin: 0;
        padding: 0;
        font-family: sans-serif;
        background: #191919;
      }
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
      .box input[type="submit"]:hover {
        background: #2ecc71;
      }

      .selectdiv {
        position: relative;
        /*Don't really need this just for demo styling*/
        color: #6f8c8c;
        float: left;
        margin-top:20px;
        margin-left: 15%;
        padding-bottom: 5%;
        min-width: 220px;
        border-radius: 24px;
        text-align: center;
      }

      .selectdiv:after {
        content: "\f078";
        font: normal normal normal 17px/1 FontAwesome;
        color: #3498db;
        right: 11px;
        top: 6px;
        height: 34px;
        padding: 15px 0px 0px 8px;
        border-left: 1px solid #3498db;
        position: absolute;
        pointer-events: none;
      }

      /* IE11 hide native button (thanks Matt!) */
      select::-ms-expand {
        display: none;
      }

      .selectdiv select {
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        /* Add some styling */
		background-color:white;
        display: block;
        width: 100%;
        max-width: 320px;
        height: 50px;
        float: right;
        margin: 5px 0px;
        padding: 0px 24px;
        font-size: 16px;
        line-height: 1.75;
        color: #7d8c8c;
        background-color: #1d1d1d;
        background-image: none;
        border: 1px solid #3498db;
        -ms-word-break: normal;
        word-break: normal;
        border-radius: 10px;
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
	<font color="green" >
		<%
			if(request.getParameter("msg1") != null)
				out.print(request.getParameter("msg1"));
		%>
		</font>
	<font color="red" >
		<%
			if(request.getParameter("msg2") != null)
				out.print(request.getParameter("msg2"));
		%>
		</font>
	<form class="box" action="login.controller.Register" method="post">
		<h1 class="h1">Register</h1>
      <div class="selectdiv">
        <select name="category">
          <option hidden="hidden">Category</option>
          <option value="Teacher">Teacher</option>
          <option value="Student">Student</option>
        </select>
      </div>

      <input type="text" name="username" placeholder="Username" />
      <input type="password" name="password" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required />
      <input type="text" name="email" placeholder="Email" />

      <input type="submit" name="" value="Register" />
		
	</form>
</body>
</html>















