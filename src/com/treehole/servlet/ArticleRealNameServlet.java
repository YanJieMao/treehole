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

public class ArticleRealNameServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//防止中文乱码
		request.setCharacterEncoding("UTF-8");
		
		ArticleDao ad=new ArticleDaoImpl();
		
		ArrayList<Article> list=ad.selectByRealName();
		
		
		
		if(list!=null){
			request.setAttribute("articleRealName", list);
			//转发
			request.getRequestDispatcher("realname.jsp").forward(request, response);
		}else{
			//重定向
			response.sendRedirect("realname.jsp");
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}



}
