<%@ page language="java" import="java.util.*,kjzy.wangyu.user.*" pageEncoding="GB18030"%>
<%@ include file="check.jsp"%>
<%//¼ìÑéid
int id = Integer.parseInt(request.getParameter("id"));
user.delet(id);
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
  </head>
  
  <body>
   É¾³ý³É¹¦
  </body>
</html>
