<%@page import="java.sql.*" %>
<%@page import="login.db.*" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<style type="text/css">
	body {
      margin: 0;
      padding: 0;
      font-family: sans-serif;
      background: #191919;
      color: #6f8c8c;
    }
    div {
      font-size: 2rem;
      color: #2ecc71;
    }
    
    /* td{
    	width: 4rem;;
    } */

    .box {
      border: 4px solid #6f8c8c;
      border-radius: 20px;
      height: 20rem;
      width: 80%;
      margin-top: 5rem;
      margin-left: 6rem;
      padding: 1.5rem;
      position: relative;
      padding: 2rem;
    }

    .q {
      font-size: 4rem;
      
    }
    
    .q1{
      font-size: 2.5rem;
      line-height: normal;
    }

    .question {
      padding-bottom: 3rem;
      
      
    }
    
    .option
    {
    	margin-left: 5rem;
    }

 
    .submit-btn {
      position: absolute;
      bottom: 3rem;
      right: 3.5rem;
      width: 20rem;
      height: 3rem;
      background: none;
      padding-left: 4rem;
      padding-right: 4rem;
      color: #6f8c8c;
      border: 2px solid #2ecc71;
      border-radius: 30px;
    }

    .submit-btn:hover {
      position: absolute;
      bottom: 3rem;
      right: 3.5rem;
      width: 10rem;
      height: 3rem;
      background-color: #2ecc71;
      color: white;
      border: 2px solid #2ecc71;
      border-radius: 30px;
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

<script>
<!--
<%
String clock = request.getParameter( "clock" );
if( clock == null ) clock = "180";
%>
var timeout = <%=clock%>;
function timer()
{
if( --timeout > 0 )
{
document.forma.clock.value = timeout;
window.setTimeout( "timer()", 1000 );
}
else
{
document.forma.clock.value = "Time over";
///disable submit-button etc
}
}
//-->
</script>

</head>
<body>
<script>
<form action="<%=request.getRequestURL()%>" name="forma">
Seconds remaining: <input type="text" name="clock" value="<%=clock%>" style="border:0px solid white">
...
</form>
<script>
<!--
timer();
//-->
</script>
	
	<ul>
		<li> <a href="welcomeUser.jsp">HOME</a></li>
		<li> <a href="changePassword.jsp">CHANGE PASSWORD</a></li>
		<li> <a href="login.controller.Logout">LOGOUT</a></li>
		
	</ul>
	<% 
					int ques_no = (Integer)session.getAttribute("ques_no");
					String question=(String)session.getAttribute("question");
					String option1= (String)session.getAttribute("option1");
					String option2= (String)session.getAttribute("option2");
					String option3= (String)session.getAttribute("option3");
					String option4= (String)session.getAttribute("option4");
					
					%>
	<div class="box">
      <div class="question">
        <span class="q">Q<%=ques_no%>.</span><span class="q1">  <%=question%></span>
      </div>
	<form method="post" action="get1.jsp">
	<table class= "option">
		<tr class="ans1"><td width="600" height="100"><input type="radio" name="radio" class="" value="1" /> a) <%=option1%></td>
        
       <td width="600" height="100"> <input type="radio" name="radio" class="" value="2" /> b) <%=option2%></td></tr>
        
       <tr><td></td><td></td></tr>
       <tr><td></td><td></td></tr>

        <tr class="ans3"><td><input type="radio" name="radio" class="" value="3" /> c) <%=option3%></td>
        
         <td><input type="radio" name="radio" class="" value="4" /> d) <%=option4%></td></tr></table>

        <input type="submit" class="submit-btn" value="Next" />
					
					 <%-- <%
                    
               			String ans=(String)request.getParameter("radio");
  						System.out.println("ans on set"+ans);
               			session.setAttribute("ans",ans);
                    	
                     %>		 --%>
                     </form>
                    
		
</body>
</html>