<%@ page language="java" import="kjzy.wangyu.manager.*,java.util.*" pageEncoding="GB2312"%>
<%String teacherid = request.getParameter("teacherid"); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
  <meta http-equiv="Content-Type" content="text/html; charset=GB2312"><style type="text/css">
<!--
body {
	background-image: url(/image/bg.jpg);
}
-->
</style></head>
  
  <body>
  <form action="/�γ���ҵ����ϵͳ1.0/uphomework" method="post">
  <input type="hidden" name="action" id="action" value="ac" />
  <p>��ҵ���⣺
    <input name="title" type="text" id="title">
  </p>
  <input type="hidden" name="teacherid" value=<%=teacherid %>>
  <p align="left">��ҵ���ݣ� 
    <textarea name="content" cols="40" rows="10" wrap="physical" id="content">�Ѱ�����Я����</textarea>
  </p>
  <p align="left">�ϴ�������
    <input type="file" name="file">
  </p>
  <p align="left">�Ͻ�ʱ�䣺
    <input name="update" type="text" id="bdate" value=<%=new Date().toLocaleString() %> readonly="true">
  <p align="center">
    <input type="submit" name="Submit" value="�ύ">
  </p>
  </form>
  </body>
  
</html>
