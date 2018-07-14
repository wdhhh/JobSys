package kjzy.wangyu.teacher;
import java.sql.*;
import java.util.*;

import kjzy.wangyu.user.user;
import kjzy.wangyu.util.DBbean;

public class teacher {
    private int workId=0;
    private String tName;
    private String subject;
    private String tPassword;
    private String tPassword1;
    private String tid1;
    private String sex;
    private String classid;
    public teacher() {
    }

    public String getClassid() {
		return classid;
	}

	public void setClassid(String classid) {
		this.classid = classid;
	}

	public String getTPassword1() {
		return tPassword1;
	}

	public void setTPassword1(String password1) {
		tPassword1 = password1;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public void setWorkId(int workId) {

        this.workId = workId;
    }

    public void settName(String tName) {

        this.tName = tName;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public void settPassword(String tPassword) {
        this.tPassword = tPassword;
    }
    public void setTid1(String tid1) {
        this.tid1 = tid1;
    }

    public int gettWorkId() {

        return workId;
    }

    public String gettName() {

        return tName;
    }

    public String getSubject() {
        return subject;
    }

    public String gettPassword() {
        return tPassword;
    }
    public String getTid1() {
        return tid1;
    }
    int pageNow=1;
    public int getpageNow() {

        return pageNow;
    }
    public   static List<teacher> findByName(String Name ){
		List<teacher> list = new ArrayList<teacher>();
		Connection conn =null;
		Statement stmt =null;
		ResultSet rs = null;
		try {
			conn = DBbean.getConn();
			stmt = DBbean.getStatement(conn);
			String sql = "select * from teacher where tname= '" + Name+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next())
			{
				teacher u = new teacher();
				u.setWorkId(rs.getInt("workid"));
				u.settName(rs.getString("tname"));
				u.setSex(rs.getString("sex"));
				u.setClassid(rs.getString("classid"));
				
				list.add(u);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally
		{
			DBbean.close(rs);
			DBbean.close(stmt);
			DBbean.close(conn);
			}
		return list;
	}
    
    
    public   List<teacher> getTeacher(int pageNow){
    	int pageSize=3;
    	
    	
    	int rowCount=0;
    	int pageCount=0;
		List<teacher> list = new ArrayList<teacher>();
		Connection conn =null;
		Statement stmt =null;
		ResultSet rs = null;
		try {
			conn = DBbean.getConn();
			stmt = DBbean.getStatement(conn);
			//rs = stmt.executeQuery("select * from teacher order by workid desc");
			rs = stmt.executeQuery("select count(*) from teacher");
			if(rs.next())
			{
				rowCount = rs.getInt(1);
			}
			if(rowCount%pageSize==0)
			{
				pageCount=rowCount/pageSize;
			}else
			{
					pageCount=rowCount/pageSize+1; 
			}
			
			rs = stmt.executeQuery("select top "+pageSize+" * from teacher where workid not in ( select top "+pageSize*(pageNow-1)+" workid from teacher)");
			while(rs.next())
			{
				teacher t = new teacher();
				t.setWorkId(rs.getInt("workid"));
				t.settName(rs.getString("tname"));
				t.setSex(rs.getString("sex"));
				t.setSubject(rs.getString("subject")); 
				list.add(t);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally
		{
			DBbean.close(rs);
			DBbean.close(stmt);
			DBbean.close(conn);
			}
		return list;
	}


    public  static teacher findByNo(int workId ){
    	
    	teacher tmpTeacher=null;
    	Connection conn =null;
		Statement stmt =null;
		ResultSet rs = null;
     try{
    	 conn = DBbean.getConn();
         String sql = "select * from teacher where workid='" + workId+"'";
         System.out.println("查询老师by id"+sql);
         stmt = DBbean.getStatement(conn);
         rs = stmt.executeQuery(sql);
  
         if(rs.next()){
        	 tmpTeacher = new teacher();
        	 tmpTeacher.setWorkId(rs.getInt("workid"));
        	 tmpTeacher.settName(rs.getString("tname"));
        	 tmpTeacher.setSex(rs.getString("sex"));
        	 tmpTeacher.setSubject(rs.getString("subject"));
        	 tmpTeacher.setClassid(rs.getString("classid"));
             
         } 

     }catch (SQLException e) {
    	// e.printStackTrace();
    	 return tmpTeacher;
			
		}finally
		{
			DBbean.close(rs);
			DBbean.close(stmt);
			DBbean.close(conn);
			} 
		
     return tmpTeacher;
 }

    public static teacher fisndByName(String Name ){
    	teacher tmpTeacher=null;
    	Connection conn =null;
		Statement stmt =null;
		ResultSet rs = null;
     try{
    	 conn = DBbean.getConn();
         String sql = "select * from teacher where tname= '" + Name+"'";
         System.out.println(sql);
         stmt = DBbean.getStatement(conn);
         rs = stmt.executeQuery(sql);

         if(rs.next()){
        	 
        	 
         }

     }catch (SQLException e) {
			e.printStackTrace();
		}finally
		{
			DBbean.close(rs);
			DBbean.close(stmt);
			DBbean.close(conn);
			}
		
     return tmpTeacher;
 }
 public boolean changePassword(){
     boolean bl = false;
     Connection conn =null;
     Statement stmt =null;
   
     try {
    	 conn = DBbean.getConn();
         String sql = "update teacher set tpassword= "+tPassword+" where workid="+workId;
         stmt = DBbean.getStatement(conn);
          stmt.executeUpdate(sql);
         bl=true;
     }catch (SQLException e) {
			e.printStackTrace();
		}finally
		{
			DBbean.close(stmt);
			DBbean.close(conn);
			}
     return bl;
    }


    public int login() {
    	if(tPassword==""&&tPassword==null)
    	{
    		return 3;//密码为空。
    	}
        String oldPassword;
        Connection conn =null;
        Statement stmt =null;
        ResultSet rs = null;
        try {
        	conn = DBbean.getConn();
            String sql = "SELECT * FROM teacher where workid='"+workId+"'"+" "+"and"+" "+"tpassword='"+tPassword+"'";
            System.out.println(sql);
            stmt = DBbean.getStatement(conn);
            rs = stmt.executeQuery(sql);
            System.out.println("ok");
            if (rs.next()) {
                oldPassword = rs.getString("tpassword");
                if (oldPassword.trim().equals(tPassword)) {
                    System.out.println("OK!!!");
                    return 4;//登录成功。
                } else {
                	return 1;//密码错误
                }
            } else {
            	return 2;//用户名不存在
            } 
        } catch (SQLException e) {
			e.printStackTrace();
		}finally
		{
			DBbean.close(rs);
			DBbean.close(stmt);
			DBbean.close(conn);
			}
     return 0;
    }
    public static void delet(int id){
		Connection conn =null;
		Statement stmt =null;
		ResultSet rs = null;
		try {
			conn = DBbean.getConn();
			stmt = DBbean.getStatement(conn);
			stmt.executeUpdate("delete from teacher where workid="+id);
			
			
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally
		{
			DBbean.close(stmt);
			DBbean.close(conn);
			}
	}
    public int register()
	{
    	//System.out.println("sex1"+sex);
		String sql = "insert into teacher (tpassword,tname,sex,subject,classid) values (?,?,?,?,?);";
	 	Connection conn = DBbean.getConn();
	 	PreparedStatement pstmt = DBbean.getPrepareStatement(conn, sql);
	 	if(tPassword.equals(tPassword1))
	 	{
	 	
	 	try {
			pstmt.setString(1, tPassword);
			pstmt.setString(2, tName);
			pstmt.setString(3, sex);
			pstmt.setString(4, subject);
			pstmt.setString(5, classid);
			
			
			
			int i = pstmt.executeUpdate();
			//System.out.println(pstmt.executeUpdate());
			if(i>0)
			{
				return 1;//完全正确
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally
		{
			DBbean.close(pstmt);
			DBbean.close(conn);
		}
	 	}else
	 	{
	 		return 2;//两次输入密码不相等
	 	}
	 	return 0;//注册失败
		
	}
    
    public static int fix_password(String username ,String password) 
	{
		System.out.println(username);
		System.out.println(password);
		 String sql = "update teacher set tpassword='" + password+ "' where workid='" + username+"'";
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
    
//    public boolean updateTeacher() {
//        boolean bl = false;
//        cb = new ConnectBean();
//
//        try {
//            cb.openConnection();
//            String query = "update teachermessage set tname='" + this.tName +"' ,subject='"+this.subject+
//                           "' where tid=" + tId;
//            ps = cb.createPreparedStatement(query);
//            ps.executeUpdate();
//            bl = true;
//        } catch (Exception se) {
//            status = "写入数据发生错误！！！" + se;
//        } finally {
//            try {
//                cb.close();
//            } catch (Exception es) {
//                status = "后台发生错误" + es;
//            }
//        }
//        System.out.println("updateuser");
//        return bl;
//
//    }





//    public boolean deletTeacher(){
//     boolean bl = false;
//    cb = new ConnectBean();
//    try {
//        cb.openConnection();
//        String query = "delete from teachermessage  WHERE tid="+this.tId;
//        System.out.println(query);
//        ps = cb.createPreparedStatement(query);
//        ps.executeUpdate();
//        System.out.println("DAO----------------------delete teacher  OK!!!");
//        bl = true;
//    } catch (Exception se) {
//        status = "对不起，这位老师还有作业题目存档不能删除，不能删除！！";
//    } finally {
//        try {
//            cb.close();
//        } catch (Exception es) {
//            status = "后台发生错误" + es;
//        }
//    }
//
//    return bl;
//
//    }
//
//    public boolean insertTeacher() {
//        boolean bl = false;
//        status = "老师添加失败";
//        cb = new ConnectBean();
//        if (!cb.openConnection()) {
//            status = "连接数据库失败!!!";
//        }
//        try {
//            ps = cb.createPreparedStatement(
//                    "insert into teachermessage values(?,?,?,?)");
//            ps.setInt(1, this.tId);
//            ps.setString(2, this.tName);
//            ps.setString(3,this.subject);
//            ps.setString(4, "123456");
//
//            ps.executeUpdate();
//            bl = true;
//            status = "用户添加成功";
//        } catch (Exception se) {
//            status = "写入数据发生错误！！！" + se;
//        } finally {
//            try {
//                cb.close();
//            } catch (Exception es) {
//                status = "后台发生错误" + es;
//            }
//        }
//        return bl;
//
//    }


}
