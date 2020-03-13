<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'SelectRepfs.jsp' starting page</title>
    
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
  
  <body>
 
   <c:choose>
      <c:when test="${empty list3}">
	 		<center><p>没有信息</p></center>
		 </c:when>
	 <c:otherwise>
	 <center>
	  <h2 align="center" >
  	<font color="black">查询维修信息！</font></h2><hr>

    <table  class="table table-striped table-hover" >
	  <tr>
	  	<th width="100">维修编号</th>
	    <th width="100">维修寝室</th>
		<th width="100">损坏时间</th>
	     <th width="100">联系方式</th>
	    <th width="100">维修物品</th>
	    <th width="100">回复信息</th>
	  </tr>
	  <c:forEach var="Repfs" items="${list3}">
	  <tr>
	    <td align="center" valign="center">${Repfs.repf_id}</td>
	    <td align="center" valign="center">${Repfs.repf_dorm}</td>
	    <td align="center" valign="center">${Repfs.repf_time}</td>
	    <td align="center" valign="center">${Repfs.repf_stuphone}</td> 
	    <td align="center" valign="center"><img src="${pageContext.request.contextPath}/${Repfs.repf_thing}" height="100" width="200"/></td>
	    <td align="center" valign="center">
	    <form action="RepfWorksOp" method="post">
	    <input type="text" name="repf_option" value="${Repfs.repf_option}">
	    <input type="hidden" name="repf_id" value='${Repfs.repf_id}'>   
	     <input class="btn btn-danger btn-sm" type="submit" value="接收" />
	     </form>
	   </td>
	    </tr>
	  </c:forEach>
	  </table>
	</center>
	</c:otherwise>
	</c:choose>
  </body>
</html>
