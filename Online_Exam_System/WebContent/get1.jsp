<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@page import="login.db.*" %>
<%! static int count=0; %>
<%! static int max=0; %>
<%! static int total=0; %>

<%
	count = (Integer)session.getAttribute("count");
	max = (Integer)session.getAttribute("max");
	String quiz_name=(String)session.getAttribute("quiz_name");
	System.out.println("quiz_name in get1 : "+quiz_name);
	String ans= request.getParameter("radio");
	System.out.println("ans on set"+ans);
	session.setAttribute("ans",ans);
	if((Integer)session.getAttribute("total")==null)
	{
		total=0;
	}
	else
	{
		total = (Integer)session.getAttribute("total");
	}
	
	try
	{
		Connection con = Provider.getOracleConnection();
		PreparedStatement ps=con.prepareStatement("select answer from question where quiz_name = '"+quiz_name+"' and ques_no="+count);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			String ans1=rs.getString(1);
			System.out.println("ans1 on db="+ans1);
			System.out.println("ans on get1="+ans);
			if(ans1.equals(ans))
			{
				total=total+1;
				session.setAttribute("total", total);
				System.out.println("total="+total);
			}
			else
			{
				session.setAttribute("total", total);
				System.out.println("total="+total);
			}

		}
		count++;
		session.setAttribute("count", count);
		if(count<=max)
		{
			%>
			<jsp:forward page="get.jsp"></jsp:forward>
			<%
		}
		else
		{
			%>
			<jsp:forward page="result.jsp"></jsp:forward>
			<%
		}
		
		
	}
	catch(Exception e){e.printStackTrace();}
%>