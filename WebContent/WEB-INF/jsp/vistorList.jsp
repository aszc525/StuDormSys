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
      <c:when test="${empty list3}">
	 		<center><p>没有信息</p></center>
		 </c:when>
	 <c:otherwise>
	 <center>
	  <h2 align="center" >
  	<font color="black">查询来访信息！</font></h2><hr>
    <table  class="table table-striped table-hover" >
	  <tr>
	  	<th width="100">访问人身份证</th>
	    <th width="100">访问人姓名</th>
		<th width="100">来的时间</th>
	     <th width="100">离去时间</th>
	    <th width="100">访问学生名字</th>
	    <th width="100">访问学生学号</th>
		<th width="100">学生居住寝室</th>
	  </tr>
	  <c:forEach var="vistor" items="${list3}">
	  <tr>
	    <td align="center" valign="center">${vistor.vistor_id}</td>
	    <td align="center" valign="center">${vistor.vistor_name}</td>
	    <td align="center" valign="center">${vistor.vistor_time1}</td>
	    <td align="center" valign="center">${vistor.vistor_time2}</td> 
	    <td align="center" valign="center">${vistor.vistor_stuName}</td>
	    <td align="center" valign="center">${vistor.vistor_stuId}</td>
	    <td align="center" valign="center">${vistor.vistor_studorm}</td>     
	    </tr>
	  </c:forEach>
	  </table>
	</center>
	</c:otherwise>
	</c:choose>
  <body>

</html>