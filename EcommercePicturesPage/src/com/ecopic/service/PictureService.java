package com.ecopic.service;

import java.io.IOException;
import java.io.InputStream;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.ecopic.dao.CategoryDAO;
import com.ecopic.dao.PictureDAO;
import com.ecopic.entity.Category;
import com.ecopic.entity.Picture;

public class PictureService {
	
	private EntityManager entityManager;
	private HttpServletRequest request;
	private HttpServletResponse response;
	private PictureDAO pictureDAO;
	private CategoryDAO categoryDAO;
	
	public PictureService(EntityManager entityManager, HttpServletRequest request, HttpServletResponse response) {
		super();
		this.entityManager = entityManager;
		this.request = request;
		this.response = response;
		pictureDAO = new PictureDAO(entityManager);
		categoryDAO = new CategoryDAO(entityManager);
	}
	
	public void listPictures() throws ServletException, IOException {
		listPictures(null);
	}

	public void listPictures(String message) throws ServletException, IOException {
		List<Picture> listPictures = pictureDAO.listAll();
		request.setAttribute("listPictures", listPictures);
		List<Category> listCategories = categoryDAO.listAll();
		request.setAttribute("listCategories", listCategories);
		
		if(message != null) {
			request.setAttribute("message", message);
		}
		
		String listPageString ="product.jsp";
		RequestDispatcher requestDispatcher = request.getRequestDispatcher(listPageString);
		requestDispatcher.forward(request, response);
	}

	public void createPictures() throws ParseException, ServletException, IOException {
		Integer categoryId = Integer.parseInt(request.getParameter("category"));
		String title = request.getParameter("title");
		
		Picture existPicture = pictureDAO.findByTitle(title);
		
		if(existPicture != null) {
			String message = "Could not create new picture because the title '" + title + "' already exists.";
			listPictures(message);
			return;
		}
		
		String author = request.getParameter("author");
		Float price = Float.parseFloat(request.getParameter("price")) ;
		String description = request.getParameter("description");
		
		DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
		Date publishDate = null;
		try {
			publishDate = dateFormat.parse(request.getParameter("publishDate"));
		} catch (ParseException e) {
			e.printStackTrace();
			throw new ServletException("Error parsing publish date!");
		}
		/*
		 * System.out.println("Category ID: " + categoryId);
		 * System.out.println("Title: " + title); System.out.println("Author: " +
		 * author); System.out.println("Price: " + price);
		 * System.out.println("Description: " + description);
		 * System.out.println("PublishDate: " + publishDate);
		 */
		
		Picture newPicture = new Picture();
		newPicture.setTitle(title);
		newPicture.setAuthor(author);
		newPicture.setDescription(description);
		newPicture.setPublishDate(publishDate);
		newPicture.setPrice(price); 
		
		Category category = categoryDAO.get(categoryId);
		newPicture.setCategory(category);
		
		Part part = request.getPart("image");
		
		if (part != null && part.getSize()>0) {
			long size = part.getSize();
			byte[] imageBytes = new byte[(int) size];
			InputStream inputStream = part.getInputStream();
			inputStream.read(imageBytes);
			inputStream.close();
			
			newPicture.setImage(imageBytes);
		}
		
		Picture createdPicture = pictureDAO.create(newPicture);
		
		if(createdPicture.getPictureId() > 0) {
			String message = "A new picture has been created successfully!";
			listPictures(message);
		}
	}
}
