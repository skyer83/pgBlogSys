package com.black.blog.back.blogSys.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings({"serial", "unchecked"})
public abstract class BaseBsFriend<M extends BaseBsFriend<M>> extends Model<M> implements IBean {

	public M setID(java.lang.String ID) {
		set("ID", ID);
		return (M)this;
	}
	
	public java.lang.String getID() {
		return getStr("ID");
	}

	public M setFkBsUserSelf(java.lang.String fkBsUserSelf) {
		set("FK_BS_USER_SELF", fkBsUserSelf);
		return (M)this;
	}
	
	public java.lang.String getFkBsUserSelf() {
		return getStr("FK_BS_USER_SELF");
	}

	public M setFkBsUserFriend(java.lang.String fkBsUserFriend) {
		set("FK_BS_USER_FRIEND", fkBsUserFriend);
		return (M)this;
	}
	
	public java.lang.String getFkBsUserFriend() {
		return getStr("FK_BS_USER_FRIEND");
	}

}
