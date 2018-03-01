package com.black.blog.jfinal.interceptor;

import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;

/**
 * 统一前台管理拦截器，统一对所有后台Action对应的 controllerKey进行拦截
 * @author jhshen
 *
 */
public class FrontAuthInterceptor implements Interceptor {

	public void intercept(Invocation inv) {
		inv.invoke();
	}

}
