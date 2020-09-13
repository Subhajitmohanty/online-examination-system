package login.db;

import java.sql.*;

public class Provider
{
	static Connection con=null;
	public static Connection getOracleConnection()
	{
		
		try
		{
			if(con==null) 
			{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/oes?useSSL=false","root","");
			}
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return con;
	}
}
