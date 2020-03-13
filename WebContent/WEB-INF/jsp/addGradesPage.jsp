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
  	<font color="black">记录缺勤卫生违纪情况！</font></h2><hr>
  <body>
   <div align="center">
   
   <form action="addGrades" method="post">
   <table class="table table-striped table-bordered table-hover " >
   <tr>
      <td>打分编号</td>
      <td><input type="text" name="grade_id"></td>
  </tr>
    <tr>
      <td>打分的寝室&nbsp;&nbsp;&nbsp;&nbsp;</td>
      <td><input type="text" name="grade_dorm"></td>
   </tr>
   <tr>
      <td>缺勤（是/否）</td>
      <td><input type="text" name="grade_absent"></td>
  </tr>
   <tr>
      <td>违纪（有/无）</td>
      <td><input type="text" name="grade_weiji"></td>
  </tr>
     <tr>
      <td>卫生情况</td>
      <td><input type="text" name="grade_weisheng"></td>
  </tr>
     <tr>
      <td>打分时间</td>
      <td><input type="text" name="grade_time"></td>
  </tr>
     <tr>
      <td>打分分数</td>
      <td><input type="text" name="grade_grade1"></td>
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