<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="kjzy.wangyu.user.*" %>

<%


 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>用心去创造自己的世界······</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
  <meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
  <script language="javascript">
  function check()
{
	if(form1.password.value=="")
	{
		alert("输入的密码不能够为空！");
		form1.textfield2.focus();
		return false;
	}
	if(form1.password.value!=form1.password1.value)
	{
		alert("两次输入的密码不相同！");
		form1.textfield2.value="";
		form1.textfield3.value="";
		form1.textfield2.focus();
		return false;
	}
	
	if(form1.name.value=="")
	{
		alert("请输入学生姓名");
		form1.textfield4.focus();
		return false;
	}
	if(form1.userid.value=="")
	{
		alert("请输入正确的学号");
		form1.textfield4.focus();
		return false;
	}
	if(isNaN(form1.userid.value))
	{
		alert("学号含有非法字符");
		form1.textfield4.value="";
		form1.textfield4.focus();
		return false;
	}
	if(form1.phone.value=="")
	{
		alert("请输入真确的电话号码！");
		form1.textfield4.value="";
		form1.textfield4.focus();
		return false;
	}
	return true;
	
	
	

}



</script>
  <script type="text/javascript">
  var req;
 function UserNameCheck()
  	{
  	
  		var username = document.getElementById("username").value;
  		//alert(username);
  		
  		var url="../checkUserName.jsp?username=" + escape(username);
  		//alert(url);
  		if(window.XMLHttpRequest)
  		{
  			req = new XMLHttpRequest();
  		}else if(window.ActiveXObject)
  		{
  			req = new ActiveXObject("Microsoft.XMLHTTP");
  		}
  		if(req)
  		{
  		
  			req.open("GET",url,true);
  			req.onreadystatechange = callback;
  			req.send(null);
  			
  			document.getElementById("checkUserName").innerHTML = "正在验证用户名....";
  		}
  		}
 function callback(){
  		
  		if(req.readyState == 4) {
  	
			if(req.status == 200) 
  				{
  				
  					Message();
  				}
  		}
  		
  	}
  	var s;
   function Message(){
  document.getElementById("checkUserName").innerHTML = "正在验证用户名....";
 	 s= req.responseText;
 //	alert(s);
 	if(s==1)
 	{
   document.getElementById("checkUserName").innerHTML = "用户名存在";
  // document.form1.username.value="";
   }
if(s==2)
   {
   	document.getElementById("checkUserName").innerHTML = "可以注册";
   }
   if(s==3)
   {
   	document.getElementById("checkUserName").innerHTML = "用户名不能够为空";
   }
   }
   
   function d()
	{
	if(s==3||s=="")
	{
	alert ("用户名不能为空");
	form1.username.value="";
	return false;
	}
	if(s==1)
	{
	alert ("请选择另外的用户名！");
	form1.username.value="";
	return false;
	}
	return true;
	}
   
    
  function PassWordCheck()
  {
  var password = document.getElementById("PassWord").value;
  var password1 = document.getElementById("PassWord1").value;
  if(password=="")
  {
  document.getElementById("PassWordCheck").innerHTML = "不能为空";
  return;
  }
  if(password!=password1)
  {
  document.getElementById("PassWordCheck").innerHTML = "密码不同";
  }else
  {
  document.getElementById("PassWordCheck").innerHTML = "密码正确";
  }
  
  }
function ch()
{
alert();
return false
}
 
  </script>
  <body bgcolor="#99CC66">
  
  <h1 align="center">注册页面</h1>
  <div align="center">
  <form name="form1" method="post" action="/课程作业管理系统1.0/register" onSubmit="return d();">
    <input type="hidden" name="action" value="register"/>
    <!--onSubmit="return check();" -->
    <table width="603" border="0">
      <tr>
        <td width="213">用户名：</td>
        <td width="181">
          <input type="text" name="username" id="username" onBlur="UserNameCheck()"></td>
	        <td width="195">&nbsp;<font color ="red"><span id="checkUserName"></span></font></td>
      </tr>
	        
      <tr>
        <td>密码：</td>
        <td colspan="2"><input type="password" name="password" id="PassWord" ></td>
     	    <td width="195">&nbsp;<font color ="red" ><span id="PassWordCheck"></span></font></td>
      </tr>
      <tr>
        <td>确认密码：</td>
        <td colspan="2"><input type="password" name="password1" id="PassWord1" onBlur="PassWordCheck()"></td>
      </tr>
      <tr>
        <td>姓名：</td>
        <td colspan="2"><input type="text" name="name"></td>
      </tr>
      <tr>
        <td>学号：</td>
        <td colspan="2"><input type="text" name="userid"></td>
      </tr>
      <tr>
        <td>性别：</td>
        <td colspan="2"><input name="sex" type="radio" value="男" checked>
        男
          <input type="radio" name="sex" value="女">
          女</td>
      </tr>
      <tr>
        <td>专业：</td>
        <td colspan="2"><input name="specialty" type="text" id="specialty"></td>
      </tr>
      <tr>
        <td>班级：</td>
        <td colspan="2"><input name="classid" type="text" id="classid"></td>
      </tr>
      <tr>
        <td>电话：</td>
        <td colspan="2"><input type="text" name="phone"></td>
      </tr>
      <tr>
        <td colspan="3"><div align="center">
          <input type="submit" name="submit" value="提交">
        </div></td>
      </tr>
    </table>
    </form>
  </div>
  <p>&nbsp; </p>
</body>

</html>
