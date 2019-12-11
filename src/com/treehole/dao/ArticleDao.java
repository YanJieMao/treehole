package com.treehole.dao;

import java.util.ArrayList;


import com.treehole.vo.Article;

public  interface ArticleDao {
	
	
	//全查询
		public ArrayList<Article> selectAll();
		
   //增加
		public boolean add(Article a);
		
		
  //匿名
        public ArrayList<Article> selectByIs_anonymous();
        
   //实名   
        public ArrayList<Article> selectByRealName();
	
	

}
