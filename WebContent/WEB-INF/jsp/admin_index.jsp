<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">

    <title>高校学生公寓管理系统</title>

    <meta name="keywords" content="">
    <meta name="description" content="">

    <!--link rel="shortcut icon" href="favicon.ico"--> 
    <link href="public/bootstrap/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="css/index/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="css/index/animate.css" rel="stylesheet">
    <link href="css/index/style.css?v=4.1.0" rel="stylesheet">
    <link href="fonts/iconfont.css" rel="stylesheet">
</head>

<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
    
    <div id ="header" style="padding-left:30px;height:75px;width:auto;background-color:#2f4050">
        <p style="padding-top:15px;font-size:25px;color:white;font-family:'黑体'">高校学生公寓管理系统</p>
        <p style="padding-top:5px;font-size:18px;color:white;font-family:'黑体';margin-top:-20px">Zhou Chao Management System</p>  
    </div>
     <!--主体-->
    
    <div id="wrapper">
        <!--div class="dashbard-1" id="title">
    		<img src="img/title.png">
    	</div-->
        <!--左侧导航开始-->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="nav-close"><i class="fa fa-times-circle"></i></div>
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">   
                    <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                        <span class="ng-scope">&nbsp;</span>
                    </li>
                    <li>

                    <li>
                        <a href="#"><i class="iconfont icon-xueshengguanli"></i> <span class="nav-label">用户信息管理</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a class="J_menuItem" href="queryadminSelf">查询个人信息</a></li>
                            <li><a class="J_menuItem" href="queryStudentAll">查询学生信息</a></li>
                </ul>
                    </li>
                    <li>
                        <a href="#"><i class="iconfont icon-tiyu1"></i> <span class="nav-label">打分信息管理</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a class="J_menuItem" href="adminSeletGrade">缺勤违纪打分信息</a></li>
                            <li><a class="J_menuItem" href="addGradesPage">添加违纪信息</a></li>
                        </ul>
                    </li>
               
                    <li>
                        <a href="#"><i class="iconfont icon-guihuandingdan"></i> <span class="nav-label">来访登记管理</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a class="J_menuItem" href="addVistorsPage">来访信息记录</a></li>
                            <li><a class="J_menuItem" href="adminSeletVistor">查询来访信息</a></li>
                        </ul>
                    </li>
                
                    <li>
                        <a href="#"><i class="iconfont icon-tuichu4"></i> <span class="nav-label">退出系统</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a  href="login">退出系统</a></li>
                       </ul>
                    </li>
                 
                </ul>
            </div>
        </nav>
        <!--左侧导航结束-->
        <!--右侧部分开始-->
        <div id="page-wrapper" class="gray-bg dashbard-1">
            <div class="row J_mainContent" id="content-main" align="center">
                <iframe id="J_iframe" src="Daily_items.jsp" width="100%" height="100%" frameborder="0" data-id=" seamless"></iframe>
            </div>
        </div>
        <!--右侧部分结束-->
    	<!--内容
    	<div1 id="content">
    		
    	</div1>-->
    </div>

    <!-- 全局js -->
    <script src="public/jquery/jquery-3.1.1.min.js?v=2.1.4"></script>
    <script src="public/bootstrap/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="js/index/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/index/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="js/index/plugins/layer/layer.min.js"></script>

    <!-- 自定义js -->
    <script src="js/index/hAdmin.js?v=4.1.0"></script>
    <script type="text/javascript" src="js/index/index.js"></script>
</body>

</html>
