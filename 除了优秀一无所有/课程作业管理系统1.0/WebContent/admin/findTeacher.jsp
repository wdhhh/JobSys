<%@ page language="java" pageEncoding="GB18030" import="kjzy.wangyu.teacher.*,java.util.*"%>
<%
request.setCharacterEncoding("gb2312");
String find = request.getParameter("find");

if(find!=null&&find.trim().equals("findById")){
int findByName=0;
try{
findByName =Integer.parseInt(request.getParameter("finded").trim());
}
catch(NumberFormatException e)
{
out.println("请输入正确的ID");
return;
}
	

	if(teacher.findByNo(findByName)==null)
	{
	out.println("sorry find not!");
	return;
	}else
	{
		
		%>
		<table border="1">
      <tr>
      <td>ID</td> <td>姓名</td> <td>性别</td>
      </tr>
      <tr>
      <td><%=teacher.findByNo(findByName).gettWorkId() %></td> <td><%=teacher.findByNo(findByName).gettName() %></td> <td> <%=teacher.findByNo(findByName).getSex()%></td>
      </tr>
      
      </table>
		
	<% 
	}
}
else if(find!=null&&find.trim().equals("findByName")){
	String findByName =request.getParameter("finded").trim();
	
	
	 if(teacher.findByName(findByName)!=null)
	{
	
	
	%>
	
	
	<%
	teacher u = new teacher();
	List<teacher> list = u.findByName(findByName);
%>
	
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
					姓名
				</td>
				<td>
					所授班级
				</td>
			</tr>
			<%
				for (int i = 0; i < list.size(); i++) {
					u = list.get(i);
			%>
			<tr>
				<td><%=u.gettWorkId()%></td>
				<td><%=u.gettName()%></td>
				<td><%=u.getSex() %></td>
				<td><%=u.getClassid() %></td>
				
				
			</tr>

			<%
				}
				
			%>
	</table>
	
	
	
	
	
	<% 
	return;
	}
	out.println("sorry find not!");
	return;
}
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
  <form action="findTeacher.jsp" method="post">
  	<h1 align="center">
  	
  	  查询老师信息  	</h1>
  	<p>类型
  	  <select name="find">
  	    <option selected value="findById">按ID查询</option>
  	    <option value="findByName">按姓名查询</option>
      </select>
  	</p>
  	<p>
  	  <input type="text" name="finded">
  	  <input type="Submit" value="搜索">
      </p>
      
  </form>
  </body>
</html>
