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
      <c:when test="${empty list2}">
	 		<center><p>没有信息</p></center>
		 </c:when>
	 <c:otherwise>
	 <center>
	  <h2 align="center" >
  	<font color="black">查询学生信息！</font></h2><hr>
    <table  class="table table-striped table-hover" >
	  <tr>
	  	<th width="100">学生学号</th>
	    <th width="100">学生密码</th>
		<th width="100">学生姓名</th>
	     <th width="100">学生性别</th>
	    <th width="100">学生班级</th>
	    <th width="100">公寓楼栋</th>
		<th width="100">居住寝室</th>
	     <th width="100">联系方式</th>
	   
	  </tr>
	  <c:forEach var="student" items="${list2}">
	  <tr>
	    <td align="center" valign="center">${student.stu_id}</td>
	    <td align="center" valign="center">${student.stu_password}</td>
	    <td align="center" valign="center">${student.stu_name}</td>
	    <td align="center" valign="center">${student.stu_sex}</td> 
	    <td align="center" valign="center">${student.stu_class}</td>
	    <td align="center" valign="center">${student.stu_building}</td>
	    <td align="center" valign="center">${student.stu_dorm}</td>
	    <td align="center" valign="center">${student.stu_phone}</td>      
	    </tr>
	  </c:forEach>
	  </table>
	</center>
	</c:otherwise>
	</c:choose>
  <body>

</html>