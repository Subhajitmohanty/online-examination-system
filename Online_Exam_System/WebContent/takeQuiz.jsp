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
        background-color: #191919;
      }
      table {
        width: 750px;
        border-collapse: collapse;
        margin: 50px auto;
      }

      /* Zebra striping */
      tr:nth-of-type(odd) {
        background: #7d8c8c;
      }
      tr:nth-of-type(even) {
        background: black;
        color: #7d8c8c;
      }

      th {
        background: #2ecc71;
        color: white;
        font-weight: bold;
      }

      td,
      th {
        padding: 10px;
        border: 1px solid #ccc;
        text-align: left;
        font-size: 18px;
      }

      /* 
Max width before this PARTICULAR table gets nasty
This query will take effect for any screen smaller than 760px
and also iPads specifically.
*/
      @media only screen and (max-width: 760px),
        (min-device-width: 768px) and (max-device-width: 1024px) {
        table {
          width: 100%;
        }

        /* Force table to not be like tables anymore */
        table,
        thead,
        tbody,
        th,
        td,
        tr {
          display: block;
        }

        /* Hide table headers (but not display: none;, for accessibility) */
        thead tr {
          position: absolute;
          top: -9999px;
          left: -9999px;
        }

        tr {
          border: 1px solid #191919;
        }

        td {
          /* Behave  like a "row" */
          border: none;
          border-bottom: 1px solid #191919;
          position: relative;
          padding-left: 50%;
        }

        td:before {
          /* Now like a table header */
          position: absolute;
          /* Top/left values mimic padding */
          top: 6px;
          left: 6px;
          width: 45%;
          padding-right: 10px;
          white-space: nowrap;
          /* Label the data */
          content: attr(data-column);

          color: #000;
          font-weight: bold;
        }
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
	ResultSet rs= null;
	try
	{
		Connection con = Provider.getOracleConnection();
		String sql = "select * from quiz_info";
		PreparedStatement pst = con.prepareStatement(sql);
		rs = pst.executeQuery();
	} 
	catch (Exception e)
	{
		e.printStackTrace();
	}
	%>
		<table>
      <thead>
        <tr>
          <th>Subject</th>
          <th>Quiz Name</th>
        </tr>
      </thead>
      <%while(rs.next()){ %>
      <tbody>
        <tr>
          <td data-column="First Name"> <%=rs.getString(1) %></td>
          <td data-column="Last Name"> <%=rs.getString(2) %></td>
        </tr>
      </tbody>
      <% } %>
    </table>
		
		<form action="get.jsp" method="post">
			<input type="text" name="quiz_name" placeholder="Enter Quiz Name" />
    		<input type="submit" name="" value="enter" />
			
		</form>
		
		
		
</body>
</html>