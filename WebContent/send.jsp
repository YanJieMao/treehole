<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" import="javax.servlet.http.HttpServletRequest" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
 
   <%
		Date d = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String now = df.format(d);
	%>
  

   <header>
        <span><i class="fa fa-send"></i></span>
    </header>
    <div class="menu">
        <a  color=“#040404” href="main.jsp" >首页</a>
        <a  class=“other” href="ArticleRealNameServlet">实名</a>
        <a  class=“other” href="ArticleAnonymousServlet">匿名</a>
        <a  class="active"  href="send.jsp">发表</a>
       
    </div>
     
    <div class="content"></div>
    <div class="mdui-dialog">
        <div class="mdui-dialog-content">
            <span class="span"></span>
            <div class="dialog-footer"></div>
        </div>
    </div>



<div class="fadeInDown animated mdui-container panel send">
    <form action="ArticleAddServlet" method="get">
        <div class="mdui-col-md-8 mdui-col-sm-8">
            
            <input type="text" name="id" value="1" style="display:none"/>
            <div class="textfield">
                <h2>你想说的话</h2>
                <textarea rows="5" id="content" name="content" placeholder="你想说的话(限制1000个字符)" maxlength="1000" required></textarea>
                <div class="kind">
                    <div class="face">
                        <a class="mdui-typo-caption-opacity mdui-ripple" href="javascript:void(0)">
                            <i class="mdui-icon material-icons">&#xe24e;</i>
                        </a>
                        <div class="face-fixed face-fade none">
                           
                        </div>
                    </div>
                </div>
            </div>
            <div class="textfield">
                <h2>名称</h2>
                <input type="text" name="name" placeholder="你的名字(20个字符)" autocomplete="off" required maxlength="20">
            </div>
            <div class="textfield">
                <h2>QQ</h2>
                <input type="text" name="qq" placeholder="你可以填真实的也可以填个假的" autocomplete="off" required maxlength="10">
            </div>
        </div>
        <div class="mdui-col-md-4 mdui-col-sm-4">
            <div class="textfield">
                <h2>你的性别</h2>
                <label class="mdui-radio">
                    <input type="radio" value="boy" name="sex" checked/>
                    <i class="mdui-radio-icon"></i>
                    男
                </label>
                <label class="mdui-radio">
                    <input type="radio" value="girl" name="sex"/>
                    <i class="mdui-radio-icon"></i>
                    女
                </label>
                <label class="mdui-radio">
                    <input type="radio" value="unknown" name="sex"/>
                    <i class="mdui-radio-icon"></i>
                    ￥%@#￥%
                </label>
            </div>
            <div class="textfield">
                <h2>是否匿名</h2>
                <label class="mdui-radio">
                    <input type="radio" value="1" name="is_anonymous" checked/>
                    <i class="mdui-radio-icon"></i>
                    是
                </label>
                <label class="mdui-radio">
                    <input type="radio" value="0" name="is_anonymous" checked/>
                    <i class="mdui-radio-icon"></i>
                    否
                </label>
                <tr>
    			
    				<th><input type="text" name="send_time" value="<%=now %>" style="display:none"/></th>
    			</tr>
    			
    
    	
    		 <input type="text" name="ip" value="<%=request.getRemoteAddr()%>"style="display:none" />
    		
                
            </div>
            <p>请勿发布违反中国大陆法律的言论，违者后果自负。</p>
            <button type="submit" id="send" class="mdui-btn mdui-btn-raised mdui-ripple mdui-btn-block">悄悄地发布</button>
           
            
        </div>
    </form>
     
     
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
   
   <script type="text/javascript" src="https://robot.ownthink.com/bot/js/robot.js?appid=xiaosi"></script>
    

</body>
</html>