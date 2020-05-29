package dao;

import java.util.List;

import javax.persistence.EntityManager;

import util.JPAUtil;

public class EventoDao {
	
EntityManager em = null;
	
	public EventoDao() {
		this.em = JPAUtil.getEntityManagerFactory().createEntityManager();
	}
	
	@SuppressWarnings("unchecked")
	public List<EventoDao> listar (){
		return (List<EventoDao>) em.createQuery("select e from Evento e").getResultList();
	}

}
