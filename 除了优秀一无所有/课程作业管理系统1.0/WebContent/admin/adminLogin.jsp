<%@ page language="java" pageEncoding="GB18030"%>
<%
String login = request.getParameter("login");
if(login!=null&&login.trim().equals("admin")){
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	if(username.equals("admin")&&password.equals("111111"))
	{
		session.setAttribute("admin","true");
		response.sendRedirect("index.jsp");
	}else
	{
	out.println("错误");
	return;
	}
	
	
	
	
}
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>后台管理系统</title>
		<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
		<link href="css/adminstyle.css" rel="stylesheet">
		<link rel="stylesheet" href="css/adminflyout.css">
	</head>
	<body topmargin="0" leftmargin="0" bgcolor="#ffffff">
		<table width="100%" align="center" border="0" cellpadding="0"
			cellspacing="0">
			<tbody>
				<tr>
					<td>
						<table width="100%" bgcolor="#002c9c" border="0" cellpadding="0"
							cellspacing="0">
							<tbody>
								<tr>
									<td valign="bottom" width="260" height="50">
										<img src="image/banner.gif" width="225" height="78">									</td>
									<td valign="bottom" width="230" height="70">&nbsp;
										
								  </td>
									<td width="260" align="center" height="50">
										<div align="center"></div>
									</td>
								</tr>
							</tbody>
						</table>
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<td background="image/line_white1200.htm" height="2"></td>
								</tr>
							</tbody>
						</table>
						<table width="100%" background="image/topback.gif" border="0"
							cellpadding="0" cellspacing="0">
							<tbody>
								<tr valign="top">
									<td width="160" height="22">&nbsp;
										
									</td>
									<td height="21">&nbsp;
										
									</td>
									<td width="160" height="21">&nbsp;
										
									</td>
								</tr>
							</tbody>
						</table>
						<table width="100%" bgcolor="#3a79d8" border="0" cellpadding="0"
							cellspacing="0">
							<tbody>
								<tr>
									<td width="340">
										<p>
											<img src="image/login_index.gif" width="308" height="352">										</p>
										<p>&nbsp;
											
									  </p>
										<p>&nbsp;
											
									  </p>
									</td>
									<td valign="top">
										<p>
											<br>
											<br>
										</p>
										<table width="80%" border="0" cellpadding="0" cellspacing="0">
											<tbody>
												<tr>
													<td>
														<img src="image/login_logo.gif" width="162" height="50">													</td>
												</tr>
											</tbody>
										</table>
										<table width="300" border="0" cellpadding="0" cellspacing="0">
											<tbody>
												<tr>
													<td width="14" height="10">
														<img src="image/ytab_1.gif" width="14" height="10">													</td>
													<td background="image/ytab_2.gif"></td>
													<td width="14">
														<img src="image/ytab_3.gif" width="14" height="10">													</td>
												</tr>
												<tr>
													<td background="image/ytab_4.gif"></td>
													<td bgcolor="#c3d3fd">
														<p>&nbsp;
															
														</p>

														<table width="100%">
															<tbody>
																<form name="loginform" method="post" action="adminLogin.jsp">
																<input type="hidden" name="login" value="admin"/>
																<tr>
																	<td class="105V" align="right">
																		<font color="#000000"><b class="105V">管理员账号：</b>
																		</font>
																	</td>
																	<td>
																		<input name="username" type="text">
																	</td>
																</tr>
																<tr>

																	<td class="105V" align="right">
																		<font color="#000000"><b class="105V">管理员密码：</b>
																		</font>
																	</td>
																	<td>
																		<input name="password" type="password">

																	</td>
																</tr>

																<tr>
																	<td colspan="2">
																		<img src="image/space.htm" width="1" border="0"
																			height="7">
																		<br>
																		<center>
																			<hr size="1" noshade="noshade">
																			<input value="提交" type="submit">
																			&nbsp;
																			<input name="Reset" value="取消 " type="reset">
																			<br>
																		</center>
																	</td>
																</tr>

															</tbody>
														</table>

														<p>&nbsp;
															
														</p>
													</td>
													<td background="image/ytab_5.gif"></td>
												</tr>
												<tr>
													<td height="10">
														<img src="image/ytab_6.gif" width="14" height="10">													</td>
													<td background="image/ytab_7.gif" height="10"></td>
													<td>
														<img src="image/ytab_8.gif" width="14" height="10">													</td>
												</tr>
											</tbody>
										</table>
										<br>
										<br>
									</td>
								</tr>
							</tbody>
						</table>
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<td bgcolor="#002c9c" height="1"></td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tbody>
				<tr>
					 <td bgcolor="#002c9c" height="1"></td>
				</tr>
			</tbody>
		</table>
		<table width="100%" bgcolor="#6386de" border="0" cellpadding="0"
			cellspacing="0">
			<tbody>
				<tr>
					<td valign="top" align="center" height="78">
						<table width="60%" border="0" cellpadding="2" cellspacing="1">
							<tbody>
								<tr>
									<td>
										<div align="center">
											<font color="#cccccc">&#169; Copyright 2008-2009,
												作业提交系统</font>
										</div>
									</td>
								</tr>

							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
	</body>
</html>