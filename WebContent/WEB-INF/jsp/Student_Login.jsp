<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<!DOCTYPE html> 
<html lang="en"> 
  <script type="text/javascript">

</script>  
<head> 
    <meta charset="utf-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <title>登陆界面</title>
    <link href="css/base.css" rel="stylesheet">
    <link href="css/login/login.css" rel="stylesheet">
    <link href="fonts/iconfont.css" rel="stylesheet">
<style type="text/css">
.submit{display:inline-block;
       text-decoration:none;
       height:48px;
       line-height:48px;
       text-align:center;
       color:#fff;
       font-size:16px;
       width:300px;
       font-weight:bold;
       margin-left:34px;
       background-color:#f45438;
       margin-right:9px}
</style>
</head> 
<body>
	<div class="login-hd">
		<div class="left-bg"></div>
		<div class="right-bg"></div>
		<div class="hd-inner">
			<span class="logo"></span>
			<span class="split"></span>
			<span class="sys-name">高校学生公寓管理系统</span>
		</div>
	</div>
	<div class="login-bd">
		<div class="bd-inner">
			<div class="inner-wrap">
				<div class="lg-zone">
					<div class="lg-box">
						<div class="lg-label"><h4>用户登录</h4></div>
						<div class="alert alert-error">
			              <i class="iconfont icon-iconset0399"></i>
			              <span>请登录系统！</span>
			            </div>
						<form action="StudentLogin" method="post">
							<div class="lg-username input-item clearfix">
								<i class="iconfont icon-yonghu"></i>
								<input  type="text" id="stu_id" name="stu_id" placeholder="账号"/>
							</div>
							<div class="lg-password input-item clearfix">
								<i class="iconfont icon-mima"></i>
								<input type="password" id="stu_password" name="stu_password" placeholder="密码"/>
							</div>	  
							 <div>
						  &nbsp;  &nbsp;  &nbsp;  &nbsp;<input type="radio" id="admin"  name="check" value="admin" checked="checked">宿管员&nbsp;  &nbsp;
						  <input type="radio" id="student" name="check" value="student">学生
						    <input type="radio" id="instructor" name="check" value="instructor">辅导员
						      <input type="radio" id="repairer" name="check" value="repairer">维修员</div>
							<div class="tips clearfix">
								<label><input type="checkbox" checked="checked">记住用户名</label>
							</div>
							<div class="enter">
								<input class="submit"  type="submit" value="登陆" />
							</div>
						</form>
					</div>
				</div>
				<div class="lg-poster"></div>
			</div>
		</div>
	</div>
<div class="login-ft">
		<div class="ft-inner">
			<div class="about-us">
				<a href="javascript:;">关于我们</a>
				<a href="javascript:;">法律声明</a>
				<a href="javascript:;">服务条款</a>
				<a href="javascript:;">联系方式</a>
			</div>
			<div class="address">地址：湖南信息学院&nbsp;邮编：4310202&nbsp;&nbsp;周超</div>
			<div class="other-info">建议使用谷歌、火狐浏览器&nbsp;E-mail：1769424679@qq.com</div>
		</div>
	</div>
</body> 
</html>