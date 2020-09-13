<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@page import="login.db.*" %>
<%! static int min=0; %>
<%! static int count=0; %>
<%! static int count1=0; %>

<%
	String quiz_name = null;
	if((String)session.getAttribute("quiz_name")==null)
	{
		quiz_name = request.getParameter("quiz_name");
		session.setAttribute("quiz_name",quiz_name);
	}
	else
	{
		quiz_name = (String)session.getAttribute("quiz_name");
	}
	
	System.out.println("QUiz name : "+quiz_name);
	
	
	ResultSet rs1= null;
	ResultSet rs2= null;
	try
	{
		Connection con = Provider.getOracleConnection();
		String sql1 = "select min(ques_no) from question where quiz_name = '"+quiz_name+"'";
		System.out.println(sql1);
		PreparedStatement pst1 = con.prepareStatement(sql1);
		rs1 = pst1.executeQuery();
		if(rs1.next())
		{
			min=rs1.getInt(1);
			session.setAttribute("min",min);
			System.out.println("min : "+min);
		}
		String sql2 = "select max(ques_no) from question where quiz_name = '"+quiz_name+"'";
		PreparedStatement pst2 = con.prepareStatement(sql2);
		rs2 = pst2.executeQuery();
		if(rs2.next())
		{
			count1=rs2.getInt(1);
			System.out.println("count1 : "+count1);
			session.setAttribute("max",count1);
		}
		if((Integer)session.getAttribute("count")==null)
		{
			count=min;
		}
		else
		{
			count = (Integer)session.getAttribute("count");
		}
		session.setAttribute("count", count);
		System.out.println("count : "+count);
		
		if(count<=(Integer)session.getAttribute("max"))
		{
			PreparedStatement ps=con.prepareStatement("select * from question where quiz_name = '"+quiz_name+"' and ques_no="+count);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				String question=rs.getString(3);
				String option1= rs.getString(4);
				String option2= rs.getString(5);
				String option3= rs.getString(6);
				String option4= rs.getString(7);
				session.setAttribute("ques_no", count);
				session.setAttribute("question",question);
				session.setAttribute("option1",option1);
				session.setAttribute("option2",option2);
				session.setAttribute("option3",option3);
				session.setAttribute("option4",option4);
			}
			
		}
		
	
	} 
	catch (Exception e)
	{
		e.printStackTrace();
	}
%>
<jsp:forward page="start.jsp"></jsp:forward>
	
	