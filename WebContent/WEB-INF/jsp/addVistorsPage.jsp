<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UserRegisterPage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
 <link rel="stylesheet" href="public/bootstrap/css/bootstrap.min.css">
  </head>
 <h2 align="center" >
  	<font color="black">记录来访信息！</font></h2><hr>
  <body>
   <div align="center">
   
   <form action="addVistors" method="post">
   <table class="table table-striped table-bordered table-hover " >
   <tr>
      <td>访问人身份证</td>
      <td><input type="text" name="vistor_id"></td>
  </tr>
    <tr>
      <td>访问人姓名&nbsp;&nbsp;&nbsp;&nbsp;</td>
      <td><input type="text" name="vistor_name"></td>
   </tr>
   <tr>
      <td>来的时间</td>
      <td><input type="text" name="vistor_time1"></td>
  </tr>
   <tr>
      <td>离去时间</td>
      <td><input type="text" name="vistor_time2"></td>
  </tr>
     <tr>
      <td>访问学生名字</td>
      <td><input type="text" name="vistor_stuName"></td>
  </tr>
     <tr>
      <td>访问学生学</td>
      <td><input type="text" name="vistor_stuId"></td>
  </tr>
     <tr>
      <td>学生居住寝室</td>
      <td><input type="text" name="vistor_studorm"></td>
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