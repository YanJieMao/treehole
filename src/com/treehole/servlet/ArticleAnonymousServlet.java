package com.treehole.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.treehole.dao.ArticleDao;
import com.treehole.daoImpl.ArticleDaoImpl;
import com.treehole.vo.Article;

public class ArticleAnonymousServlet extends HttpServlet{
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//防止中文乱码
		request.setCharacterEncoding("UTF-8");
		
		ArticleDao ad=new ArticleDaoImpl();
		
		ArrayList<Article> list=ad.selectByIs_anonymous();
		
		
		
		if(list!=null){
			request.setAttribute("articleAnonymous", list);
			//转发
			request.getRequestDispatcher("anonymous.jsp").forward(request, response);
		}else{
			//重定向
			response.sendRedirect("anonymous.jsp");
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}



}
