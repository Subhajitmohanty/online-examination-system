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
        color: white;
      }
      .box {
        width: 40%;
        height: 19rem;
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
      .box input[type="text"] {
        border: 0;
        background: none;
        text-align: center;
        border: 2px solid #3498db;
        padding: 14px 10px;
        width: 400px;
        outline: none;
        color: white;
        border-radius: 20px;
        transition: 0.25s;
      }
      .box input[type="text"]:focus,
      .box input[type="password"]:focus {
        width: 415px;
        border-color: #2ecc71;
      }
      .box input[type="submit"] {
        border: 0;
        background: none;
        display: block;
        position: absolute;
        right: 4rem;
        bottom: 1rem;
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
      .text {
        position: relative;
        top: 2.2rem;
        margin-left: 2rem;
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

<title>Make a Quiz</title>
</head>
<body>
	<ul>
		<li> <a href="welcome.jsp">HOME</a></li>
		<li> <a href="changePassword.jsp">CHANGE PASSWORD</a></li>
		<li> <a href="login.controller.Logout">LOGOUT</a></li>
		
	</ul>
	
	<form class="box" action="quiz.controller.CreateQuiz" method="post">
      <h1 class="h1">Make Quiz</h1>

      
      <center><input type="text" name="subject" placeholder="Subject" /><br /></center>
      
      <center>
        <input type="text" name="quiz_name" placeholder="Quiz Name" /><br />
      </center>

      <input type="submit" name="" value="create a quiz" />
    </form>
	
	

</body>
</html>