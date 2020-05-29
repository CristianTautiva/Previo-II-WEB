package dao;

import java.util.List;

import javax.persistence.EntityManager;



import util.JPAUtil;

public class AlumnoDao {
EntityManager em = null;
	
	public AlumnoDao() {
		this.em = JPAUtil.getEntityManagerFactory().createEntityManager();
	}
	
	@SuppressWarnings("unchecked")
	public List<AlumnoDao> listar (){
		return (List<AlumnoDao>) em.createQuery("select a from Alumno a").getResultList();
	}
}
