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
        font-size: 6rem;
        padding: 2rem;
        
      }

      .welcome-btn {
        background: none;
        width: 15rem;
        height: 6rem;
        font-size: 2.5rem;
        color: #7d8c8c;
        border: 2px solid #2ecc71;
        border-radius: 50px;
        padding: 20px;
        margin: 2rem;
        margin-top: 5rem;
      }

      .welcome-btn:hover {
        background: #2ecc71;
        width: 15rem;
        height: 6rem;
        font-size: 2.5rem;
        color: white;
        border: 2px solid #2ecc71;
        border-radius: 50px;
        padding: 20px;
        margin: 2rem;
        margin-top: 5rem;
      }

      footer {
        margin-top: 20px;
        background-color: #2ecc71;
        height: 18rem;
        position: absolute;
        width: 100%;
      }

      .madeby {
        font-size: 3rem;
        position: absolute;
        color: white;
        float: right;
        right: 20%;
		top: 2rem
      }

      .name {
        color: white;
    	font-size: 1.5rem;
    	float: right;
    	position: relative;
    	right: 5%;
    	top: -35px;
      }

      .college {
        font-size: 2rem;
        color: white;
        margin-top: 1rem;
        position: relative;
        left: 4rem;
        top: 1rem;
        width: 40rem;
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
	 a {
      text-decoration:none;
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
	
	<h1>ONLINE EXAMINATION</h1> <h1>SYSTEM</h1>
    <center>
      <a href="register.jsp" ><button class="welcome-btn">REGISTER</button></a>
       <a href="login.jsp"><button class="welcome-btn">LOGIN</button></a>
    </center>


</body>
</html>