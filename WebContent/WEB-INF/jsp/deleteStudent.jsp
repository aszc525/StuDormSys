<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
        <link rel="stylesheet" href="public/bootstrap/css/bootstrap.min.css">
  </head>
  
  <body>
    <% 
        request.setCharacterEncoding("utf-8");

        String userID=request.getParameter("userID");
	    %>
     <c:choose>
      <c:when test="${empty list}">
	 		<center><p>没有信息</p></center>
		 </c:when>
	 <c:otherwise>
	 	 <center>
	  <h2 align="center" >
  	<font color="black">删除用户！</font></h2><hr>
  	<div >
    <table width="600" class="table table-striped table-bordered table-hover ">
	  <tr >
		<th>学生学号</th>
	    <th>姓名</th>
	    <th>所属班级</th>
	    <th >联系方式</th>
	    <th >操作</th>
	  </tr>
	 <c:forEach var="info" items="${list}">
	  <tr>
	    <td>${info.student_id}</td>
	    <td>${info.student_name}</td>
		<td>${info.student_class}</td>
	    <td>${info.student_contact_way}</td>    
	    <td>
	    	
	    	<form action="deleteStudent" method="post">
	    	<input type="hidden" name="student_id" value='${info.student_id}'>
	    	<input class="btn btn-danger btn-sm" type="submit" value='删除'>
	    	</form>
   
                
		 	</a> 
		 	 </td>   
	    </tr>
	  </c:forEach>
	  </table>
	  </div>
	</center>
	</c:otherwise>
	</c:choose>
  </body>
</html>
