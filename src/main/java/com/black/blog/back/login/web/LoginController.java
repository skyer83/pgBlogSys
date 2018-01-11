package com.black.blog.back.login.web;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.util.WebUtils;

import com.black.blog.back.common.BackController;
import com.black.blog.back.login.common.LoginConstants;
import com.black.blog.back.login.common.LoginJspConstants;
import com.black.blog.back.login.msg.LoginMsg;
import com.black.blog.common.BlackConstants;
import com.black.blog.common.VerifyCodeUtils;
import com.black.blog.util.StringUtil;
import com.jfinal.log.Log4jLog;

/**
 * @author jhshen
 *
 */
public class LoginController extends BackController {
	
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
		HttpSession session = this.getRequest().getSession(true);
		session.setAttribute(LoginConstants.VERIFY_CODE_KEY, verifyCode); // 存入会话session
		int w = LoginConstants.VERIFY_CODE_WIDTH, h = LoginConstants.VERIFY_CODE_HEIGHT; // 生成图片
		try {
			VerifyCodeUtils.outputImage(w, h, response.getOutputStream(), verifyCode);
		} catch (IOException e) { // 生成验证码失败
			log.error(null, e);
		}
		renderNull(); // 不渲染，即不向客户端返回数据
	}
	
	/**
	 * 登录
	 */
	public void doLogin() {
		String userName = this.getPara("userName");
		String password = this.getPara("password");
		if (!StringUtil.equals("admin", userName) || !StringUtil.equals("123456", password)) {
			renderJson(BlackConstants.FAIL_MSG_KEY, LoginMsg.get(LoginMsg.LOGIN_INFO_001));
			return;
		}
		
		String verifyCode = this.getPara("verifyCode");
		String verifyCodeSession = (String) WebUtils.getSessionAttribute(this.getRequest(), LoginConstants.VERIFY_CODE_KEY);
		if (StringUtil.isEmpty(verifyCodeSession) || !StringUtil.equalsIgnoreCase(verifyCodeSession, verifyCode)) {
			renderJson(BlackConstants.FAIL_MSG_KEY, LoginMsg.get(LoginMsg.LOGIN_INFO_002));
			return;
		}
		renderJson(BlackConstants.SUCCESS_KEY, BlackConstants.SUCCESS_1);
	}
}
