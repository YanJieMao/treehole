<%@page import="com.treehole.vo.Article"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
  
	
	<meta charset="utf-8">
    <title> 情绪垃圾桶，存放你的小秘密</title>

    <!-- IOS -->
    <link rel="apple-touch-icon" href="favicon.ico">
    <meta name="HandheldFriendly" content="true">
    <meta name="apple-mobile-web-app-title" content="">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <link rel="stylesheet" href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/mdui/0.4.0/css/mdui.min.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/pace/1.0.2/themes/black/pace-theme-flash.min.css">
    <link rel="stylesheet" href="/treehole/static/css/main.css">
  </head>
  
  <body>
  
  <header>
        <span><i class="fa fa-send"></i></span>
    </header>
    <div class="menu">
        <a class="active" href="main.jsp ">首页</a>
        <a  href="ArticleRealNameServlet">实名</a>
        <a  href="ArticleAnonymousServlet">匿名</a>
        <a  href="send.jsp">发表</a>
    </div>
    <div class="content"></div>
    <div class="mdui-dialog">
        <div class="mdui-dialog-content">
            <span class="span"></span>
            <div class="dialog-footer"></div>
        </div>
    </div>
  
  
    
    	
    	<div class="fadeInDown animated mdui-container">
    	
       <%
    		List<Article> list=(ArrayList<Article>)request.getAttribute("articleAll");
    
    	%>
    	
    	<%for(Article a:list){ %>
    	
    	 <div class="mdui-col-md-3 mdui-col-sm-4">
            <div data-id="<%=a.getId() %>" class="article lk-hover">
                
               <div class= "lk-panel-body <%=a.getSex() %>">
                    <span class="span">
                    <%=a.getContent() %>,
                    </span>
               </div> 
                    
       
                
                <div class="lk-panel-foot">
                    <img class="author-img mdui-img-circle" src="/treehole/static/images/wms.jpg ">
                   <p
                    <%
		            int num =a.getIs_anonymous();
                    boolean na;
                    if (num == 0)
        		      na = false;
                   else
        	          na = true;
        
	                  %>
                   >
                    <%=na ? "匿名" : a.getName()%></p>
                    <cite mdui-tooltip="{'content':<%=a.getSend_time() %>'position': 'right'}"><%=a.getSend_time() %></cite>
                </div>
            </div>
        </div>
    	
    	<%} %>
    	
        <div class="page">
            
        </div>
        
    
       </div>
    	
    	
    <footer>
        <p>&copy; 2019 Copyright <a href="http://www.haojiayi.top" target="_blank"> 眼睫毛能扫地</a> </p>
    </footer>
    <!-- Loading -->
    <div class="loading-shade">
        <span></span>
    </div>
    <!-- Back to the top -->
    <button id="top" class="mdui-fab mdui-fab-hide mdui-color-blue mdui-fab-fixed mdui-ripple">
        <i class="mdui-icon material-icons">&#xe5d8;</i>
    </button>
    
    
    <script src="https://cdn.bootcss.com/mdui/0.3.0/js/mdui.min.js"></script>
    <script src="https://cdn.bootcss.com/pace/1.0.2/pace.min.js"></script>
    <script src="/treehole/static/js/common.js"></script>
    <script src="/treehole/static/js/main.js"></script>
    
    	
    	
  </body>
</html>
