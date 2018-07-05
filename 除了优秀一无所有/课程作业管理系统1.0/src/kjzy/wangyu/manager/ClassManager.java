package kjzy.wangyu.manager;
import java.sql.*;

import kjzy.wangyu.util.*;

public class ClassManager {
	private String className = null;
	private String zhuanye = null;
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getZhuanye() {
		return zhuanye;
	}
	public void setZhuanye(String zhuanye) {
		this.zhuanye = zhuanye;
	}
	
	public  int addClass()
	{
		Connection conn = DBbean.getConn();
		String sql = "insert into zhuanye (zhuanye,classid) values(?,?)";
		PreparedStatement stmt =DBbean.getPrepareStatement(conn, sql);
		try {
			stmt.setString(1, zhuanye);
			stmt.setString(2, className);
			int i = stmt.executeUpdate();
			//System.out.println(pstmt.executeUpdate());
			if(i>0)
			{
				return 1;//完全正确
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
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
