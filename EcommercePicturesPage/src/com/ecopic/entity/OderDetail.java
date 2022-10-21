package com.ecopic.entity;
// Generated Oct 18, 2022, 3:29:14 AM by Hibernate Tools 5.6.12.Final

/**
 * OderDetail generated by hbm2java
 */
public class OderDetail implements java.io.Serializable {

	private OderDetailId id;
	private Picture picture;
	private PictureOder pictureOder;

	public OderDetail() {
	}

	public OderDetail(OderDetailId id) {
		this.id = id;
	}

	public OderDetail(OderDetailId id, Picture picture, PictureOder pictureOder) {
		this.id = id;
		this.picture = picture;
		this.pictureOder = pictureOder;
	}
	public OderDetailId getId() {
		return this.id;
	}

	public void setId(OderDetailId id) {
		this.id = id;
	}
	
	public Picture getPicture() {
		return this.picture;
	}

	public void setPicture(Picture picture) {
		this.picture = picture;
	}

	public PictureOder getPictureOder() {
		return this.pictureOder;
	}

	public void setPictureOder(PictureOder pictureOder) {
		this.pictureOder = pictureOder;
	}

}
