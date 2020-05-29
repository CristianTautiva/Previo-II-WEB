package util;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;




public class JPAUtil {
		private static final String PERSISTENCE_UNIT_NAME = "PERSISTENCE";
		private static EntityManagerFactory factory;

		public static EntityManagerFactory getEntityManagerFactory() {
			if (factory==null) {
				factory=Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
			}
			return factory;				
		}
		public static void shutdown() {
			if (factory!=null) {
				factory.close();
			}		
		}
		
		//public List<Tienda> listar (int id){
			
			//EntityManager em = getEntityManagerFactory().createEntityManager();
			//return (List<Tienda>) em.createQuery("select t from Tienda t where t.id like :ID").setParameter("ID", id).getResultList();
		//}
	}


