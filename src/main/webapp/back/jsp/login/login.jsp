<%--
参考：http://layuicms.gitee.io/page/login/login.html
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.black.blog.back.login.common.LoginConstants"%>
<%@ include file="/jsp/common/common.jsp" %>
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
	<form class="layui-form" action="<c:url value="/back/index/index"/>" method="post">
		<div class="layui-form-item">
			<input class="layui-input" name="userName" placeholder="用户名" lay-verify="required" type="text" autocomplete="off">
		</div>
		<div class="layui-form-item">
			<input class="layui-input" name="password" placeholder="密码" lay-verify="required" type="password" autocomplete="off">
		</div>
		<div class="layui-form-item form_code">
			<input class="layui-input" name="verifyCode" placeholder="验证码" lay-verify="required" type="text" autocomplete="off">
			<div class="code">
				<img id="img_verifyCode" width="<%= LoginConstants.VERIFY_CODE_WIDTH%>" height="<%= LoginConstants.VERIFY_CODE_HEIGHT%>">
			</div>
		</div>
		<button class="layui-btn login_btn" lay-submit="" lay-filter="login">登录</button>
	</form>
</div>
<%@ include file="/jsp/common/script.jsp" %>
<script>
layui.use(['form', 'layer', 'common'], function(){
	var $ = layui.$
	, form = layui.form
	, layer = layui.layer
	, common = layui.common;
	
	form.on("submit(login)", function(data) {
		var doForward = false;
		var url = BASE_PATH + "/back/login/login/doLogin";
		$.ajax({
			global:false, cache: false, async:false, type:'POST', dataType:"json", url:url, data: data.field,
			success : function (response) {
				var failMsg = response[FAIL_MSG_KEY];
				if (failMsg) {
					layer.msg(failMsg);
					return false;
				}
				doForward = true;
			},
			error : function (XMLHttpRequest, textStatus, errorThrown) {
				common.consoleError(errorThrown, url);
			}
		});
		return doForward;
	});
	
	var $imgVerifyCode = $("#img_verifyCode");
	$imgVerifyCode.on("click", function(event){
		$(event.target).attr("src", BASE_PATH + "/back/login/login/generateVerifyCode?date = " + new Date() + Math.floor(Math.random()*24));
	});
	$imgVerifyCode.click();
});
</script>
</body>
</html>