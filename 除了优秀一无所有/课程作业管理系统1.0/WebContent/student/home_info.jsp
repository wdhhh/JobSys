<%@ page language="java" import="kjzy.wangyu.manager.*,java.util.*" pageEncoding="utf-8"%>

<%
	homeWorkMamager hm = new homeWorkMamager();
	List<homeWorkMamager> list = hm.getUser((String)session.getAttribute("classid"));
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
  	<td>标题</td><td>布置时间</td><td>完成时间</td><td>操作选项</td>
  	</tr>
  	<%
				for (int i = 0; i < list.size(); i++) {
					hm = list.get(i);
			%>
			<tr>
			<td><%=hm.getHtitle() %></td>
			<td><%=hm.getBtime() %></td>
			<td><%=hm.getCtime() %></td>
			<td><a href="do_homework.jsp?id=<%=hm.getHid() %>">详细信息</a></td>
			</tr> 
			
			<%} %>
  </table>  
  <body>
   
  </body>
</html>
