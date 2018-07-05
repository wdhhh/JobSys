<%@ page language="java" import="kjzy.wangyu.teacher.*" pageEncoding="GB2312"%>

<%int id =Integer.parseInt(request.getParameter("id")); 
%>
<%
String q = request.getParameter("action");

if(q!=null&&q.trim().equals("q"))
{
int nid =id;
String password = request.getParameter("password");
teacher t = new teacher();
t.setWorkId(nid);
t.settPassword(password);
t.setTPassword1(password);
if(t.login()==4)
	{%>  
	 <form action="passworldchange.jsp">
  请输入新密码：<input type="hidden" name="action" value="qq"> 
  			<input type="hidden" name="id" value=<%=id %> />
  <input type="password" name="password6" > <br>
  再次输入密码：<input type="password" name="password7" > 
  
  <input type="submit" value="修改">
  </form>
  <% 
  return;
	}else {out.println("对不起你这个家伙的密码输入错误！");}

}
if(q!=null&&q.trim().equals("qq"))
{
int username=Integer.parseInt(request.getParameter("id"));
String password = request.getParameter("password6");
teacher t = new teacher();
t.setWorkId(username);
t.settPassword(password);
t.setTPassword1(password);
if(t.changePassword())
{
out.print("修改成功！请记住你的新密码！");return;
}

return;
}
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
    <title>修改密码的信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
  </head>
  请输入你现在的密码：
  <form action="passworldchange.jsp">
  <input type="hidden" name="action" value="q">
  <input type="hidden" name="id" value=<%=id %>> 
  <input type="password" name="password" > 
  <input type="submit" value="检验">
   
  </form>
  <body><br>
    
  </body>
</html>
