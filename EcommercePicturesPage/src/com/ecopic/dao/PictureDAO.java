package com.ecopic.dao;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;

import com.ecopic.entity.Picture;

public class PictureDAO extends JpaDAO<Picture> implements GenericDAO<Picture> {

	public PictureDAO(EntityManager entityManager) {
		super(entityManager);
		// TODO Auto-generated constructor stub
	}

	@Override
	public Picture create(Picture t) {
		t.setLastUpdateTime(new Date());
		return super.create(t);
	}

	@Override
	public Picture update(Picture t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Picture get(Object id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(Object id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Picture> listAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long count() {
		// TODO Auto-generated method stub
		return 0;
	}

}
