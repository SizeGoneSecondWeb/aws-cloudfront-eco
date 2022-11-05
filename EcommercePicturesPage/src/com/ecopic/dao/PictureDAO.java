package com.ecopic.dao;

import java.util.Date;
import java.util.List;

import com.ecopic.entity.Picture;

public class PictureDAO extends JpaDAO<Picture> implements GenericDAO<Picture> {

	public PictureDAO() {
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
	
	public List<Picture> listByCategory(int categoryId){
		
		return super.findWithNamedQuery("Picture.findByCategory","catId",categoryId);
	}
	
	public List<Picture> search(String keyword){
		return super.findWithNamedQuery("Picture.search","keyword",keyword);
	}
	
	public List<Picture> listNewPictures(){
		return super.findWithNamedQuery("Picture.listNew", 0, 4);
	}
	
	@Override
	public long count() {
		return super.countWithNamedQuery("Picture.countAll");
	}
	
	public long countByCategory(int categoryId) {
		return super.countWithNamedQuery("Picture.countByCategory","catId",categoryId);
	}
}
