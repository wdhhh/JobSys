<%@ 
page language="java" import="kjzy.wangyu.teacher.*,kjzy.wangyu.user.*,kjzy.wangyu.manager.*,org.springframework.context.ApplicationContext,org.springframework.context.support.ClassPathXmlApplicationContext"  pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>作业提交系统</title>
<link rel="stylesheet" type="text/css" href="admin/css/style.css" />
<link rel="stylesheet" type="text/css" href="admin/css/body.css"/> 
</head>
<body>
<div class="container">
	<section id="content">
		<form name="loginform" method="post"  onsubmit="return check_input()" action="/课程作业管理系统1.0/login">
		<input type="hidden" name="login" value="true"/>
	
			<h1>作业提交系统</h1>
			<div>
				<input type="text" placeholder="账号"  id="username" name="username"/>
			</div>
			<div>
				<input type="password" placeholder="密码"  id="password" name="password"/>
			</div>
			<div>
			<font color="#000000"><b class="105V">用户选择：</b>
					<select name="role">
									<option selected value="student">学生</option>
									<option value="teacher">老师</option>
									<option admin value="admin">管理员</option>
					</select>
			</div>
<!-- 			 <div class=""> -->
<!-- 				<span class="help-block u-errormessage" id="js-server-helpinfo">&nbsp;</span>			</div>  -->
<!-- 			<div> -->
				<!-- <input type="submit" value="Log in" /> -->
				<input type="submit" value="登录" class="btn btn-primary" id="js-btn-login"/>
				<a href="student/register.jsp">学生注册 </a>
				
			</div>
		</form><!-- form -->
		 <!-- button -->
	</section><!-- content -->
</div>
<!-- container -->


<br><br><br><br>
<div style="text-align:center;">
<p>看啥看，你作业交了吗？哈哈哈</p>
</div>
</body>
</html>
<script type="text/javascript">
 function check_input()
 {
	 var username = document.getElementById("username").value;
     var password = document.getElementById("password").value;
	   if(username=="") //用户名判断
            {
                alert("用户名不能为空");
				 return false;
            }
        else if(password=="")
            {
                alert("密码不能为空");
                return false;
			}  
         else
           {
        
                    return true;
            } 		
	 
 }
        
		  </script>  