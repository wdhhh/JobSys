<%@ page language="java" import="kjzy.wangyu.manager.*" pageEncoding="GBK"%>
<%@ include file="check.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
  <meta http-equiv="Content-Type" content="text/html; charset=gb2312"><style type="text/css">
<!--
body {
	background-image: url(image/bg.jpg);
}
-->
</style></head>
  
  <body>
  <h1>���Ӱ༶</h1> 
  <form action="/�γ���ҵ����ϵͳ1.0/addclass" method="post">
  <input type="hidden" name="action" value="addClass">
  ������רҵ���֣�<input type="text" name="zhuanye"><br>
  ������༶���֣�<input type="text" name="classname"><br>
  <input type="submit" name="submit" value="�ύ">
  
  </form>
  </body>
</html>
