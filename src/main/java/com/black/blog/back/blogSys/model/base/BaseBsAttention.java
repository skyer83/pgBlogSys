package com.black.blog.back.blogSys.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings({"serial", "unchecked"})
public abstract class BaseBsAttention<M extends BaseBsAttention<M>> extends Model<M> implements IBean {

	public M setID(java.lang.String ID) {
		set("ID", ID);
		return (M)this;
	}
	
	public java.lang.String getID() {
		return getStr("ID");
	}

	public M setFkBsUser(java.lang.String fkBsUser) {
		set("FK_BS_USER", fkBsUser);
		return (M)this;
	}
	
	public java.lang.String getFkBsUser() {
		return getStr("FK_BS_USER");
	}

	public M setFkBsUserAtte(java.lang.String fkBsUserAtte) {
		set("FK_BS_USER_ATTE", fkBsUserAtte);
		return (M)this;
	}
	
	public java.lang.String getFkBsUserAtte() {
		return getStr("FK_BS_USER_ATTE");
	}

}
