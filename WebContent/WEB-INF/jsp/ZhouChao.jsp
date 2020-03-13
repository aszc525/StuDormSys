<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'FiistIndex.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link href="public/bootstrap/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="css/index/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="css/index/animate.css" rel="stylesheet">
    <link href="css/index/style.css?v=4.1.0" rel="stylesheet">
    <link href="fonts/iconfont.css" rel="stylesheet">
    <script src="public/jquery/jquery-3.1.1.min.js?v=2.1.4"></script>
    <script src="public/bootstrap/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="js/index/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/index/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="js/index/plugins/layer/layer.min.js"></script>
  </head>
  
  <body>
<style>
    .fakeimg {
        height: 200px;
    }
  </style>
</head>
<body>
<div class="jumbotron text-center" style="margin-bottom:0";>

 <h1><strong>Student&nbsp;&nbsp;apartment&nbsp;&nbsp;management&nbsp;&nbsp;system made by Zhou</strong> </h1>
</div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" >Select user login</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="login">Admin</a></li>
        <li><a href="instructorlogin">Instructor</a></li>
        <li><a href="Student_Login">Student</a></li>
        <li><a href="Repairer_Login">Repairer</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container">
  <div class="row">
    <div class="col-sm-4" align="left">
      <h2>THE AUTHOR</h2>
      <h5>Personal introduction:</h5>
      <div class="fakeimg" align="center">
      <img src="images/master.jpg" class="img-circle " width="200" height="200">
      </div>
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;My name is Zhou Chao, 
        my hometown is Chenzhou, Hunan Province,
        I am a senior majoring in software engineering of Hunan University of information technology in June 2020.
        I have devoted my enthusiasm and effort to my major. During the period of school, 
        I have mastered the basic professional knowledge, cultivated the ability of logical thinking, 
        serious and careful learning attitude, and my ability to learn new things Through my own efforts, 
        I have obtained the certificate of computer C language level II, CET4, programmer, ncie software engineer, 
        and the academic performance is in the top 10% of the professional grade. This is my graduation design system, 
        which I will gradually improve, and I believe in myself!</p>
      <h3>Links</h3>
      <p>School departments</p>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="http://www.hniit.edu.cn">湖南信息学院官网</a></li>
        <li><a href="http://jwgl.hnisc.com:8810/">湖南信息学院网络教务处</a></li>
        <li><a href="http://dzb.hniit.edu.cn/">湖南信息学院党建网</a></li>
      </ul>
      <hr class="hidden-sm hidden-md hidden-lg">
    </div>
<div class="col-sm-8">
      <h2>SCHOOL NEWS</h2>
      <h5></h5>
<div class="jumbotron text-center" style="margin-bottom:20">
  <div id="myCarousel" class="carousel slide">
	<!-- 轮播（Carousel）指标 -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>   
	<!-- 轮播（Carousel）项目 -->
	<div class="carousel-inner"  >
		<div class="item active">
			<img src="images/1515.jpg" alt="First slide"  width="985" height="123">
			<div class="carousel-caption">致家长们的一封信</div>
		</div>
		<div class="item">
			<img src="images/1616.jpg" alt="Second slide"  width="985" height="123">
			<div class="carousel-caption">2020年开学典礼</div>
		</div>
		<div class="item">
			<img src="images/1717.jpg" alt="Third slide"  width="985" height="123">
			<div class="carousel-caption">2020年招生简章</div>
		</div>
	</div>
	<!-- 轮播（Carousel）导航 -->
	<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
	    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	    <span class="sr-only">Previous</span>
	</a>
	<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
	    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	    <span class="sr-only">Next</span>
	</a>
</div> 
</div>

<div class="jumbotron text-center">
      <h2>New notice</h2>
      <div class="panel panel-success">
	<div class="panel-heading">
		<h3 class="panel-title">sign</h3>
	</div>
	<div class="panel-body">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>
		<h3>2020.3.15,学校将开学，维修人员在3.10之前将所有的公寓物品故障修理完毕；
		请各位公寓管理员提前一天来学校，将公寓管理日常事务做好准备以迎接同学们的到来！</h3></b>
	</div>
</div>
</div>
    </div>
  </div>
</div>

<div class="navbar navbar-inverse" style="margin-bottom:0">
  <p><h3 align="center">ZhouChao:</h3><a href="https://github.com/aszc525"><h3 align="center">个人github主页</h3></a>
  </p>
</div>
  </body>
</html>
