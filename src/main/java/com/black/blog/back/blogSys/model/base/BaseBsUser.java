package com.black.blog.back.blogSys.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings({"serial", "unchecked"})
public abstract class BaseBsUser<M extends BaseBsUser<M>> extends Model<M> implements IBean {

	public M setID(java.lang.String ID) {
		set("ID", ID);
		return (M)this;
	}
	
	public java.lang.String getID() {
		return getStr("ID");
	}

	public M setFkBsGroup(java.lang.String fkBsGroup) {
		set("FK_BS_GROUP", fkBsGroup);
		return (M)this;
	}
	
	public java.lang.String getFkBsGroup() {
		return getStr("FK_BS_GROUP");
	}

	public M setFkBsRank(java.lang.String fkBsRank) {
		set("FK_BS_RANK", fkBsRank);
		return (M)this;
	}
	
	public java.lang.String getFkBsRank() {
		return getStr("FK_BS_RANK");
	}

	public M setLoginName(java.lang.String loginName) {
		set("LOGIN_NAME", loginName);
		return (M)this;
	}
	
	public java.lang.String getLoginName() {
		return getStr("LOGIN_NAME");
	}

	public M setLoginPwd(java.lang.String loginPwd) {
		set("LOGIN_PWD", loginPwd);
		return (M)this;
	}
	
	public java.lang.String getLoginPwd() {
		return getStr("LOGIN_PWD");
	}

	public M setNICKNAME(java.lang.String NICKNAME) {
		set("NICKNAME", NICKNAME);
		return (M)this;
	}
	
	public java.lang.String getNICKNAME() {
		return getStr("NICKNAME");
	}

	public M setPhoneNum(java.lang.String phoneNum) {
		set("PHONE_NUM", phoneNum);
		return (M)this;
	}
	
	public java.lang.String getPhoneNum() {
		return getStr("PHONE_NUM");
	}

	public M setSEX(java.lang.String SEX) {
		set("SEX", SEX);
		return (M)this;
	}
	
	public java.lang.String getSEX() {
		return getStr("SEX");
	}

	public M setQQ(java.lang.String QQ) {
		set("QQ", QQ);
		return (M)this;
	}
	
	public java.lang.String getQQ() {
		return getStr("QQ");
	}

	public M setEMAIL(java.lang.String EMAIL) {
		set("EMAIL", EMAIL);
		return (M)this;
	}
	
	public java.lang.String getEMAIL() {
		return getStr("EMAIL");
	}

	public M setADDRESS(java.lang.String ADDRESS) {
		set("ADDRESS", ADDRESS);
		return (M)this;
	}
	
	public java.lang.String getADDRESS() {
		return getStr("ADDRESS");
	}

	public M setMARK(java.lang.Integer MARK) {
		set("MARK", MARK);
		return (M)this;
	}
	
	public java.lang.Integer getMARK() {
		return getInt("MARK");
	}

	public M setBIRTHDAY(java.lang.String BIRTHDAY) {
		set("BIRTHDAY", BIRTHDAY);
		return (M)this;
	}
	
	public java.lang.String getBIRTHDAY() {
		return getStr("BIRTHDAY");
	}

	public M setDESCRIPTION(java.lang.String DESCRIPTION) {
		set("DESCRIPTION", DESCRIPTION);
		return (M)this;
	}
	
	public java.lang.String getDESCRIPTION() {
		return getStr("DESCRIPTION");
	}

	public M setImageUrl(java.lang.String imageUrl) {
		set("IMAGE_URL", imageUrl);
		return (M)this;
	}
	
	public java.lang.String getImageUrl() {
		return getStr("IMAGE_URL");
	}

	public M setSCHOOL(java.lang.String SCHOOL) {
		set("SCHOOL", SCHOOL);
		return (M)this;
	}
	
	public java.lang.String getSCHOOL() {
		return getStr("SCHOOL");
	}

	public M setRegTime(java.lang.String regTime) {
		set("REG_TIME", regTime);
		return (M)this;
	}
	
	public java.lang.String getRegTime() {
		return getStr("REG_TIME");
	}

	public M setRegIp(java.lang.String regIp) {
		set("REG_IP", regIp);
		return (M)this;
	}
	
	public java.lang.String getRegIp() {
		return getStr("REG_IP");
	}

	public M setWEIBO(java.lang.String WEIBO) {
		set("WEIBO", WEIBO);
		return (M)this;
	}
	
	public java.lang.String getWEIBO() {
		return getStr("WEIBO");
	}

	public M setBloodType(java.lang.String bloodType) {
		set("BLOOD_TYPE", bloodType);
		return (M)this;
	}
	
	public java.lang.String getBloodType() {
		return getStr("BLOOD_TYPE");
	}

	public M setSAYS(java.lang.String SAYS) {
		set("SAYS", SAYS);
		return (M)this;
	}
	
	public java.lang.String getSAYS() {
		return getStr("SAYS");
	}

	public M setLockStat(java.lang.String lockStat) {
		set("LOCK_STAT", lockStat);
		return (M)this;
	}
	
	public java.lang.String getLockStat() {
		return getStr("LOCK_STAT");
	}

	public M setFreezeStat(java.lang.String freezeStat) {
		set("FREEZE_STAT", freezeStat);
		return (M)this;
	}
	
	public java.lang.String getFreezeStat() {
		return getStr("FREEZE_STAT");
	}

	public M setLastLoginIp(java.lang.String lastLoginIp) {
		set("LAST_LOGIN_IP", lastLoginIp);
		return (M)this;
	}
	
	public java.lang.String getLastLoginIp() {
		return getStr("LAST_LOGIN_IP");
	}

	public M setLastLoginTime(java.lang.String lastLoginTime) {
		set("LAST_LOGIN_TIME", lastLoginTime);
		return (M)this;
	}
	
	public java.lang.String getLastLoginTime() {
		return getStr("LAST_LOGIN_TIME");
	}

	public M setLastUpdateTime(java.lang.String lastUpdateTime) {
		set("LAST_UPDATE_TIME", lastUpdateTime);
		return (M)this;
	}
	
	public java.lang.String getLastUpdateTime() {
		return getStr("LAST_UPDATE_TIME");
	}

}
