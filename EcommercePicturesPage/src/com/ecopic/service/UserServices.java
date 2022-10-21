package com.ecopic.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.ecopic.dao.UserDAO;
import com.ecopic.entity.Users;

public class UserServices {
	private UserDAO userDAO;
	private EntityManagerFactory entityManagerFactory;
	private EntityManager entityManager;

	public UserServices() {
		entityManagerFactory = Persistence.createEntityManagerFactory("PictureStoreWebsite");
		entityManager = entityManagerFactory.createEntityManager();
		userDAO = new UserDAO(entityManager);
	}

	public List<Users> listUser() {
		List<Users> listUsers = userDAO.listAll();
		return listUsers;
	}
}
