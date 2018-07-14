package kjzy.wangyu.manager;
import java.sql.*;

import kjzy.wangyu.util.*;
public class admin {
	public static int userLogin(String username,String password)
	{
		
		if(username==""||username==null)
		{
			return 2;
		}
		if(password==""||password==null)
		{
			return 3;
		}
		
		
		String sql="SELECT * FROM admin where username='"+username+"'"+" "+"and"+" "+"password='"+password+"'";
		System.out.println(sql);
		Connection conn = DBbean.getConn();
		Statement stmt = DBbean.getStatement(conn);
		ResultSet rs = DBbean.getResultSet(stmt, sql);
		 try{
			 if(rs.next()) {
				 return 4;	
			 }else
			 {
				 return 0;
			 }
		 
	} catch (SQLException e) {
		
		e.printStackTrace();
	}finally
	{
		DBbean.close(rs);
		DBbean.close(stmt);
		DBbean.close(conn);
	}
	return 4;//ok
}
	
	public static int fix_password(String username ,String password) 
	{
		System.out.println(username);
		System.out.println(password);
		 String sql = "update admin set password='" + password+ "' where username='" + username+"'";
		 System.out.println(sql);
		 Connection conn = DBbean.getConn();
		PreparedStatement stmt = DBbean.getPrepareStatement(conn, sql);
		int i;
		try {
			i = stmt.executeUpdate();
			if(i!=0)
		     {
		    	 return 4;
		     }
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally{
			
			try {
				stmt.close();
				conn.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
     
  return 0;
  
}
}