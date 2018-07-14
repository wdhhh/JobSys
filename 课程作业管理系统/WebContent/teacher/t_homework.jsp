<%@ page language="java" import="kjzy.wangyu.manager.*,java.util.*" pageEncoding="GB2312"%>

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
  
  <form action="/课程作业管理系统1.0/thomework" method="post"  enctype="">
  <input type="hidden" name="action" id="action" value="ac" />
  <input type="hidden" name="id" id="id" value=<%=request.getParameter("id") %> />
  <p>作业标题：
    <input name="title" type="text" id="title">
  </p>
  <p align="left">作业内容： 
    <textarea name="content" cols="40" rows="10" wrap="physical" id="content">把爱随身携带！</textarea>
  </p>
  <p align="left">上传附件：
    <input type="file" name="file">
  </p>
  <p align="left">布置时间：
    <input name="bdate" type="text" id="bdate" value=<%=(new Date()).toLocaleString() %> readonly="true">
  </p>
  <p align="left">上交时间：
    <input name="update" type="text" id="update">
  </p>
  <p align="center">
    <input type="submit" name="Submit" value="提交">
  </p>
  </form>
  </body>
  
</html>
