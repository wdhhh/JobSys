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

import kjzy.wangyu.manager.admin;
import kjzy.wangyu.manager.homeWorkMamager;
import kjzy.wangyu.teacher.teacher;
import kjzy.wangyu.user.user;

public class uphomework extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
	
		  HttpSession session=request.getSession();
			response.setContentType("text/html;charset=UTF-8");
			request.setCharacterEncoding("GB2312");
			PrintWriter out=response.getWriter();
			//String classid = request.getParameter("classid");
			String classid =(String)session.getAttribute("classid");
			String studentname1=(String)session.getAttribute("username");
			//String studentname = request.getParameter("studentname");
			String teacherid = request.getParameter("teacherid");
			System.out.println("ddd"+teacherid);
			String title1 = request.getParameter("title");
			String submit = request.getParameter("action");

			if(submit!=null&&submit.trim().equals("ac")){
			String t = request.getParameter("teacherid");
			String title = request.getParameter("title");
			String file =request.getParameter("file");
			String content =request.getParameter("content");
			String update =request.getParameter("update");
			homeWorkMamager h = new homeWorkMamager();

			h.setHtitle(title);
			h.setHcontent(content);
			h.setCfile(file);
			h.setCtime(update);
			h.setClassid(classid);
			h.setStudent(studentname1);
			System.out.println("))"+teacherid);
			h.setTeacherid(teacherid);
			if(h.upHomework()==1)
			{
			out.println("很牛逼啊！你的作业做完了啦！接下来可以痛痛快快的玩啦！");
			return;
			}

			}


			}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
