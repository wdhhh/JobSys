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
   <h1> ����ҵ����������</h1>
   <table width="473">
   <tr>
   <td width="68">����ҵ����:</td><td width="369"><%=h.getStudent()%></td>
   </tr>
   <tr>
   <td width="68">��ҵ����:</td><td width="369"><%=h.getHtitle() %></td>
   </tr>
   <tr>
     <td height="25">��ҵ����:</td>
     <td><%=h.getHcontent() %></td>
     </tr>
   
     <td height="25">�Ͻ�ʱ��:</td>
     <td><%=h.getCtime() %></td>
     
     <td height="25">����:</td>
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
   <p>��֣�
     <input type="text" name="textfield">
     <input type="submit" name="Submit" value="�ύ">
  </p>
  </form>
  </body>
</html>
