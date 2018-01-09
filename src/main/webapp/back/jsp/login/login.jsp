<%--
参考：http://layuicms.gitee.io/page/login/login.html
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.black.blog.back.login.common.LoginConstants"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>black的博客系统</title>
<link rel="stylesheet" href="<c:url value="/thirdLib/layui/css/layui.css"/>">
<link rel="stylesheet" href="<c:url value="/thirdLib/layui/css/global.css"/>">
<link rel="stylesheet" href="<c:url value="/back/css/login/login.css"/>">
</head>
<body style="background-color: #F2F2F2;">
<div class="login">
	<h1>博客管理登录</h1>
	<form class="layui-form" lay-filter="form01">
		<div class="layui-form-item">
			<input class="layui-input" name="username" placeholder="用户名" lay-verify="required" type="text" autocomplete="off">
		</div>
		<div class="layui-form-item">
			<input class="layui-input" name="password" placeholder="密码" lay-verify="required" type="password" autocomplete="off">
		</div>
		<div class="layui-form-item form_code">
			<input class="layui-input" name="code" placeholder="验证码" lay-verify="required" type="text" autocomplete="off">
			<div class="code">
				<img src="<c:url value="/back/login/login/generateVerifyCode"/>" 
					width="<%= LoginConstants.VERIFY_CODE_WIDTH%>" 
					height="<%= LoginConstants.VERIFY_CODE_HEIGHT%>">
			</div>
		</div>
		<button class="layui-btn login_btn" lay-submit="" lay-filter="login">登录</button>
	</form>
</div>
<script src="<c:url value="/thirdLib/layui/layui.js"/>"></script>
<script>
layui.use(['form', 'layer'], function(){
	var $ = layui.$	//由于layer弹层依赖jQuery，所以可以直接得到
	, form = layui.form
	, layer = layui.layer;
	
	
});
</script>
</body>
</html>