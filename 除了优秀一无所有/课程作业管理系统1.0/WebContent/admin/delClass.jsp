<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'delTeacher.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

    <style type="text/css">
<!--
.STYLE1 {color: #0000CC}
body {
	background-image: url(image/bg.jpg);
}
-->
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
  
  <body>
  <h1 align="center"><br>
  删除班级</h1>
  <p class="STYLE1">&nbsp;</p>
  <p class="STYLE1">请输入班级号码以及相关信息：</p>
  <table width="527" border="0" align="center">
    <tr>
      <td width="230">&nbsp;</td>
      <td width="287">&nbsp;</td>
    </tr>
    <tr>
      <td><span class="STYLE1">请输入班级代号：</span></td>
      <td><span class="STYLE1">
        <input type="text" name="textfield2">
      </span></td>
    </tr>
    <tr>
      <td><span class="STYLE1">请输入班级名称：</span></td>
      <td><span class="STYLE1">
        <input type="text" name="textfield3">
      </span></td>
    </tr>
    <tr>
      <td><span class="STYLE1">请输入管理员密码：</span></td>
      <td><span class="STYLE1">
        <input type="text" name="textfield4">
      </span></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"></td>
    </tr>
  </table>
  <p class="STYLE1">&nbsp;</p>
  <p class="STYLE1">&nbsp;</p>
  <p class="STYLE1">&nbsp;</p>
  </body>
</html>
