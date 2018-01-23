package com.black.blog.back.blogSys.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings({"serial", "unchecked"})
public abstract class BaseBsPhotos<M extends BaseBsPhotos<M>> extends Model<M> implements IBean {

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

	public M setFkBsPhotoSort(java.lang.String fkBsPhotoSort) {
		set("FK_BS_PHOTO_SORT", fkBsPhotoSort);
		return (M)this;
	}
	
	public java.lang.String getFkBsPhotoSort() {
		return getStr("FK_BS_PHOTO_SORT");
	}

	public M setPhotoName(java.lang.String photoName) {
		set("PHOTO_NAME", photoName);
		return (M)this;
	}
	
	public java.lang.String getPhotoName() {
		return getStr("PHOTO_NAME");
	}

	public M setPhotoPath(java.lang.String photoPath) {
		set("PHOTO_PATH", photoPath);
		return (M)this;
	}
	
	public java.lang.String getPhotoPath() {
		return getStr("PHOTO_PATH");
	}

	public M setPhotoDesc(java.lang.String photoDesc) {
		set("PHOTO_DESC", photoDesc);
		return (M)this;
	}
	
	public java.lang.String getPhotoDesc() {
		return getStr("PHOTO_DESC");
	}

	public M setUploadTime(java.lang.String uploadTime) {
		set("UPLOAD_TIME", uploadTime);
		return (M)this;
	}
	
	public java.lang.String getUploadTime() {
		return getStr("UPLOAD_TIME");
	}

	public M setUploadIp(java.lang.String uploadIp) {
		set("UPLOAD_IP", uploadIp);
		return (M)this;
	}
	
	public java.lang.String getUploadIp() {
		return getStr("UPLOAD_IP");
	}

}