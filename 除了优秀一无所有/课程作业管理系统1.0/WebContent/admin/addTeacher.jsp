<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="check.jsp"%>
<%@ page import="kjzy.wangyu.teacher.*" %>
<%


 %>
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
  <p align="center">增加老师</p>
  <form name="form1" method="post" action="/课程作业管理系统1.0/addTeacher">
  <input type="hidden" name="action" value="teacherRegister">
  <table width="461" border="0" align="center">
    <tr>
      <td width="105">老师id：</td>
      <td width="346"><input name="workid" type="text" id="workid" readonly="true">
      *由系统自动生成。</td>
    </tr>
    <tr>
      <td>密码：</td>
      <td><input name="password" type="password" id="password"></td>
    </tr>
    <tr>
      <td>确认密码：</td>
      <td><input type="password" name="password1"></td>
    </tr>
    <tr>
      <td>姓名：</td>
      <td><input type="text" name="name"></td>
    </tr>
    <tr>
      <td>性别：</td>
      <td><input name="sex" type="radio" value="男" checked>
        男
          <input type="radio" name="sex" value="女">
        女</td>
    </tr>
    <tr>
      <td>科目：</td>
      <td><input type="text" name="sub"></td>
    </tr>
    <tr>
      <td>班级：</td>
      <td><input name="classid" type="text" id="classid">
      *每一个老师分配一个班级</td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
        <input type="submit" name="Submit" value="提交">
      </div></td>
    </tr>
  </table>
  
  </form>
  <p align="center">&nbsp;</p>
  <p>&nbsp; </p>
  </body>
  
</html>
