<%@ page language="java" pageEncoding="utf-8" import="kjzy.wangyu.user.*"%>
<%
String id =request.getParameter("id");

String url = "user_fix.jsp?id="+id;

		%>
		<h1 align="center">详细资料</h1>
		<p>您的姓名是:<%=user.find(id).getName() %></p>
		<p>您的性别是：<%=user.find(id).getSex() %></p>
		<p>您的专业是：<%=user.find(id).getSpecialty() %></p>
		<p>您的班级是：<%=user.find(id).getClassId() %></p>
		<p>您的性别是：<%=user.find(id).getSex() %></p>
		<p><a href=<%=url %>>修改密码</a></p>
