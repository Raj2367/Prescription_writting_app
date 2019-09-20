package project.db;
import java.sql.*;
public class Provider 
{
	public static Connection getOracleConnection()
	{
		Connection con =null;
		try 
		{
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","lit");
		}
		catch(Exception e) 
		{
			e.printStackTrace();
		}
		
		return con;
	}
	public static Connection getmysqlConnection()
	{
		Connection con =null;
		try 
		{
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","raj@1234");
		}
		catch(Exception e) 
		{
			e.printStackTrace();
		}
		
		return con;
	}
	
	public static void main(String[] args) 
	{
		Connection con_ora = Provider.getOracleConnection();
		Connection con_mysql = Provider.getmysqlConnection();
		System.out.println(con_ora);
		System.out.println(con_mysql);
	}
}
/* How to set the classPath of jar file
 * =====================================
 * 		JRE System Library (in project)->right click->build path->configure build path->libraries
 * 									   ->select classPath->add external jar file->select the jar file
 * 										->apply and close
 * Note:- Check in reference library
 */