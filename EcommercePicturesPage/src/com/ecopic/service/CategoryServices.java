package com.ecopic.service;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecopic.dao.CategoryDAO;
import com.ecopic.entity.Category;
import com.ecopic.entity.Users;


public class CategoryServices {
	private EntityManager entityManager;
	private HttpServletRequest request;
	private HttpServletResponse response;
	private CategoryDAO categoryDAO;
	
	public CategoryServices(EntityManager entityManager, 
			HttpServletRequest request, HttpServletResponse response) {
		super();
		this.request = request;
		this.response = response;
		this.entityManager = entityManager;
		categoryDAO = new CategoryDAO(entityManager);
	}
	
	public void listCategory() throws ServletException, IOException {
		listCategory(null);
	}
	
	public void listCategory(String message) throws ServletException, IOException {
		List<Category> listCategory = categoryDAO.listAll();
		
		request.setAttribute("listCategory", listCategory);
		
		if(message != null) {
			request.setAttribute("message", message);
		}
		
		String listPage = "categorytables.jsp";
		RequestDispatcher requestDispatcher = request.getRequestDispatcher(listPage);
		
		requestDispatcher.forward(request,response);
	}
	
	public void createCategory() throws ServletException, IOException {
		String name = request.getParameter("namee");
		
		Category existCategory = categoryDAO.findByName(name);
		if(existCategory != null) {
			String messageString = "Could not create category. A category with name " 
									+ name + " already exists!"	;
			listCategory(messageString);
		}else {
			Category newCategory = new Category(name);
			categoryDAO.create(newCategory); 
			String messageString = "New category created successfully!";
			listCategory(messageString);
		}
	}
	
	public void editCategory() throws ServletException, IOException {
		int catID = Integer.parseInt(request.getParameter("id")) ;
		String name = request.getParameter("name");
		
		Category catById = categoryDAO.get(catID);
		Category catByName = categoryDAO.findByName(name);
		
		if(catByName != null && catByName.getCategoryId()!= catById.getCategoryId())
		{
			String message = "Could not update category. Category with name " + name + " already exists!";
			listCategory(message);
		}else {
			Category category = new Category(catID, name);
			categoryDAO.update(category);
		
			String message = "Category has been updated successfully!";
			listCategory(message);
		}
	}

	public void deleteCategory() throws ServletException, IOException {
		int catID = Integer.parseInt(request.getParameter("idd")) ;
		
		categoryDAO.delete(catID);
		
		String message = "Category has been delete successfully!";
		listCategory(message);
	}
	
}
