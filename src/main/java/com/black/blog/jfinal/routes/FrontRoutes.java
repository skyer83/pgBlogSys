package com.black.blog.jfinal.routes;

import com.black.blog.jfinal.interceptor.FrontAuthInterceptor;
import com.jfinal.config.Routes;

/**
 * 前台路由注册
 * @author jhshen
 *
 */
public class FrontRoutes extends Routes {

	/*
	 * (non-Javadoc)
	 * @see com.black.blog.jfinal.routes.BackRoutes#config()
	 */
	@Override
	public void config() {
		addInterceptor(new FrontAuthInterceptor());
	}

}
