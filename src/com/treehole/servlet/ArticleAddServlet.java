package com.treehole.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.treehole.dao.ArticleDao;
import com.treehole.daoImpl.ArticleDaoImpl;
import com.treehole.vo.Article;

public class ArticleAddServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("id"));
		
		String name=request.getParameter("name");
		//name=new String(name.getBytes("ISO-8859-1"),"UTF-8");   防止中文乱码
		
		String sex=request.getParameter("sex");
		
		String content=request.getParameter("content");
		int is_anonymous=Integer.parseInt(request.getParameter("is_anonymous"));
		
		String send_time=request.getParameter("send_time");
		
		String ip=request.getParameter("ip");
		
		String qq=request.getParameter("qq");
		Article a=new Article(id,name, sex, content,is_anonymous, send_time, ip, qq);
		
		ArticleDao ad=new ArticleDaoImpl();
		 boolean flag=ad.add(a);
		 
		 if(flag){
			 response.sendRedirect("ArticleServlet");
		 }else{
			 response.sendRedirect("ArticleServlet");
		 }
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

	

}
