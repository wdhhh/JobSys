<%@ page language="java" import="kjzy.wangyu.manager.*" pageEncoding="GB18030"%>
<%String id =request.getParameter("id"); 
%>
<%
String q = request.getParameter("action");

if(q!=null&&q.trim().equals("q"))
{
String nid = id;
String password = request.getParameter("password");
if(admin.userLogin(nid,password)==4)
	{%>  
	 <form action="user_fix.jsp">
  �����������룺<input type="hidden" name="action" value="qq"> 
  			<input type="hidden" name="id" value=<%=id %> />
  <input type="password" name="password6" > <br>
  �ٴ��������룺<input type="password" name="password7" > 
  
  <input type="submit" value="�޸�">
  </form>
  <% 
  return;
	}else {out.println("�Բ���������һ�������������");}

}
if(q!=null&&q.trim().equals("qq"))
{
if(admin.fix_password(request.getParameter("id").trim(),request.getParameter("password6"))==4)
{
out.print("�޸ĳɹ������ס��������룡");return;
}

return;
}
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
    <title>�޸��������Ϣ</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
  </head>
  �����������ڵ����룺
  <form action="user_fix.jsp">
  <input type="hidden" name="action" value="q">
  <input type="hidden" name="id" value=<%=id %>> 
  <input type="password" name="password" > 
  <input type="submit" value="����">
   
  </form>
  <body><br>
    
  </body>
</html>
