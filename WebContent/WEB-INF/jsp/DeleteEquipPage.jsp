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
  </head>
  
  <body>
    <% 
        request.setCharacterEncoding("utf-8");

        String userID=request.getParameter("equipmentId");
	    %>
     <c:choose>
      <c:when test="${empty list}">
	 		<center><p>没有信息</p></center>
		 </c:when>
	 <c:otherwise>
	 	 <center>
	  <h2 align="center" >
  	<font color="black">删除器材信息！</font></h2><hr>
  	
    <table border="2" >
  <tr>
	    <th width="100">体育器材编号</th>
	    <th width="100">体育器材名称</th>
		<th width="100">购买时间</th>
	    <th width="100">库存数量</th>
	  </tr>
	  <c:forEach var="equipment" items="${list}">
	  <tr>
	    <td align="center" valign="center">${equipment.equip_id}</td>
	    <td align="center" valign="center">${equipment.equip_name}</td>
	    <td align="center" valign="center">${equipment.equip_buydate}</td>
	    <td align="center" valign="center">${equipment.equip_geshu}</td>  
	    <td>
	    	<form action="deleteEquip" method="post">
	    	<input type="hidden" name="equip_id" value='${equipment.equip_id}'>
                 <input type ='submit'  value='删除' >
                
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
