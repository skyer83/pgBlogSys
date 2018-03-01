package com.black.blog.shiro.subject;

import com.black.blog.back.blogSys.model.BsUser;
import com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIConversion.User;

/**
 * 前台管理系统常用Session变量实体
 * @author jhshen
 *
 */
public class FrontPrincipal extends Principal {
	
	private static final long serialVersionUID = 1L;
	
	// 当前用户
	private BsUser bsUser;
//	// 当前用户所在的组集合
//	private List<Group> groupsList;
//	// 当前用户的授权资源集合
//	private List<Resource> authorizationInfo;
//	// 当前用户的菜单集合
//	private List<Resource> menusList;

	public FrontPrincipal() {

	}

	public FrontPrincipal(BsUser bsUser) {
		this.bsUser = bsUser;
	}

//	public Principal(User user,List<Resource> authorizationInfo, List<Resource> menusList) {
//		this.user = user;
//		this.groupsList = user.getGroupsList();
//		this.authorizationInfo = authorizationInfo;
//		this.menusList = menusList;
//	}

	/**
	 * 获取当前用户
	 * 
	 * @return {@link User}
	 */
	public BsUser getBsUser() {
		return bsUser;
	}

	/**
	 * 设置当前用户
	 * 
	 * @param user 当前用户
	 */
	public void setBsUser(BsUser bsUser) {
		this.bsUser = bsUser;
	}

//	/**
//	 * 获取当前用户所在的组集合
//	 * 
//	 * @return List
//	 */
//	public List<Group> getGroupsList() {
//		return groupsList;
//	}
//
//	/**
//	 * 设置当前用户所在的组集合
//	 * 
//	 * @param groupsList 组集合
//	 */
//	public void setGroupsList(List<Group> groupsList) {
//		this.groupsList = groupsList;
//	}
//
//	/**
//	 * 获取当前用户的所有授权资源集合
//	 * 
//	 * @return List
//	 */
//	public List<Resource> getAuthorizationInfo() {
//		return authorizationInfo;
//	}
//
//	/**
//	 * 设置当前用户的所有授权资源集合
//	 * 
//	 * @param authorizationInfo 资源集合
//	 */
//	public void setAuthorizationInfo(List<Resource> authorizationInfo) {
//		this.authorizationInfo = authorizationInfo;
//	}
//
//	/**
//	 * 获取当前用户拥有的菜单集合
//	 * 
//	 * @return List
//	 */
//	public List<Resource> getMenusList() {
//		return menusList;
//	}
//
//	/**
//	 * 设置当前用户拥有的菜单集合
//	 * 
//	 * @param menusList 资源集合
//	 */
//	public void setMenusList(List<Resource> menusList) {
//		this.menusList = menusList;
//	}
}
