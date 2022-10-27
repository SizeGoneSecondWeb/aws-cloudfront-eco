package com.ecopic.dao;

import static org.junit.Assert.*;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import com.ecopic.entity.Category;

import net.bytebuddy.implementation.bind.annotation.Super;

public class CategoryDAOTest extends BaseDAOTest {

	private static CategoryDAO categoryDAO;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		BaseDAOTest.setUpBeforeClass();
		categoryDAO = new CategoryDAO(entityManager);
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		BaseDAOTest.tearDownAfterClass();
	}

	@Test
	public void testCreateCategory() {
		Category newCategory = new Category("Tranh hoạt hình");
		Category category = categoryDAO.create(newCategory);
		assertTrue(category != null && category.getCategoryId()>0 );
	}

	@Test
	public void testUpdateCategory() {
		Category category = new Category("Java Core");
		category.setCategoryId(1);
		
		Category categoryupdate = categoryDAO.update(category);
		
		assertEquals(category.getName(), categoryupdate.getName());
	}

	@Test
	public void testGet() {
		Integer catId = 4;
		Category cat = categoryDAO.get(catId);
		
		assertNotNull(cat);
	}

	@Test
	public void testDeleteObject() {
		Integer catId = 2;
		categoryDAO.delete(catId);
		
		Category cat = categoryDAO.get(catId);
		
		assertNull(cat);
	}

	@Test
	public void testListAll() {
		List<Category> listCategory = categoryDAO.listAll();
		
		listCategory.forEach(c -> System.out.println(c.getName() + ", "));
		
		assertTrue(listCategory.size()>0);
	}

	@Test
	public void testCount() {
		long totalCat = categoryDAO.count();
		
		assertEquals(2,totalCat);
	}
	
	@Test
	public void testFindByName() {
		String nameString="Java Core";
		Category category = categoryDAO.findByName(nameString);
		
		assertNotNull(category);
	}

}
