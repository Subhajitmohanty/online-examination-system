package login.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import login.db.Provider;
import login.db.Users;

public class UsersDao 
{

	public static int doRegister(Users s)
	
	{
		int status = 0;
		try
		{
			Connection con = Provider.getOracleConnection();
			String sql = "insert into users values(?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, s.getUsername());
			pst.setString(2, s.getPassword());
			pst.setString(3, s.getCategory());
			pst.setString(4, s.getEmail());
			status= pst.executeUpdate();
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return status;
		
	}

	public static int validate(Users s) 
	{
		int status = 0;
		String catg=null;
		try
		{
			Connection con = Provider.getOracleConnection();
			String sql = "select category from users where email=? and password=? and category=?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, s.getEmail());
			pst.setString(2, s.getPassword());
			pst.setString(3, s.getCategory());
			System.out.println("Category: "+s.getCategory());
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				status = 1;	
			}
			
				
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}

	public static String checkEmailGetPassword(Users s) {
		String pass=null;
		try
		{
			Connection con = Provider.getOracleConnection();
			String sql = "select password from users where email=?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, s.getEmail());
			ResultSet rs = pst.executeQuery();
			if(rs.next())
				pass = rs.getString(1);	
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return pass;
	}
	
	public static String getUsername(Users s) {
		String uname=null;
		try
		{
			Connection con = Provider.getOracleConnection();
			String sql = "select username from users where email=?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, s.getEmail());
			ResultSet rs = pst.executeQuery();
			if(rs.next())
				uname = rs.getString(1);	
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return uname;
	}


	public static int updatePassword(Users s) 
	{
		int status = 0;
		try 
		{
			Connection con = Provider.getOracleConnection();
			String sql = "update users set password=? where email=?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, s.getPassword());
			pst.setString(2, s.getEmail());
			status = pst.executeUpdate();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return status;
	}

}
