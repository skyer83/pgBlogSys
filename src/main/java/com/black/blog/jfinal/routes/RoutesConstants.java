package com.black.blog.jfinal.routes;

/**
 * 确保后台/前台的 Controller 注册的 URL 路由不会因重复而导致覆盖，后续建议移到数据库中作为配置，通过数据库唯一性限制<BR>
 * 变量命名规范：BACK/FRONT_模块名_CONTROLLER名<BR>
 * 路由命名归法：BACK/FRONT_模块名_CONTROLLER名<BR>
 * @author jhshen
 *
 */
public class RoutesConstants {

	// 后台管理URL_S
	/** LOGIN 模块 */
	public static final String BACK_LOGIN_LOGIN = "/back/login/login";
	// 后台管理URL_E
	
	// 前台管理URL_S
	// 前台管理URL_E
}
