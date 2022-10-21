import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.ecopic.entity.Users;

public class UsersTest {

	public static void main(String[] args) {
		Users user1 = new Users();
		user1.setEmail("dieulinh@gmail.com");
		user1.setFullName("Dieu Linh");
		user1.setPassword("123456");
		
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("PictureStoreWebsite");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		
		entityManager.getTransaction().begin();
		
		entityManager.persist(user1);
		
		entityManager.getTransaction().commit();
		entityManager.close();
		entityManagerFactory.close();
		
		System.out.println("A users object was persisted");
	}
}
