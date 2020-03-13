<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>     
    <title>学生公寓管理系统</title>   	
  </head>
   <link rel="stylesheet" href="public/bootstrap/css/bootstrap.min.css">
  <body>
  <h2 align="center" >
  	<font color="black">个人信息！</font></h2><hr>
  <c:choose>
  	<c:when test="${empty list1}">
	 		<center><p>没有信息</p></center>
		 </c:when>
  	<c:otherwise>
  	<form action="modifyAdminPassword" method="post">
    <table class="table table-striped table-bordered table-hover ">
    <c:forEach var="admin" items="${list1}">
    	<tr>
    		<td>宿舍管理员ID:</td>
    		<td><input type="text" name="admin_id" value='${admin.admin_id}'readonly></td>
    	</tr>
    	<tr>
    		<td>密码:</td>
    		<td><input type="text"  name="admin_password" value='${admin.admin_password}'>
    		 </td>
    	</tr>
    	<tr>
    		<td>姓名:</td>
    		<td>${admin.admin_name}</td>
    	</tr>
    	<tr>
    		<td>联系方式:</td>
    		<td>${admin.admin_phone}</td>
    	</tr>
    	
    		<td align="center" colspan="2">
    		<input class="btn btn-danger btn-sm" type="submit" value='修改密码'>
    		<input class="btn btn-info btn-sm" type="reset" value='重置修改'>
    		</td>
    		  	</form>
    </c:forEach>
    </table>
    </c:otherwise>
    </c:choose>
  </body>
</html>
