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
  <p align="center">������ʦ</p>
  <form name="form1" method="post" action="/�γ���ҵ����ϵͳ1.0/addTeacher">
  <input type="hidden" name="action" value="teacherRegister">
  <table width="461" border="0" align="center">
    <tr>
      <td width="105">��ʦid��</td>
      <td width="346"><input name="workid" type="text" id="workid" readonly="true">
      *��ϵͳ�Զ����ɡ�</td>
    </tr>
    <tr>
      <td>���룺</td>
      <td><input name="password" type="password" id="password"></td>
    </tr>
    <tr>
      <td>ȷ�����룺</td>
      <td><input type="password" name="password1"></td>
    </tr>
    <tr>
      <td>������</td>
      <td><input type="text" name="name"></td>
    </tr>
    <tr>
      <td>�Ա�</td>
      <td><input name="sex" type="radio" value="��" checked>
        ��
          <input type="radio" name="sex" value="Ů">
        Ů</td>
    </tr>
    <tr>
      <td>��Ŀ��</td>
      <td><input type="text" name="sub"></td>
    </tr>
    <tr>
      <td>�༶��</td>
      <td><input name="classid" type="text" id="classid">
      *ÿһ����ʦ����һ���༶</td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
        <input type="submit" name="Submit" value="�ύ">
      </div></td>
    </tr>
  </table>
  
  </form>
  <p align="center">&nbsp;</p>
  <p>&nbsp; </p>
  </body>
  
</html>
