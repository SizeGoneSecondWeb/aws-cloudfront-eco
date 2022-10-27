package com.ecopic.entity;
// Generated Oct 18, 2022, 3:29:14 AM by Hibernate Tools 5.6.12.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.eclipse.persistence.annotations.UnionPartitioning;

public class Picture implements java.io.Serializable {

	private Integer pictureId;
	private Category category;
	private String title;
	private String author;
	private String description;
	private byte[] image;
	private float price;
	private Date publishDate;
	private Date lastUpdateTime;
	private Set<Review> reviews = new HashSet<Review>(0);
	private Set<OderDetail> oderDetails = new HashSet<OderDetail>(0);

	public Picture() {
	}

	public Picture(Category category, String title, String author, String description, byte[] image, float price,
			Date publishDate, Date lastUpdateTime) {
		this.category = category;
		this.title = title;
		this.author = author;
		this.description = description;
		this.image = image;
		this.price = price;
		this.publishDate = publishDate;
		this.lastUpdateTime = lastUpdateTime;
	}

	public Picture(Category category, String title, String author, String description, byte[] image, float price,
			Date publishDate, Date lastUpdateTime, Set<Review> reviews, Set<OderDetail> oderDetails) {
		this.category = category;
		this.title = title;
		this.author = author;
		this.description = description;
		this.image = image;
		this.price = price;
		this.publishDate = publishDate;
		this.lastUpdateTime = lastUpdateTime;
		this.reviews = reviews;
		this.oderDetails = oderDetails;
	}
	public Integer getPictureId() {
		return this.pictureId;
	}

	public void setPictureId(Integer pictureId) {
		this.pictureId = pictureId;
	}
	public Category getCategory() {
		return this.category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return this.author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public byte[] getImage() {
		return this.image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	public float getPrice() {
		return this.price;
	}

	public void setPrice(float price) {
		this.price = price;
	}
	@Column(name="publish_date")
	public Date getPublishDate() {
		return this.publishDate;
	}

	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}
	@Column(name="last_update_time")
	public Date getLastUpdateTime() {
		return this.lastUpdateTime;
	}

	public void setLastUpdateTime(Date lastUpdateTime) {
		this.lastUpdateTime = lastUpdateTime;
	}

	public Set<Review> getReviews() {
		return this.reviews;
	}

	public void setReviews(Set<Review> reviews) {
		this.reviews = reviews;
	}

	public Set<OderDetail> getOderDetails() {
		return this.oderDetails;
	}

	public void setOderDetails(Set<OderDetail> oderDetails) {
		this.oderDetails = oderDetails;
	}

}
