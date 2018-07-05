<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ page import="kjzy.wangyu.user.*"%>
<%@ include file="check.jsp"%>
<%
	user u = new user();
	List<user> list = u.getUser();
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
		<table width="479" height="49" border="1" align=center
			bordercolor="#0000FF" bgcolor="#ECE9D8">
			<tr>
				<td>
					ID
				</td>
				<td>
					用户名
				</td>
				<td bgcolor="#CCCCCC">
					姓名
				</td>
				<td>
					学号
				</td>
				<td>
					性别
				</td>
				<td>
					专业
				</td>
				<td>
					班级
				</td>
				<td>
					电话
				</td>
				<td>
					注册日期
				</td>
			</tr>
			<%
				for (int i = 0; i < list.size(); i++) {
					u = list.get(i);
			%>
			<tr>
				<td><%=u.getUserid()%></td>
				<td><%=u.getUserName()%></td>
				<td><%=u.getName()%></td>
				<td><%=u.getStudyId()%></td>
				<td><%=u.getSex()%></td>
				<td><%=u.getSpecialty()%></td>
				<td><%=u.getClassId()%></td>
				<td><%=u.getPhone()%></td>
				<td><%=u.getRdate()%></td>
				<td>
					<a href="delet.jsp?id=<%=u.getUserid()%>">删除</a>
				</td>
			</tr>

			<%
				}
			%>
	</table>
	</body>
</html>
