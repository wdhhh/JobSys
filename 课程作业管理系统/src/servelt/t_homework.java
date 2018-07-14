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

public class t_homework extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("GB2312");
		PrintWriter out=response.getWriter();
		 HttpSession session=request.getSession();
		 
		String classid = (String)session.getAttribute("classid");///////////////////////

		String submit = request.getParameter("action");
		if(submit!=null&&submit.trim().equals("ac")){
		int tid =Integer.parseInt(request.getParameter("id"));


		String title = request.getParameter("title");
		System.out.print(title);
		String file =request.getParameter("file");
		String content =request.getParameter("content");
		String bdate =request.getParameter("bdate");
		String update =request.getParameter("update");
		System.out.println(title);

		homeWorkMamager h = new homeWorkMamager();
		h.setHtitle(title);
		h.setHcontent(content);
		h.setBtime(bdate);
		h.setCfile(file);
		h.setCtime(update);
		h.setTid(tid);
		h.setClassid(classid);
		if(h.dcHomework()==1)
		{
		out.println("很牛逼啊！你的作业发布即将生效！");
		return;
		}else
		{
		out.println("失败！");
		}

		}
			
			}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
