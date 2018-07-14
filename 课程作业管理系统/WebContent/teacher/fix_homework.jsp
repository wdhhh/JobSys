<%@ page language="java" import="kjzy.wangyu.manager.*" pageEncoding="GB2312"%>

<%int id = Integer.parseInt(request.getParameter("id"));
	homeWorkMamager h =homeWorkMamager.findH(id); 
	
	
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
  </head>
  
  <body>
  <form name="loginform" method="post"  onsubmit="" action="">
   <h1> 改作业啦！！！！</h1>
   <table width="473">
   <tr>
   <td width="68">做作业的人:</td><td width="369"><%=h.getStudent()%></td>
   </tr>
   <tr>
   <td width="68">作业标题:</td><td width="369"><%=h.getHtitle() %></td>
   </tr>
   <tr>
     <td height="25">作业内容:</td>
     <td><%=h.getHcontent() %></td>
     </tr>
   
     <td height="25">上交时间:</td>
     <td><%=h.getCtime() %></td>
     
     <td height="25">附件:</td>
     <td><a href="../fileDowload.jsp?filename=<%=h.getCfile() %>"><%=h.getCfile() %></a></td>
     
    
     
   <tr>
     <td height="25">&nbsp;</td>
     <td>&nbsp;</td>
     </tr>
   <tr>
   <td height="25">&nbsp;</td>
   <td>&nbsp;</td>
   </tr>
   </table>
   <p>打分：
     <input type="text" name="textfield">
     <input type="submit" name="Submit" value="提交">
  </p>
  </form>
  </body>
</html>
