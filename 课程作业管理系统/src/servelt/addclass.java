package servelt;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import kjzy.wangyu.manager.ClassManager;
import kjzy.wangyu.manager.admin;
import kjzy.wangyu.teacher.teacher;
import kjzy.wangyu.user.user;

public class addclass extends HttpServlet{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
		  HttpSession session=request.getSession();
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out=response.getWriter();
			request.setCharacterEncoding("gb2312");
			String submit = request.getParameter("action");
			if(submit!=null&&submit.trim().equals("addClass")){
			String classname = request.getParameter("classname");
			String zhuanye =request.getParameter("zhuanye");
			System.out.println(zhuanye);
			ClassManager c = new ClassManager();
			c.setClassName(classname);
			c.setZhuanye(zhuanye);
			if(c.addClass()==1)
			{
			out.println("很牛逼啊！你添加的班级即将生效！");
			return;
			}

			}}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
