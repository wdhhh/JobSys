package servelt;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kjzy.wangyu.manager.ClassManager;
import kjzy.wangyu.teacher.teacher;

public class addTeacher extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
		  HttpSession session=request.getSession();
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out=response.getWriter();
			request.setCharacterEncoding("gb2312");
			String submit = request.getParameter("action");
			if(submit!=null&&submit.trim().equals("teacherRegister")){
				String password = request.getParameter("password");
				String password1 = request.getParameter("password1");
				String name = request.getParameter("name");
				String sex = request.getParameter("sex");
				
				String subject = request.getParameter("sub");
				String classid = request.getParameter("classid");
				teacher t = new teacher();
				t.settPassword(password);
				t.setTPassword1(password1);
				t.setSex(sex);
				t.settName(name);
				t.setSubject(subject);
				t.setClassid(classid);
				if(t.register()==1){
				out.println("注册成功");
				return;
				}else if(t.register()==2){
				out.println("两次输入的密码不相等");
				return;
				}
			}}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
