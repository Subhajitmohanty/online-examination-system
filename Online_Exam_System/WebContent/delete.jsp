<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@page import="login.db.*" %>
<%! static int min=0; %>
<%! static int count=0; %>
<%! static int count1=0; %>

<%
	String quiz_name = request.getParameter("quiz_name");
	int status1 = 0;
	int status2 = 0;
	boolean result = false;
	try
	{
		Connection con = Provider.getOracleConnection();
		String sql1 = "delete from quiz_info where quiz_name=?";
		PreparedStatement pst = con.prepareStatement(sql1);
		pst.setString(1,quiz_name);
		status1 = pst.executeUpdate();
		if(status1 > 0)
		{
			System.out.println("record deleted from quiz_info");
		}
		
		String sql2 = "delete from question where quiz_name=?";
		PreparedStatement pst2 = con.prepareStatement(sql2);
		pst2.setString(1,quiz_name);
		result = pst2.execute();
		if(result == false)
			System.out.println("question table updated");
		
		String sql3 = "delete from result where quiz_name= '"+quiz_name+"'";
		PreparedStatement pst3 = con.prepareStatement(sql3);
		/* pst3.setString(1,quiz_name); */
		status2 = pst3.executeUpdate();
		if(status2 > 0)
		{
			System.out.println("record deleted from result");
		}
		
		
		
	} 
	catch (Exception e)
	{
		e.printStackTrace();
	}
%>
<jsp:forward page="welcome.jsp"></jsp:forward>
	
	