<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'StudentSeletGrade.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
  .position1{
         position:relative;
         top:30px;
  }
  </style>
  <form action="StudentSelectGrades" method="post">
  <div align="left" class="position1" >
   寝室号<input type="text" name="grade_dorm" >
   打分时间<input type="text" name="grade_time"  placeholder="时间格式：年/月/日">
         <button type="submit" class="btn btn-info btn-sm" >
         <span class="glyphicon glyphicon-search">搜索
         </span>
   </div>
   </form>
  <div class="position1">
  <c:choose>
      <c:when test="${empty Deduction}">
	 		<p align="center">没有信息</p>
		 </c:when>
	 <c:otherwise>
	 <center>
	  <h2 align="center" >
    <table  class="table table-striped table-hover" >
	  <tr>
	  	<th width="100">打分编号</th>
	    <th width="100">打分的寝室</th>
		<th width="100">缺勤（是/否）</th>
	     <th width="100">违纪（有/无）</th>
	    <th width="100">卫生情况</th>
	    <th width="100">打分时间</th>
		<th width="100">打分分数</th>
	  </tr>
	  <c:forEach var="grade" items="${Deduction}">
	  <tr>
	    <td align="center" valign="center">${grade.grade_id}</td>
	    <td align="center" valign="center">${grade.grade_dorm}</td>
	    <td align="center" valign="center">${grade.grade_absent}</td>
	    <td align="center" valign="center">${grade.grade_weiji}</td> 
	    <td align="center" valign="center">${grade.grade_weisheng}</td>
	    <td align="center" valign="center">${grade.grade_time}</td>
	    <td align="center" valign="center">${grade.grade_grade1}</td>    
	    </tr>
	  </c:forEach>
	  </table>
	</center>
	</c:otherwise>
	</c:choose>
	</div>
	
  </body>
</html>
