package com.ecopic.dao;

import static org.junit.Assert.*;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Persistence;
import javax.persistence.PersistenceException;

import org.hibernate.proxy.EntityNotFoundDelegate;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import com.ecopic.entity.Users;

public class UserDAOTest {
	private static EntityManagerFactory entityManagerFactory;
	private static EntityManager entityManager;
	private static UserDAO userDAO;
	
	@BeforeClass
	public static void setUpClass() {
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("PictureStoreWebsite");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		
		userDAO = new UserDAO(entityManager);
	}
	
	@Test
	public void testCreateUsers() {
		Users user1 = new Users();
		user1.setEmail("bicdreamer@gmail.com");
		user1.setFullName("Lin Lin");
		user1.setPassword("011102");
		
		user1= userDAO.create(user1);
		
		assertTrue(user1.getUserId()>0);
	}
	
	@Test(expected = PersistenceException.class)
	public void testCreateUsersFieldsNotSet(){
		Users user1 = new Users();
		user1= userDAO.create(user1);
	}
	
	@Test
	public void testUpdateUsers() {
		Users users = new Users();
		users.setUserId(2);
		users.setEmail("elsa@gmail.com");
		users.setFullName("Eo sà");
		users.setPassword("elsaxauxi");
		
		users = userDAO.update(users);
		String expected = "elsaxauxi";
		String actual = users.getPassword();
		
		assertEquals(expected, actual);
	}
	
	@Test
	public void testGetUsersFound() {
		Integer userId = 1;
		Users user = userDAO.get(userId); 	
		System.out.println(user.getEmail());
		assertNotNull(user);
	}
	
	@Test
	public void testDeleteUsers() {
		Integer userID = 4;
		userDAO.delete(userID);
		Users users = userDAO.get(userID);
		
		assertNull(users);
	}
	
	@Test(expected = EntityNotFoundException.class)
	public void testDeleteNonExistUsers() {
		Integer userID = 44;
		userDAO.delete(userID);
	}
	
	@Test
	public void testListAll() {
		List<Users> listUsers = userDAO.listAll();
		
		for(Users user : listUsers) {
			System.out.println(user.getEmail());
		}
		
		assertTrue(listUsers.size() > 0);
	}
	
	@Test
	public void testCount() {
		long totalUsers = userDAO.count();
		assertEquals(5,totalUsers);
	}
	
	@Test
	public void findEmail() {
		String email = "mthanhtai@gmail.com";
		Users user = userDAO.findByEmail(email);
		
		assertNotNull(user);
	}
	
	@AfterClass
	public static void tearDownClass() {
		entityManager.close();
		entityManagerFactory.close();
	}
}
