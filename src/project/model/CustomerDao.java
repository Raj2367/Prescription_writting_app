package project.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import project.db.Student;
import project.db.ComplainBox;
import project.db.Provider;

public class CustomerDao {
	
	public static String getPassword(Student c) 
	{
		String password = "";
		try 
		{
			Connection conn = Provider.getOracleConnection();
			String sql = "select password from student where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, c.getId());
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				password = rs.getString(1);
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return password;
	}

	public static int complainRegister(ComplainBox c) 
	{
		int status = 0;
		try 
		{
				Connection conn = Provider.getOracleConnection();
				String sql = "insert into ComplainBox values(?,?,?,?)";
				PreparedStatement pst = conn.prepareStatement(sql);
				pst.setString(1, c.getSubject());
				pst.setString(2, c.getBlock());
				pst.setString(3, c.getRoom());
				pst.setString(4, c.getProblem());
				status = pst.executeUpdate();
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return status;
	}

	public static ResultSet getComplains() 
	{	
		try {
			Connection conn = Provider.getOracleConnection();
			String sql = "select * from ComplainBox";
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql);
			return rs;
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return null;
	}
	
}
