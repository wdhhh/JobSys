package kjzy.wangyu.user;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import kjzy.wangyu.teacher.teacher;
import kjzy.wangyu.util.*;
public class user {
	
	public user() {
		//System.out.println("agfa");
	}

	private int userid;
	private String userName = null;
	private String passWord = null;
	private String passWord1 = null;
	private int studyId;
	private String sex=null;
	private String classId = null;
	private String specialty=null;
	private String phone = null;
	private String rdate =null;
	private String name = null;
	
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		
		this.rdate = rdate;
		System.out.println(rdate);
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid ) {
		this.userid = userid;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}public String getPassWord1() {
		return passWord1;
	}
	public void setPassWord1(String passWord1) {
		this.passWord1 = passWord1;
	}
	
	public int getStudyId() {
		return studyId;
	}
	public void setStudyId(int studyId) {
		this.studyId = studyId;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getClassId() {
		return classId;
	}
	public void setClassId(String classId) {
		this.classId = classId;
	}
	public String getSpecialty() {
		return specialty;
	}
	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public  static user find(String username ){
		user tmpUser=null;
    	Connection conn =null;
		Statement stmt =null;
		ResultSet rs = null;
     try{
    	 conn = DBbean.getConn();
         String sql = "select * from student where username='" + username+"'";
         stmt = DBbean.getStatement(conn);
         rs = stmt.executeQuery(sql);
  
         if(rs.next()){
        	 tmpUser = new user();
        	 tmpUser.setUserName(rs.getString("username"));
        	 tmpUser.setName(rs.getString("name"));
        	 tmpUser.setStudyId(rs.getInt("studentid"));
        	 tmpUser.setSex(rs.getString("sex"));
        	 tmpUser.setSpecialty(rs.getString("specialty"));
        	 tmpUser.setClassId(rs.getString("classid"));
        	 tmpUser.setPhone(rs.getString("phone"));
        	
        	 
        	 
         } 

     }catch (SQLException e) {
			e.printStackTrace();
		}finally
		{
			DBbean.close(rs);
			DBbean.close(stmt);
			DBbean.close(conn);
			} 
     return tmpUser;
 }
	
	
	public int register()
	{
		//System.out.println("passWord"+passWord);
		//System.out.println("passWord1"+passWord1);
		//String sql = "insert into student(username,password,name) values(?,?,?);";
		String sql = "insert into student (username,password,name,studentid,sex,specialty,classid,phone,rdate) values (?,?,?,?,?,?,?,?,?);";
	 	Connection conn = DBbean.getConn();
	 	PreparedStatement pstmt = DBbean.getPrepareStatement(conn, sql);
	 	if(passWord.equals(passWord1))
	 	{
	 		
	 	try {
	 		
	 		pstmt.setString(1, userName);
			pstmt.setString(2, passWord);
			pstmt.setString(3, name);
			pstmt.setInt(4, studyId);
			pstmt.setString(5, sex);
			pstmt.setString(6, specialty);
			pstmt.setString(7, classId);
			pstmt.setString(8, phone);
			pstmt.setString(9, rdate);
			
			
			
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
	public   List<user> getUser(){
		List<user> list = new ArrayList<user>();
		Connection conn =null;
		Statement stmt =null;
		ResultSet rs = null;
		try {
			conn = DBbean.getConn();
			stmt = DBbean.getStatement(conn);
			rs = stmt.executeQuery("select * from student order by userid desc");
			
			while(rs.next())
			{
				user u = new user();
				u.setUserid(rs.getInt("userid"));
				u.setUserName(rs.getString("username"));
				u.setName(rs.getString("name"));
				u.setStudyId(rs.getInt("studentid"));
				u.setSex(rs.getString("sex"));
				u.setSpecialty(rs.getString("specialty"));
				u.setClassId(rs.getString("classid"));
				u.setPhone(rs.getString("phone"));
				u.setRdate(rs.getString("rdate"));
				
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
	public static void delet(int id){
		Connection conn =null;
		Statement stmt =null;
		ResultSet rs = null;
		try {
			conn = DBbean.getConn();
			stmt = DBbean.getStatement(conn);
			stmt.executeUpdate("delete from student where userid="+id);
			
			
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally
		{
			DBbean.close(stmt);
			DBbean.close(conn);
			}
	}
	public static int userLogin(String username,String password)
	{
		System.out.println("username"+username);
		System.out.println("password"+password);
		if(username==""||username==null)
		{
			return 2;
		}
		if(password==""||password==null)
		{
			return 3;
		}
		
		String sql="SELECT * FROM student where username='"+username+"'"+" "+"and"+" "+"password='"+password+"'";
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
//		user u = null;
//		
//		String sql="select * from buser where username ='" + username + "'";
//	 	Connection conn = DBbean.getConn();
//	 Statement stmt = DBbean.getStatement(conn);
//	 ResultSet rs = DBbean.getResultSet(stmt, sql);
//	 try{
//			if(rs.next()) {
//				String pwd = rs.getString("password");//System.out.println("w".equals((String)rs.getString("password")));
//				System.out.println("pwd:"+pwd);
//				if(pwd.equals(password)) {
//									
//					return 4;		
//								}
//				return 1;//此用户密码不对
//				
//			} else {
//				return 0;//查无此用户
//				u = new user();
//				u.setUserid(rs.getInt("userid"));
//				u.setUserName(rs.getString("username"));
//				u.setPassWord(rs.getString("password"));
			
	//		}
	 
	 
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
		 String sql = "update student set password='" + password+ "' where username='" + username+"'";
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