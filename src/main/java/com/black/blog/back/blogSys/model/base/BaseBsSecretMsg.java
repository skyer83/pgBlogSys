package com.black.blog.back.blogSys.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings({"serial", "unchecked"})
public abstract class BaseBsSecretMsg<M extends BaseBsSecretMsg<M>> extends Model<M> implements IBean {

	public M setID(java.lang.String ID) {
		set("ID", ID);
		return (M)this;
	}
	
	public java.lang.String getID() {
		return getStr("ID");
	}

	public M setFkBsUserSend(java.lang.String fkBsUserSend) {
		set("FK_BS_USER_SEND", fkBsUserSend);
		return (M)this;
	}
	
	public java.lang.String getFkBsUserSend() {
		return getStr("FK_BS_USER_SEND");
	}

	public M setFkBsUserRece(java.lang.String fkBsUserRece) {
		set("FK_BS_USER_RECE", fkBsUserRece);
		return (M)this;
	}
	
	public java.lang.String getFkBsUserRece() {
		return getStr("FK_BS_USER_RECE");
	}

	public M setMsgTitle(java.lang.String msgTitle) {
		set("MSG_TITLE", msgTitle);
		return (M)this;
	}
	
	public java.lang.String getMsgTitle() {
		return getStr("MSG_TITLE");
	}

	public M setMsgContant(java.lang.String msgContant) {
		set("MSG_CONTANT", msgContant);
		return (M)this;
	}
	
	public java.lang.String getMsgContant() {
		return getStr("MSG_CONTANT");
	}

	public M setSendTime(java.lang.String sendTime) {
		set("SEND_TIME", sendTime);
		return (M)this;
	}
	
	public java.lang.String getSendTime() {
		return getStr("SEND_TIME");
	}

}
