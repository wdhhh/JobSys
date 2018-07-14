package servelt;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import kjzy.wangyu.manager.admin;
import kjzy.wangyu.teacher.teacher;
import kjzy.wangyu.user.user;

public class register extends HttpServlet {
	@SuppressWarnings("deprecation")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
		
		
		  HttpSession session=request.getSession();
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out=response.getWriter();
			String submit = request.getParameter("action");
			if(submit!=null&&submit.trim().equals("register")){
				String username=null;
				username = request.getParameter("username");
				String password = request.getParameter("password");
				String password1 = request.getParameter("password1");
				String name = request.getParameter("name");
				int userId = 0;;
				String sex = request.getParameter("sex");
				String specailty = request.getParameter("specialty");
				String classId = request.getParameter("classid");
				String phone = request.getParameter("phone");
				System.out.println(username+"username是");
				if(username.trim()==""||password.trim()==""||password1.trim()==""||name.trim()==""||sex==""||specailty==""||classId==""||phone=="")
				{
				out.println("请正确输入数据");
				return;
				}else
				{
				try{userId = Integer.parseInt(request.getParameter("userid"));}
					catch(Exception e)
				{
				out.println("学号只包含数字，请重新输入");
				return;
				}
				user u = new user();
				u.setUserName(username);
				u.setPassWord(password);
				u.setPassWord1(password1);
				u.setName(name);
				u.setStudyId(userId);
				u.setSex(sex);
				u.setSpecialty(specailty);
				u.setClassId(classId);
				u.setPhone(phone);
				u.setRdate(new Date().toLocaleString()); 
				//System.out.println((new Date().toLocaleString()).toString());
				if(u.register()==1){
				
				out.println("<html><head><meta http-equiv='refresh' content='5;url=../login.jsp'><head><body>");
				out.println("注册成功<br><a href ='../login.jsp'>系统将在5秒后自动跳转<a>");
				
				out.println("</body></html>");
				return;
				}else if(u.register()==2){
				out.println("两次输入的密码不相等");
				return;
				}
				}
			}}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
