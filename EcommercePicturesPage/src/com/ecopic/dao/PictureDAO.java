package com.ecopic.dao;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;

import com.ecopic.entity.Picture;
import com.oracle.wls.shaded.org.apache.bcel.generic.RETURN;

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
		t.setLastUpdateTime(new Date());
		return super.update(t);
	}

	@Override
	public Picture get(Object id) {
		return super.find(Picture.class, id);
	}

	@Override
	public void delete(Object id) {
		super.delete(Picture.class	, id);
	}

	@Override
	public List<Picture> listAll() {
		return super.findWithNamedQuery("Picture.findAll");
	}
	
	public Picture findByTitle(String title) {
		List<Picture> result = super.findWithNamedQuery("Picture.findByTitle","title",title);
		
		if( !result.isEmpty()) {
			return result.get(0);
		}
		return null;
	}
	
	@Override
	public long count() {
		return super.countWithNamedQuery("Picture.countAll");
	}

}
