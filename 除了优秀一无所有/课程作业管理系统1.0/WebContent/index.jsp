<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>



<%String url="homepage.jsp";
String id = request.getParameter("id");
String url1 = "teacher/t_info.jsp?id=" + id;
String url2 = "teacher/t_homework.jsp?id=" + id;//布置作业

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "">
<HTML><HEAD><META http-equiv="Content-Type" content="text/html; charset=GBK">
<SCRIPT language="JavaScript1.2">
<!--




function high(which2){
	theobject=which2
	highlighting=setInterval("highlightit(theobject)",50)
}
function low(which2){
	clearInterval(highlighting)
	which2.filters.alpha.opacity=80
}
function highlightit(cur2){
	if (cur2.filters.alpha.opacity<100)
		cur2.filters.alpha.opacity+=10
	else if (window.highlighting)
		clearInterval(highlighting)
}
//-->
</SCRIPT>

<LINK href="image/style.css" rel="stylesheet" type="text/css">
<TITLE>广西民族大学软件与信息安全学院---软件工程</TITLE>
<META content="MSHTML 6.00.2800.1491" name="GENERATOR"></HEAD><BODY background="image/bg-2.jpg" topmargin="0"
style=" background-repeat:no-repeat ;
       background-size:100% 100%; 
       background-attachment: fixed;">



<SCRIPT language="JavaScript" src="image/mm_menu.js"></SCRIPT>




<DIV align="center">
<TABLE width="780" height="27" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#65A9F6">
 <TBODY><TR>
		
    <TD colspan="" align="left" valign="top"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="780" height="150" hspace="0" vspace="0">
      <param name="movie" value="image/index[1].swf">
      <param name="quality" value="high">
      <param name="wmode" value="transparent">
        
    </object></TD>
	</TR>
</TBODY></TABLE>
</DIV>
<TABLE width="780" border="0" align="center" cellpadding="0" cellspacing="0" background="image/index_1_03.gif" bgcolor="#FFFFFF">
  <TBODY><TR> 
    <TD width="138" align="left" valign="top"> <TABLE width="138" height="168" border="0" cellpadding="0" cellspacing="0" background="./湖南科技职业学院---软件学院_files/index_1_03.gif">
        <TBODY><TR> 
          <TD width="136" height="28" align="left" valign="top"><div align="center"></div></TD>
        </TR>
        <TR> 
          <TD align="left" valign="top"></TD>
        </TR>
		
		    <TR> 
			   
          <TD align="left" valign="top"><div align="center"><A href=<%=url1 %> target="child">资料修改</A> </div></TD>
			</TR>
			<TR> 
			   
          <TD align="left" valign="top"><form name="form1" method="post" action="">
            <div align="center"><A href=<%=url2 %> target="child">作业布置</A>              </div>
          </form>          </TD>
			</TR>
			<TR> 
			   
          <TD align="left" valign="top"><div align="center"><A href="teacher/homework_fix.jsp?id=<%=id %>" target="child">作业批改</A></div></TD>
			</TR>
			<TD align="left" valign="top"><div align="center"> <A href="login.jsp">返回首页</A></div> </TD> 
      </TBODY></TABLE></TD>
    <TD width="642" align="left" valign="top"><TABLE width="850" height="550" border="0" cellpadding="0" cellspacing="0" background="image/bg-1.jpg"
     style=" background-repeat:no-repeat ;
       background-size:100% 100%; 
       background-attachment: fixed;" >
        <TBODY><TR>
          <TD width="642" height="20" align="left" valign="top"><%=id %>&nbsp;：&nbsp;Welcome  </TD>
        </TR>
        <TR>
          <TD width="642" height="195" align="left" valign="top"><iframe ID="child" name="child" frameborder=0 width=642 height=400 marginheight=0 marginwidth=0  src=<%=url %> scrolling="Auto" frameborder="0"></iframe></TD>
        </TR>
      </TBODY></TABLE></TD>
  </TR>
</TBODY></TABLE>

<TABLE width="780" border="0" align="center" cellpadding="0" cellspacing="0">

 <TBODY>
	

	 
		
</TBODY></TABLE>

</BODY></HTML>