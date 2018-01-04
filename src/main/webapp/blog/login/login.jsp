<%--
参考：http://blog.csdn.net/beauxie/article/details/54313274
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>pgBlogSys</title>
<link rel="stylesheet" href="<c:url value="/thirdLib/layui/css/layui.css"/>">
<link rel="stylesheet" href="<c:url value="/thirdLib/layui/css/global.css"/>">
<style type="text/css">
.login {
	position  : absolute;
	left      : 50%;
	top       : 50%;
	transform : translate(-50%,-55%);
}
</style>
</head>
<body>
<div class="login">
	<form class="layui-form layui-form-pane" method="get" action="">
		<div class="layui-form-item">
			<h3></h3>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">账号：</label>

			<div class="layui-input-inline">
				<input type="text" name="account" class="layui-input"
					lay-verify="account" placeholder="账号" autocomplete="on"
					maxlength="20" />
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">密码：</label>

			<div class="layui-input-inline">
				<input type="password" name="password" class="layui-input"
					lay-verify="password" placeholder="密码" maxlength="20" />
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">验证码：</label>

			<div class="layui-input-inline">
				<input type="number" name="code" class="layui-input"
					lay-verify="code" placeholder="验证码" maxlength="4" /><img
					src="img/v.png" onclick="getImage()" title="单击刷新验证码"
					id="img_rand_code" alt="">
			</div>
		</div>
		<div class="layui-form-item">
			<button type="reset" class="layui-btn layui-btn-danger btn-reset">重置</button>
			<button type="button" class="layui-btn btn-submit" lay-submit=""
				lay-filter="sub">立即登录</button>
		</div>
	</form>
</div>
<script src="<c:url value="/thirdLib/layui/layui.js"/>"></script>
<script>

</script>
</body>
</html>