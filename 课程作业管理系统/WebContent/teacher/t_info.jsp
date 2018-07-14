<%@ page language="java" pageEncoding="utf-8" import="kjzy.wangyu.teacher.*"%>

<%

int findByName =Integer.parseInt(request.getParameter("id"));

String url = "passworldchange.jsp?id="+findByName;

		%>
		<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
		<html>
  <head></head>
		<h1 align="center">详细资料</h1>  
		<p>您的ID是:<%=teacher.findByNo(findByName).gettWorkId() %></p> 
		<p>您的姓名是：<%=teacher.findByNo(findByName).gettName() %></p> 
		<p>您的性别是：<%=teacher.findByNo(findByName).getSex()%></p>
		<p>您所受的班级是：<%=teacher.findByNo(findByName).getClassid() %></p>
		<p><a href=<%=url %>>修改密码</a></p>
</html>