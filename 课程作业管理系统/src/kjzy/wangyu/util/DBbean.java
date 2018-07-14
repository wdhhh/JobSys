package kjzy.wangyu.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class DBbean {
	public static Connection getConn() {
		Connection conn = null;
		try {
			
			/*conn = DriverManager.getConnection("jdbc:odbc:学生管理系统","sa","123456");*/
			int port=1433;
			
			String db="jdbc:sqlserver://localhost:"+port+";DatabaseName=学生管理系统";
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection(db,"sa","123456");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	public static PreparedStatement getPrepareStatement(Connection conn,String sql)
	{
		PreparedStatement pstmt = null;
		try
		{
			if(conn!=null){
				pstmt = conn.prepareStatement(sql);
			}
		}catch(SQLException e)
			{
				e.printStackTrace();
			
		}
		return pstmt;
	}
	public static Statement getStatement(Connection conn) {
		Statement stmt = null; 
		try {
			if(conn != null) {
				stmt = conn.createStatement();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return stmt;
	}
	
	public static ResultSet getResultSet(Statement stmt, String sql) {
		ResultSet rs = null;
		try {
			if(stmt != null) {
				rs = stmt.executeQuery(sql);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	public static PreparedStatement prepareStmt(Connection conn,String sql)
	{
		PreparedStatement pstmt = null;
		try
		{
			pstmt = conn.prepareStatement(sql);
			
		}catch(SQLException e)
		{
			
		}
		return pstmt;
	}
	
	public static void close(Connection conn) {
		try {
			if(conn != null) {
				conn.close();
				conn = null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Statement stmt) {
		try {
			if(stmt != null) {
				stmt.close();
				stmt = null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet rs) {
		try {
			if(rs != null) {
				rs.close();
				rs = null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	public static void close(PreparedStatement prepareStmt) {
		try {
			if(prepareStmt != null) {
				prepareStmt.close();
				prepareStmt = null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
//	public static void main(String args[])
//	{
//		getConn();
//		System.out.println("成功！");
//	}
}
