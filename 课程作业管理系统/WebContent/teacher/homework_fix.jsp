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
  <h1>��ҵ��Ϣ</h1>
  <table border="1">
  	<tr>
  	<td>����</td><td>���ʱ��</td><td>ѧ��</td><td>����ѡ��</td>
  	</tr>
  	<%
				for (int i = 0; i < list.size(); i++) {
					hm = list.get(i);
			%>
			<tr>
			<td><%=hm.getHtitle() %></td>
			<td><%=hm.getCtime() %></td>
			<td><%=hm.getStudent() %></td>
			<td><a href="fix_homework.jsp?id=<%=hm.getHid() %>">������ҵ</a></td>
			</tr> 
			
			<%} %>
  </table>  
  <body>
   
  </body>
</html>

