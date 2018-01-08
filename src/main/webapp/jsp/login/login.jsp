<%--
参考：http://layuicms.gitee.io/page/login/login.html
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>black的博客系统</title>
<link rel="stylesheet" href="<c:url value="/thirdLib/layui/css/layui.css"/>">
<link rel="stylesheet" href="<c:url value="/thirdLib/layui/css/global.css"/>">
<link rel="stylesheet" href="<c:url value="/css/login/login.css"/>">
<style type="text/css">
<%--
.login {
	position  : absolute;
	left      : 50%;
	top       : 50%;
	transform : translate(-50%,-55%);
}
--%>
</style>
</head>
<body style="background-color: #F2F2F2;">
<div class="login">
	<h1>博客管理登录</h1>
	<form class="layui-form">
		<div class="layui-form-item">
			<input class="layui-input" name="username" placeholder="用户名" lay-verify="required" type="text" autocomplete="off">
		</div>
		<div class="layui-form-item">
			<input class="layui-input" name="password" placeholder="密码" lay-verify="required" type="password" autocomplete="off">
		</div>
		<div class="layui-form-item form_code">
			<input class="layui-input" name="code" placeholder="验证码" lay-verify="required" type="text" autocomplete="off">
			<div class="code">
				<img src="<c:url value="/images/login/code.jpg"/>" width="116" height="36">
			</div>
		</div>
		<button class="layui-btn login_btn" lay-submit="" lay-filter="login">登录</button>
	</form>
</div>
<script src="<c:url value="/thirdLib/layui/layui.js"/>"></script>
<script>

</script>
</body>
</html>