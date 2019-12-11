<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我来陪你聊天</title>
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
        <a href="main.jsp ">首页</a>
        <a  href="ArticleRealNameServlet">实名</a>
        <a  href="ArticleAnonymousServlet">匿名</a>
        <a  href="send.jsp">发表</a>
        <a calss="active" href="robot.jsp">陪你聊天</a>
        
    </div>
    
    <script type="text/javascript" src="https://robot.ownthink.com/bot/js/robot.js?appid=xiaosi"></script>
    
 
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