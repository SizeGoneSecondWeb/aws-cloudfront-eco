package com.ecopic.dao;

import static org.junit.Assert.*;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityNotFoundException;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import com.ecopic.entity.Picture;
import com.ecopic.entity.Category;
import com.oracle.wls.shaded.org.apache.xml.utils.URI;

public class PictureDAOTest extends BaseDAOTest	{
	private static PictureDAO pictureDAO;
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		 BaseDAOTest.setUpBeforeClass();
		 pictureDAO = new PictureDAO(entityManager);
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		BaseDAOTest.tearDownAfterClass();
	}

	@Test
	public void testCreatePicture() throws ParseException, IOException {
		Picture newPicture = new Picture();
		
		Category category = new Category("Tranh chân dung");
		category.setCategoryId(6);
		newPicture.setCategory(category);
		
		newPicture.setTitle("Hoàng hôn bên bờ sông hàn");
		newPicture.setAuthor("Mai bảo Long");
		newPicture.setDescription("Ô mai gót, đây là cảnh tượng kì vĩ!");
		newPicture.setPrice(20.75f);
		
		DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
		Date publishDate = dateFormat.parse("05/28/2019");
		newPicture.setPublishDate(publishDate);
		
		String imagePath ="C:\\Users\\admin\\Desktop\\remember\\avatar.jpg";
		byte[] imageBytes = Files.readAllBytes(Paths.get(imagePath));
		newPicture.setImage(imageBytes);
		
		Picture createdPicture = pictureDAO.create(newPicture);

		assertTrue(createdPicture.getPictureId() > 0);
	}
	
	@Test
	public void testUpdatePicture() throws ParseException, IOException {
		Picture existPicture = new Picture();
		existPicture.setPictureId(1);
		Category category = new Category("Tranh hoạt hình");
		category.setCategoryId(3);
		existPicture.setCategory(category);
		
		existPicture.setTitle("Tịch mịch giữa dòng nước cuốn");
		existPicture.setAuthor("Mai bảo Linh");
		existPicture.setDescription("Ô mai gót, đây là cảnh tượng kì vĩ!");
		existPicture.setPrice(30.75f);
		
		DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
		Date publishDate = dateFormat.parse("01/28/2019");
		existPicture.setPublishDate(publishDate);
		
		String imagePath ="C:\\Users\\admin\\Desktop\\remember\\avatar.jpg";
		byte[] imageBytes = Files.readAllBytes(Paths.get(imagePath));
		existPicture.setImage(imageBytes);
		
		Picture updatedPicture = pictureDAO.update(existPicture);

		assertEquals(updatedPicture.getTitle(), "Tịch mịch giữa dòng nước cuốn");
	}
	
	@Test(expected = EntityNotFoundException.class)
	public void testDeletePictureFail() {
		Integer pictureId= 100;
		pictureDAO.delete(pictureId);
	
		assertTrue(true);
	}
	
	@Test
	public void testDeletePictureSuccess() {
		Integer pictureId= 1;
		pictureDAO.delete(pictureId);
	
		assertTrue(true);
	}
	
	@Test
	public void testGetPicture() {
		Integer pictureId = 2;
		Picture picture = pictureDAO.get(pictureId);
		
		assertNotNull(picture);
	}
	
	@Test
	public void testAllPicture() {
		List<Picture> listPictures = pictureDAO.listAll();
		
		for(Picture aPicture : listPictures) {
			System.out.println(aPicture.getTitle() + " - " + aPicture.getAuthor());
		}
		
		assertFalse(listPictures.isEmpty());
	}
	
	@Test
	public void testFindByTitle() {
		String titleString ="Hoàng hôn bên bờ sông hàn";
		Picture picture = pictureDAO.findByTitle(titleString);
		
		System.out.println(picture.getAuthor());
		System.out.println(picture.getPrice());
		
		assertNotNull(picture);
	}
	
	@Test
	public void testCount() {
		long totalPic = pictureDAO.count();
		
		assertEquals(1, totalPic);
	}
}
