package dao;

import java.util.List;

import javax.persistence.EntityManager;

import util.JPAUtil;

public class ProyectoDao {
	
EntityManager em = null;
	
	public ProyectoDao() {
		this.em = JPAUtil.getEntityManagerFactory().createEntityManager();
	}
	
	@SuppressWarnings("unchecked")
	public List<ProyectoDao> listar(){
		return (List<ProyectoDao>) em.createQuery("select p from Proyecto p").getResultList();
	}

}
