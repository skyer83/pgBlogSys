package com.black.blog.common.enumeration;

/**
 * 登录类型
 * @author jhshen
 *
 */
public enum LoginType implements ValueEnum<String> {
	
	/** 1 - 后台管理登录 */
	LoginType_1("1", "后台管理登录"),
	/** 2 - 前台博客登录 */
	LoginType_2("2", "前台博客登录");
	
	LoginType(String value, String name) {
		this.name = name;
		this.value = value;
	}
	
	private String name;
	
	private String value;
	
	/**
	 * 获取资源类型名称
	 * 
	 * @return String
	 */
	public String getName() {
		return name;
	}

	/**
	 * 获取资源类型值
	 * 
	 * @return String
	 */
	public String getValue() {
		return value;
	}
}
