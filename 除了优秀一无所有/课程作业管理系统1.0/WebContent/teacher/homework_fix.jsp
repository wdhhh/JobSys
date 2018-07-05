<%@ page language="java" import="java.util.*,kjzy.wangyu.manager.*" pageEncoding="GB2312"%>

<%
	homeWorkMamager hm = new homeWorkMamager();
	List<homeWorkMamager> list = hm.gethomework(request.getParameter("id"));
%>


 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
  </head>
  <h1>作业信息</h1>
  <table border="1">
  	<tr>
  	<td>标题</td><td>完成时间</td><td>学生</td><td>操作选项</td>
  	</tr>
  	<%
				for (int i = 0; i < list.size(); i++) {
					hm = list.get(i);
			%>
			<tr>
			<td><%=hm.getHtitle() %></td>
			<td><%=hm.getCtime() %></td>
			<td><%=hm.getStudent() %></td>
			<td><a href="fix_homework.jsp?id=<%=hm.getHid() %>">批改作业</a></td>
			</tr> 
			
			<%} %>
  </table>  
  <body>
   
  </body>
</html>

