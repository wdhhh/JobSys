<%@ page language="java" import="java.sql.*" pageEncoding="GB18030"%>
<%@ page import="kjzy.wangyu.util.*"%>
<%@ include file="check.jsp"%>
<%
		int pageSize=6;
        int pageNow=1;
        int rowCount=0;
        int pageCount=0;
        int workid;
        String  s_pageNow =request.getParameter("pageNow");
        if(s_pageNow!=null){
			pageNow = Integer.parseInt(s_pageNow);
			}
			Connection conn =null;
		    Statement stmt =null;
		    ResultSet rs = null;

			conn = DBbean.getConn();
			stmt = DBbean.getStatement(conn);
			//rs = stmt.executeQuery("select * from teacher order by workid desc");
			rs = stmt.executeQuery("select count(*) from teacher");
			if(rs.next())
			{
				rowCount = rs.getInt(1);
				System.out.println(rowCount);
			}
			if(rowCount%pageSize==0)
			{
				pageCount=rowCount/pageSize;
			}else
			{
					pageCount= (rowCount/pageSize) + 1; 
			}
			
			rs = stmt.executeQuery("select top "+pageSize+" * from teacher where workid not in ( select top "+pageSize*(pageNow-1)+" workid from teacher)");
			
		
			
			
			
			
	//--teacher t = new teacher();
	//List<teacher> list = t.getTeacher(pageNow);-->
	
	
	
	
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312"><style type="text/css">
<!--
body {
	background-image: url(image/bg.jpg);
}
-->
</style></head>
	<body>
		<table width="479" height="49" border="1" align=center
			bordercolor="#0000FF" bgcolor="#ECE9D8">
			<tr>
				<td>
					ID
				</td>
				<td>
					姓名
				</td>
				<td bgcolor="#CCCCCC">
					性别
				</td>
				<td>
					专业
				</td>
				<td>
					班级
				</td>
			</tr>
			<%
			while(rs.next())
			{
				
				
				workid=rs.getInt("workid");
				
			%>
			<tr>
				<td><%=workid%></td>
				<td><%=rs.getString("tname")%></td>
				<td><%=rs.getString("sex")%></td>
				<td><%=rs.getString("subject")%></td>
				<td><%=rs.getString("classid")%></td>
	

				<td>
					<a href="deletTeacher.jsp?id=<%=workid%>">删除老师档案</a>
				</td>
			</tr>

			<%
				}
			%>
	</table>
	<% 
	if(pageNow!=1){
	out.println("<a href=teacherList.jsp?pageNow="+(pageNow-1)+">上一页<a>");
	}
	for(int i = 1;i<pageCount+1;i++)
			{
			out.println("<a href =teacherList.jsp?pageNow="+i+">["+i+"]");
			}
if(pageNow!=pageCount){
	out.println("<a href=teacherList.jsp?pageNow="+(pageNow+1)+">下一页<a>");
	}
%>
	</body>
</html>
