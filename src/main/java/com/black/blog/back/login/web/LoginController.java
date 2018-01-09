package com.black.blog.back.login.web;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.black.blog.back.login.common.LoginConstants;
import com.black.blog.back.login.common.LoginJspConstants;
import com.black.blog.common.VerifyCodeUtils;
import com.jfinal.core.Controller;
import com.jfinal.log.Log4jLog;

public class LoginController extends Controller {
	
	private static final Log4jLog log = Log4jLog.getLog(LoginController.class);
	
	/**
	 * 访问登录页
	 */
	public void index() {
		render(LoginJspConstants.LOGIN);
	}
	
	/**
	 * 生成验证码
	 */
	public void generateVerifyCode() {
		HttpServletResponse response = this.getResponse();
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		response.setContentType("image/jpeg");

		String verifyCode = VerifyCodeUtils.generateVerifyCode(4); // 生成 4 位随机字串
		HttpSession session = this.getRequest().getSession(true); // 存入会话session
		session.setAttribute(LoginConstants.VERIFY_CODE_KEY, verifyCode.toLowerCase());
		int w = LoginConstants.VERIFY_CODE_WIDTH, h = LoginConstants.VERIFY_CODE_HEIGHT; // 生成图片
		try {
			VerifyCodeUtils.outputImage(w, h, response.getOutputStream(), verifyCode);
		} catch (IOException e) { // 生成验证码失败
			log.error(null, e);
		}
		renderNull(); // 不渲染，即不向客户端返回数据
	}
}
