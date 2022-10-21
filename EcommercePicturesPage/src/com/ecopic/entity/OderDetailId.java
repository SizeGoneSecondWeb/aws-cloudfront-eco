package com.ecopic.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

// Generated Oct 18, 2022, 3:29:14 AM by Hibernate Tools 5.6.12.Final

/**
 * OderDetailId generated by hbm2java
 */
@SuppressWarnings("serial")
public class OderDetailId implements java.io.Serializable {

	private Integer oderId;
	private Integer pictureId;
	private int quantity;
	private float subtotal;

	public OderDetailId() {
	}

	public OderDetailId(int quantity, float subtotal) {
		this.quantity = quantity;
		this.subtotal = subtotal;
	}

	public OderDetailId(Integer oderId, Integer pictureId, int quantity, float subtotal) {
		this.oderId = oderId;
		this.pictureId = pictureId;
		this.quantity = quantity;
		this.subtotal = subtotal;
	}

	public Integer getOderId() {
		return this.oderId;
	}

	public void setOderId(Integer oderId) {
		this.oderId = oderId;
	}

	public Integer getPictureId() {
		return this.pictureId;
	}

	public void setPictureId(Integer pictureId) {
		this.pictureId = pictureId;
	}

	public int getQuantity() {
		return this.quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public float getSubtotal() {
		return this.subtotal;
	}

	public void setSubtotal(float subtotal) {
		this.subtotal = subtotal;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof OderDetailId))
			return false;
		OderDetailId castOther = (OderDetailId) other;

		return ((this.getOderId() == castOther.getOderId()) || (this.getOderId() != null
				&& castOther.getOderId() != null && this.getOderId().equals(castOther.getOderId())))
				&& ((this.getPictureId() == castOther.getPictureId()) || (this.getPictureId() != null
						&& castOther.getPictureId() != null && this.getPictureId().equals(castOther.getPictureId())))
				&& (this.getQuantity() == castOther.getQuantity()) && (this.getSubtotal() == castOther.getSubtotal());
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getOderId() == null ? 0 : this.getOderId().hashCode());
		result = 37 * result + (getPictureId() == null ? 0 : this.getPictureId().hashCode());
		result = 37 * result + this.getQuantity();
		result = 37 * result + (int) this.getSubtotal();
		return result;
	}

}