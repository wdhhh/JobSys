<%@ page language="java" import="kjzy.wangyu.manager.*" pageEncoding="utf-8"%>
<%int id = Integer.parseInt(request.getParameter("id"));
	homeWorkMamager h =homeWorkMamager.findHomeWork(id); 
	String classid=(String)session.getAttribute("classid");
	
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
  </head>
  
  <body>
   <h1> 做作业啦！！！！</h1>
   <table width="473">
   <tr>
   <td width="68">作业标题:</td><td width="369"><%=h.getHtitle() %></td>
   </tr>
   <tr>
     <td height="25">作业内容:</td>
     <td><%=h.getHcontent() %></td>
     </tr>
   <tr>
     <td height="25">布置时间:</td>
     <td><%=h.getBtime() %></td>
     </tr>
   <tr>
     <td height="25">上交时间:</td>
     <td><%=h.getCtime() %></td>
     </tr>
   <tr>
     <td height="25">附件:</td>
     <td><a href="../fileDowload.jsp?filename=<%=h.getCfile() %>"><%=h.getCfile() %></a></td>
     </tr>
   <tr>
     <td height="25">老师:</td>
     <td><%=h.getTid() %></td>
     </tr>
   <tr>
     <td height="25">&nbsp;</td>
     <td>&nbsp;</td>
     </tr>
   <tr>
     <td height="25">&nbsp;</td>
     <td>&nbsp;</td>
     </tr>
   <tr>
   <td height="25">&nbsp;</td>
   <td>&nbsp;</td>
   </tr>
   <tr>
   <td height="25"> </td>
   <%session.setAttribute("teacherid",h.getTid()); %>
   <a href="uphomework.jsp?teacherid=<%=h.getTid()%>">做作业</a>
   </tr>
   </table>
  </body>
</html>
