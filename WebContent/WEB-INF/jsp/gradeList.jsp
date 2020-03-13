<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UserSelectEquipment.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link rel="stylesheet" href="public/bootstrap/css/bootstrap.min.css">
  </head>
  <c:choose>
      <c:when test="${empty list4}">
	 		<center><p>没有信息</p></center>
		 </c:when>
	 <c:otherwise>
	 <center>
	  <h2 align="center" >
  	<font color="black">查询打分信息！</font></h2><hr>
    <table  class="table table-striped table-hover" >
	  <tr>
	  	<th width="100">打分编号</th>
	    <th width="100">打分的寝室</th>
		<th width="100">缺勤（是/否）</th>
	     <th width="100">违纪（有/无）</th>
	    <th width="100">卫生情况</th>
	    <th width="100">打分时间</th>
		<th width="100">打分分数</th>
		<th width="100">操作</th>
	  </tr>
	  <c:forEach var="grade" items="${list4}">
	  <tr>
	    <td align="center" valign="center">${grade.grade_id}</td>
	    <td align="center" valign="center">${grade.grade_dorm}</td>
	    <td align="center" valign="center">${grade.grade_absent}</td>
	    <td align="center" valign="center">${grade.grade_weiji}</td> 
	    <td align="center" valign="center">${grade.grade_weisheng}</td>
	    <td align="center" valign="center">${grade.grade_time}</td>
	    <td align="center" valign="center">${grade.grade_grade1}</td>
	     <td align="center" valign="center">
	    	<form action="adminDeleteGrades" method="post">
	    	<input type="hidden" name="grade_id" value='${grade.grade_id}'>
	    	<input class="btn btn-danger btn-sm" type="submit" value='删除'>
	    	</form>
		 	 </td>     
	    </tr>
	  </c:forEach>
	  </table>
	</center>
	</c:otherwise>
	</c:choose>
  <body>

</html>