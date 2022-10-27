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

import com.ecopic.dao.UserDAO;
import com.ecopic.entity.Users;
import com.mysql.cj.protocol.Message;

public class UserServices {
	private UserDAO userDAO;
	private EntityManager entityManager;
	private HttpServletRequest request;
	private HttpServletResponse response;
	
	
	public UserServices(EntityManager entityManager,HttpServletRequest request, HttpServletResponse response) {
		this.request = request;
		this.response = response;
		this.entityManager = entityManager;
		userDAO = new UserDAO(entityManager);
	}

	public void listUser() throws ServletException, IOException {
		listUser(null);
	}
	
	public void listUser(String message) throws ServletException, IOException {
		List<Users> listUsers = userDAO.listAll();
		
		request.setAttribute("listUsers", listUsers);
		
		if(message != null) {
			request.setAttribute("message", message);
		}
		
		String listPage = "usertables.jsp";
		RequestDispatcher requestDispatcher = request.getRequestDispatcher(listPage);
		
		requestDispatcher.forward(request,response);
		
	}
	
	public void createUser() throws ServletException, IOException {
		String email = request.getParameter("emaill");
		String fullname = request.getParameter("fullnamee");
		String password = request.getParameter("passwordd");
		
		Users existUser = userDAO.findByEmail(email);
		if(existUser != null) {
			String messageString = "Could not create user. A user with email " 
									+ email + " already exists!"	;
			listUser(messageString);
		}else {
			Users newUser = new Users(email, fullname, password);
			userDAO.create(newUser); 
			listUser("New user created successfully!");
		}
	}

	public void editUser() throws ServletException, IOException {
		int userID = Integer.parseInt(request.getParameter("id")) ;
		String email = request.getParameter("email");
		String fullname = request.getParameter("fullname");
		String password = request.getParameter("password");
		
		Users userById = userDAO.get(userID);
		Users userByEmail = userDAO.findByEmail(email);
		
		if(userByEmail != null && userByEmail.getUserId()!= userById.getUserId())
		{
			String message = "Could not update user. User with email " + email + " already exists!";
			listUser(message);
		}else {
			Users users = new Users(userID, email, fullname, password);
			userDAO.update(users);
		
			String message = "User has been updated successfully!";
			listUser(message);
		}
	}

	public void deleteUser() throws ServletException, IOException {
		int userID = Integer.parseInt(request.getParameter("idd")) ;
		
		userDAO.delete(userID);
		
		String message = "User has been delete successfully!";
		listUser(message);
	}
}
