import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.ecopic.entity.Category;

public class CategoryTest {

	public static void main(String[] args) {
		Category category = new Category();
		category.setName("Tranh trừu tượng");
		
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("PictureStoreWebsite");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		
		entityManager.getTransaction().begin();
		
		entityManager.persist(category);
		
		entityManager.getTransaction().commit();
		entityManager.close();
		entityManagerFactory.close();
		
		System.out.println("A category object was persisted");
	}
}
