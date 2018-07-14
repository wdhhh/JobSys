package servelt;

import java.io.*;

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


public class login extends HttpServlet {
	 public login() {
	        super();
	    }
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
		
			  String role = request.getParameter("role");
			  HttpSession session=request.getSession();
				ApplicationContext ctx = new ClassPathXmlApplicationContext(
				        "beans.xml");
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out=response.getWriter();
				String username = request.getParameter("username");
				String password = request.getParameter("password");
				if(role!=null&&role.trim().equals("student"))
				{
				int notify = user.userLogin(username,password);
				if(notify==4)
				{
				session.setAttribute("username",user.find(username).getUserName());
			    session.setAttribute("classid",user.find(username).getClassId());				
				session.setAttribute("user","true");
				response.sendRedirect("index_student.jsp?id="+username);
				}else if(notify==0)
				{
					out.println("没有这个用户");
				return;
				}else if(notify==1){
				 out.println("密码错误");
				return;
				}
				
			}else if(role!=null&&role.trim().equals("teacher"))
				{
				int workId=0;
			    teacher t = new teacher();
			    try{
				workId = Integer.parseInt(username);
				}catch(Exception e)
				{
					out.println("您的输入有误");
				}
				out.println(workId);
				
				t.setWorkId(workId);
				t.settPassword(password);
				
				int notify = t.login();
				if(notify==2){
					out.println("用户名不存在");
				return;
				}else if(notify==1){
					out.println("密码错误");
				return;
				}else if(notify==4)
				{
				

			session.setAttribute("name",teacher.findByNo(workId).gettName());
			session.setAttribute("classid",teacher.findByNo(workId).getClassid());
				
				
					session.setAttribute("teacher","true");
					response.sendRedirect("index.jsp?id="+username);
				}else if(notify==0)
				{
					out.println("没有这个用户");
				return;
				}else if(notify==1){
					out.println("密码错误");
				return;
				}else if(notify==3)
				{
					out.println("密码为空");
				return;
				}
				}else if((role!=null&&role.trim().equals("admin")))
				{
				
				int notify = admin.userLogin(username,password);
				if(notify==2){
					out.println("用户名不能为空");
				return;
				}else if(notify==3){
					out.println("密码不能为空");
				return;
				}else if(notify==4)
				{
					session.setAttribute("admin","true");
					response.sendRedirect("admin/index.jsp");
				}else if(notify==0)
				{
					out.println("没有这个用户");
				return;
				}else if(notify==1){
					out.println("密码错误");
				return;
				
				
				

				}
				
				
				
				

				}}
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
		}
}

		
