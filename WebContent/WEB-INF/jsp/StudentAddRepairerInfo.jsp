<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'StudentAddRepairerInfo.jsp' starting page</title>
    
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
   <h2 align="center" >
  	<font color="black">维修信息申报！</font></h2><hr>
  <body>
   <div align="center">
   
   <form action="AddRepairers" method="post" enctype="multipart/form-data">
   <table class="table table-striped table-bordered table-hover " >
   <tr>
      <td>维修编号</td>
      <td><input type="text" name="repf_id"></td>
  </tr>
    <tr>
      <td>维修寝室&nbsp;&nbsp;&nbsp;&nbsp;</td>
      <td><input type="text" name="repf_dorm"></td>
   </tr>
   <tr>
      <td>损坏时间</td>
      <td><input type="text" name="repf_time"></td>
  </tr>
   <tr>
      <td>联系方式</td>
      <td><input type="text" name="repf_stuphone"></td>
  </tr>
     <tr>
      <td>维修物品</td>
      <td><input type="file" name="thing" >物品图片</td>
  </tr>
     <tr>
      <td>维修次数</td>
      <td><input type="text" name="repf_option"></td>
  </tr>
      <td align="center" colspan="2">
       <input  class="btn btn-success btn-sm" type="submit" value="提交" />
       <input class="btn btn-danger btn-sm" type="submit" value='重置'>
      </td>
  </tr>
   </table>
   </form>
   </div>
  </body>
</html>
